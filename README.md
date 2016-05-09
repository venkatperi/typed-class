# prop-it
[![Build Status](https://travis-ci.org/venkatperi/typed-class.svg?branch=master)](https://travis-ci.org/venkatperi/typed-class)

Instantiate classes with a string type

## Installation

Install with npm

```shell
npm install typed-class
```

## Example

### Request: our Base Class

```coffeescript
# lib/request/Request.coffee
TypedClass = require( 'typed-class' ) __dirname

module.exports = class Request extends TypedClass
```

### Start: a Specialized Request

```coffeescript
# lib/request/Start.coffee
Request = require './Request'

module.exports = class StartRequest extends Request
```

### Instantiate Start
```coffeescript
# elsewhere.coffee
Request = require './lib/request/Request'

start = Request.create type: 'start', {other: 'options'}
console.log start instanceOf Request # => true
console.log start instanceOf require './lib/request/Start' # => true
```

