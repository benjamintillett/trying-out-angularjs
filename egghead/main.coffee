myApp = angular.module 'myApp', [] 

myApp.factory 'Data', ->
   	  	return { message: "I'm data from a service" }


myApp.controller 'FirstCtrl', ($scope, Data) ->
  	$scope.data = Data

myApp.controller 'SecondCtrl', ($scope, Data) ->
  	$scope.data = Data

  	$scope.reversedMessage = ->
  		return $scope.data.message.split("").reverse().join("")
  	
