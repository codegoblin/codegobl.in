# middleware.coffee -- include/config global middleware here

# Requires
# ========
Express = require 'express'
Path = require 'path'
Flash = require 'connect-flash'
Stylus = require 'stylus'
Nib = require 'nib'

# Module
# ======

module.exports = exports = (app, cb) ->

  # Default Middleware
  # ==================

  # Connect-asset pipeline / settings
  app.use require('connect-assets')
    src: 'app/assets'
  js.root = '/javascripts'
  css.root = '/stylesheets'

  # Stylus setup
  compile = (str, path) ->
    Stylus(str)
      .set('filename', path)
      .set('compress', true)
      .use(Nib())
      .import('nib')

  app.use(Stylus.middleware {
      src: __dirname
    , compile: compile
  })

  # Express setup
  app.use Express.static(Path.join(app.get('root'), 'public'))
  app.use Express.favicon()
  app.use Express.cookieParser()
  app.use Express.bodyParser()
  app.use Express.cookieSession
    secret: 'TUCloveskeyboardcatz'
    cookie:
      expires: false
  app.use Flash()
  app.use Express.logger('dev')
  app.use Express.methodOverride()

  # ENV specifics
  app.configure 'development', ->
    app.use Express.errorHandler()

  app.configure 'staging', ->
    app.use Express.errorHandler()

  # Add custom global middleware here
  # =================================

  cb() # Done loading global middleware
