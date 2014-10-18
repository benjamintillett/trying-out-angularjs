myAppModule = angular.module 'myApp',[]

myAppModule.controller "TextController", ($scope)->
	someText = {}
	someText.message = "You have started your journey"
	$scope.someText = someText