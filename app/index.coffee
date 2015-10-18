express     = require('express')
passport    = require('passport')
pkg         = require('../package.json')

# Source maps, some of the time
if ! process.env.NODE_ENV or process.env.NODE_ENV != 'production'
  require('source-map-support').install();

# ## App
app = express()

# Include routes
app.use '/', require('./routes')

# Startup the server
app.listen(2999)


# Export
module.exports.app = app
