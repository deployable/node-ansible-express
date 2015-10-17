router      = require('express').Router()
pkg         = require('../../package.json')


# Requests
router.get '/', ( req, res )->
  res.json message: 'ansible!'


module.exports = router
