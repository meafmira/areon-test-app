apiService = require "../../components/api.service"
serviceService = require "../../components/service.service"
mainController = require "./main.controller"
localStorageService = require "../../components/local_storage.service"
singleServiceController = require "./single_service.controller"

module.exports = angular.module "testApp.main", []

.config ($routeProvider) ->
  $routeProvider
    .when "/services",
      templateUrl: "app/main/index.html"
      controller: "MainCtrl as main"
    .when "/services/:serviceId",
      templateUrl: "app/main/single_service.html"
      controller: "SingleServiceCtrl as singleService"

.factory    "API", apiService
.factory    "Service", serviceService
.factory    "LocalStorage", localStorageService
.controller "MainCtrl", mainController
.controller "SingleServiceCtrl", singleServiceController
