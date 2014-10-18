angular.module "invoice2", ["finance2"]
	.controller 'InvoiceController', class 
			constructor: (@$scope,currencyConverter) ->
				@currencyConverter = currencyConverter
				@qty = 1
				@cost = 2
				@inCurr = 'EUR'
				@currencies = currencyConverter.currencies

			total: (outCurr) ->
				@currencyConverter.convert(@qty * @cost, @inCurr, outCurr)
			pay: ->
				window.alert "Thanks!"

