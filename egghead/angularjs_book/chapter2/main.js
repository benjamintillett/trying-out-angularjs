// Generated by CoffeeScript 1.8.0
(function() {
  var myAppModule;

  myAppModule = angular.module('myApp', []);

  myAppModule.controller("TextController", function($scope) {
    var someText;
    someText = {};
    someText.message = "You have started your journey";
    return $scope.someText = someText;
  });

}).call(this);
