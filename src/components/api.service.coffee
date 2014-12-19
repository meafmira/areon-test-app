module.exports = ->
  new class Api
    path: (path) ->
      "/#{path}"
