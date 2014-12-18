module.exports = angular.module "testApp.main", []

.config ($routeProvider) ->
  $routeProvider
    .when "/",
      templateUrl: "app/main/index.html"
