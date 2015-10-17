router      = require('express').Router()
pkg         = require('../../package.json')


# Include routes
router.use '/ansible', require('./ansible')

# Requests
router.get '/', ( req, res )->
  res.json message: "Welcome to #{pkg.name} #{pkg.version}"


module.exports = router
