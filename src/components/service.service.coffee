module.exports = (API, $http, $q, LocalStorage) ->
  new class Service
    getList: ->
      deferred = $q.defer()
      if LocalStorage.isEmpty 'services'
        $http.get(API.path "services").then (resp) ->
          services = resp.data.getServices
          LocalStorage.set 'services', services
          deferred.resolve services
      else
        services = LocalStorage.get('services')
        console.log "Services: ", LocalStorage.get('services')
        deferred.resolve LocalStorage.get('services')

      deferred.promise

    getHash: ->
      deferred = $q.defer()
      servicesHash = {}
      if LocalStorage.isEmpty 'servicesHash'
        @getList().then (services) ->
          services.forEach (service) ->
            servicesHash[service.serviceId] = service
          LocalStorage.set 'servicesHash', servicesHash
          deferred.resolve servicesHash
      else
        deferred.resolve LocalStorage.get 'servicesHash'

      deferred.promise

    get: (id) ->
      deferred = $q.defer()
      @getHash().then (services) ->
        deferred.resolve services[id]

      deferred.promise
