class Main
  constructor: (Service) ->
    Service.getList()

Main.$inject = [ 'Service' ]

module.exports = Main
