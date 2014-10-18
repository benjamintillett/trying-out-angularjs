angular.module "invoice2", ["finance2"]
	.controller 'InvoiceController', ['currenyConverter', class 
			constructor: (@$location) ->
				@qty = 1
				@cost = 2
				@inCurr = 'EUR'
				@currencies = currencyConverter.currencies

			total: (outCurr) ->
				currencyConverter.convert(@qty * @cost, @inCurr, outCur)
			pay: ->
				window.alert "Thanks!"

	]