myAppModule = angular.module 'myApp',[]

myAppModule.controller "StartUpController", ($scope)->
	$scope.funding = { startingEstimate: 0 }

	$scope.computeNeeded = ->
		$scope.funding.needed = $scope.funding.startingEstimate * 10

	$scope.reset = ->
		$scope.funding.startingEstimate = 0

	$scope.requestFunding = ->
		window.alert("Sorry, please get more customers first")
	return
