path = require "path"

capitalize = ( str ) -> str[ 0 ].toUpperCase() + str[ 1.. ]

module.exports = ( dir ) ->
  
  class TypedClass

    constructor : ( {@type} = {} ) ->
      throw new Error "missing option: type" unless @type?
      @init()

    init : =>

    @create : ( opt ) ->
      opt = {} unless opt?
      throw new Error "missing option: type" unless opt.type?
      _dir = dir or __dirname

      type = capitalize opt.type
      klass = require path.join _dir, type
      return new klass opt
