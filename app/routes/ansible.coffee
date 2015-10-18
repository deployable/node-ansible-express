# ## Routes `/ansible`

debug         = require('debug')('ansible-express:app:routes:ansible')
router        = require('express').Router()
pkg           = require('../../package.json')
body_parser   = require('body-parser').json
{ Playbook }  = require 'node-ansible'


debug 'Playbook', Playbook
# ### Responses

dummy = ( req, res )->
  res.json message: req.baseUrl

secure = ( req, res, next )->
  if req.header['x-api-token'] is 'me'
    next()
  else
    next('nope')


class PlaybookRequest

  @run: ( req, res, next )->
    console.log req.body
    
    inventory = req.body.inventory
    playbook = req.body.playbook
    hosts = req.body.hosts
    dir = req.body.dir

    new Playbook().playbook(playbook).inventory(inventory).exec( cwd: dir )
    .then ( result )->
      res.json 
        message: 'done'
        result: result
    .catch ( error )->
      console.log error.reason if error.reason
      next error


# ### Requests

router.use body_parser()

#router.use secure

router.get  '/', dummy

router.get  '/playbook', dummy
router.post '/playbook/run', PlaybookRequest.run
router.get  '/playbook/list', dummy

router.get  '/inventory',  dummy
router.get  '/inventory/list', dummy

module.exports = router
