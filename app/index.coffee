express     = require('express')
passport    = require('passport')
pkg         = require('../package.json')


# ## App

app = express()

# Include routes
app.use '/', require('./routes')

# Startup the server
app.listen(2999)


# Export
module.exports.app = app
