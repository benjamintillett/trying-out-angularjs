angular.module "finance2", []
	.factory "currencyConverter", ->
		new class currencyConverter
			constructor: ->
	        	@currencies = ["USD", "EUR", "CNY"]
	        	@usdToForeignRates = {
	          	USD: 1,
	          	EUR: 0.74,
	          	CNY: 6.09
	        	}
	    	convert: (amount, inCurr, outCurr)->
	    		amount * @usdToForeignRates[outCurr] / @usdToForeignRates[inCurr]


