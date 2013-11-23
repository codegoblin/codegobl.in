InstagramClient = require('instagram-node').instagram()
Async           = require 'async'
Events          = require 'events'
_               = require 'underscore'
Moment          = require 'moment'

module.exports = exports = (config, Instagram) ->
  InstagramClient.use
    client_id: config.client_id
    client_secret: config.client_secret

  insta_events = new Events.EventEmitter()

  search = (tag, max_id=null, cb=null) ->
    console.log 'searching instagram'.green, tag, max_id
    options = {}
    options.max_id = max_id if max_id
    #do a search
    InstagramClient.tag_media_recent tag, options, (err, medias, pagination, limit) ->
      #fire an event
      insta_events.emit 'search.results', medias, tag
      #emit last id
      if medias and medias.length > 0
        insta_events.emit 'search.max_id', medias[0].id, tag
      cb medias if cb

  process_instagrams = (instagrams, tag=null, filter=null, cb=null) ->
    #create new doc
    new_insta = (data, next) ->
      #if a filter is passed
      if filter and typeof filter is 'function'
        passed = filter data, tag
        return next() if !passed

      gram = new Instagram
        uid: data.id
        username: data.user.username
        tags: data.tags
        hashtag: tag
        likes: data.likes ? 0
        caption: data.caption?.text ? ''
        profile_image_url: data.user.profile_picture
        photo: data.images.standard_resolution.url
        thumbnail: data.images.thumbnail.url
        created_date: Moment.unix(data.created_time).toDate()

      #save doc
      gram.save (err) ->
        unless err
          insta_events.emit 'instagram.saved', gram, tag
        next err

    #all done with data
    done = () ->
      insta_events.emit 'instagrams.processed'
      cb() if cb

    #create and save all
    console.log instagrams.length
    if instagrams? and instagrams.length > 0
      Async.each instagrams, new_insta, done
    else
      done()

  # Returned
  {
    search: search
    process_instagrams: process_instagrams
    events: insta_events
  }
