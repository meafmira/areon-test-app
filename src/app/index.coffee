main = require "./main"

angular.module "testApp", [
  "ngAnimate"
  "ngTouch"
  "ngSanitize"
  "ngRoute"
  "angular-loading-bar"
  "templates"
  main.name
]

.config ($routeProvider) ->
  $routeProvider
    .otherwise
      redirectTo: "/"
