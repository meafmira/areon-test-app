storage = {}
module.exports = ->
  new class LocalStorage
    isAvailable: Modernizr.localstorage

    set: (key, value) ->
      if @isAvailable
        localStorage[key] = JSON.stringify value
      else
        storage[key] = value

    get: (key) ->
      if @isAvailable
        JSON.parse localStorage[key]
      else
        storage[key]

    isEmpty: (key) ->
      if @isAvailable
        !(localStorage[key]?)
      else
        !(storage[key]?)
