module.exports = (API, $http) ->
  new class Service
    getList: ->
      $http.get(API.path "services").success (resp) ->
        resp.getServices
