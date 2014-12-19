module.exports = (API, $http) ->
  new class Service
    getList: ->
      $http.get(API.path "services").then (resp) ->
        resp.data.getServices
