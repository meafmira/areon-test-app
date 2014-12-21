class Main
  constructor: (Service) ->
    Service.getList().then (services) =>
      @services = services.sort (service1, service2) -> service1.name.localeCompare service2.name

Main.$inject = [ 'Service' ]

module.exports = Main
