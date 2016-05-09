path = require "path"

capitalize = ( str ) -> str[ 0 ].toUpperCase() + str[ 1.. ]

module.exports = ( Klass, dir ) ->

  Klass.create = ( opt ) ->
    opt = {} unless opt?
    throw new Error "missing option: type" unless opt.type?
    _dir = dir or __dirname

    type = capitalize opt.type
    klass = require path.join _dir, type
    instance = new klass opt
    instance.type ?= opt.type
    instance

  Klass
