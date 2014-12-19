apiService = require "../../components/api.service"
serviceService = require "../../components/service.service"
mainController = require "./main.controller"

module.exports = angular.module "testApp.main", []

.config ($routeProvider) ->
  $routeProvider
    .when "/",
      templateUrl: "app/main/index.html"
      controller: "MainCtrl as main"

.factory    "API", apiService
.factory    "Service", serviceService
.controller "MainCtrl", mainController
