#coffscript 1.5+ fix
process.execPath = 'coffee'

division = require "division"
cluster = new division()
CPUs = require('os').cpus().length

# set config dir before anything further
process.env['NODE_CONFIG_DIR'] = process.cwd() + '/config/data'

# Configuration for development environment
cluster.configure "development", ->
	cluster.set "size", 1 # Just one in dev

# Configuration for production environment
cluster.configure "production", ->
	cluster.enable "silent"
	cluster.set "size", CPUs

cluster.configure ->
	@set "path", "instance.coffee"

# Extensions
cluster
  .use("debug")
  .use("signals")
  .use('watch',
    [__dirname],
    { ignored: ['src', 'public', 'views'], extensions: ['.json', '.coffee'] }
  )

cluster.run -> # `this` is pointing to the Master instance
