# ## Routes `/`

debug       = require('debug')('ansible-express:app:routes')
router      = require('express').Router()
pkg         = require('../../package.json')


# Include any sub routes
router.use '/ansible', require('./ansible')

# Requests
router.get '/', ( req, res )->
  res.json message: "Welcome to #{pkg.name} #{pkg.version}"


module.exports = router
