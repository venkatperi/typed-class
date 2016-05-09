should = require( "should" )
assert = require( "assert" )
Request = require './fixtures/request/Request'
Start = require './fixtures/request/Start'

obj = undefined

describe "typed class", ->

  it "create with type", ( done ) ->
    obj = Request.create type : "start"
    obj.should.be.instanceOf Request
    obj.should.be.instanceOf Start
    done()

  it "sets property ::type", ( done ) ->
    obj = Request.create type : "start"
    obj.type.should.equal "start"
    done()

