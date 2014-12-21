class SingleService
  constructor: (Service, $routeParams) ->
    Service.get($routeParams.serviceId).then (service) =>
      @service = service

SingleService.$inject = [ 'Service', '$routeParams' ]

module.exports = SingleService
