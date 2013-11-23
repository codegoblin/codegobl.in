Coffee = require 'coffee-script'
Express = require 'express'

# Boot!
module.exports = global.APP = Express() # make APP the only global
APP.set 'root', __dirname
Boot = require('./config/boot')(APP)

# Communicate!
process.on "message", (message) ->
	console.log message

# Die!
process.on 'uncaughtException', (err) ->
  console.error "MAJOR CRASH ERROR".red, err
  process.exit()
