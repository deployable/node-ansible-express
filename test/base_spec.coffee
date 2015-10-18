request = require('supertest')
mocha   = require 'mocha'
expect  = require('chai').expect
debug   = require('debug')('ansible-express:test:base')

# Include the App
app = require("../appjs/index").app


describe 'express rest api server', ->
  
  id = null

  it 'get / info', ( done )->
    request(app).get('/').end ( err, res )->
      debug 'res', res
      expect( res.statusCode ).to.eql 200
      expect( res.type ).to.eql 'application/json'
      expect( res.charset ).to.eql 'utf-8'
      expect( res.header.etag ).to.exist
      expect( res.header.date ).to.exist
      expect( res.header['x-powered-by'] ).to.eql 'Express'
      expect( res.body.message ).to.match /^Welcome to ansible-express \d+\.\d+\.\d+/
      done()


describe 'ansible', ->
  
  id = null

  it 'get /ansible info', ( done )->
    request(app).get('/ansible').end ( err, res )->
      debug 'res', res
      expect( res.statusCode ).to.eql 200
      expect( res.type ).to.eql 'application/json'
      expect( res.charset ).to.eql 'utf-8'
      expect( res.header.etag ).to.exist
      expect( res.header.date ).to.exist
      expect( res.header['x-powered-by'] ).to.eql 'Express'
      expect( res.body.message ).to.eql 'ansible!'
      done()

