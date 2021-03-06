angular.module "finance3", []
	.factory "currencyConverter",[ '$http', ($http) -> ->
		new class currencyConverter
			constructor: ->
	        	@YAHOO_FINANCE_URL_PATTERN =
          '//query.yahooapis.com/v1/public/yql?q=select * from '+
          'yahoo.finance.xchange where pair in ("PAIRS")&format=json&'+
          'env=store://datatables.org/alltableswithkeys&callback=JSON_CALLBACK';
	        	@currencies = ["USD", "EUR", "CNY"]
	        	@usdToForeignRates = {}

	        	
	    	convert: (amount, inCurr, outCurr)->
	    		amount * @usdToForeignRates[outCurr] / @usdToForeignRates[inCurr]

	    	refresh: ->
	    		url = @YAHOO_FINANCE_URL_PATTERN.replace('PAIRS', 'USD' + currencies.join('","USD'))
	 			$http.jsonp(url).success (data)->
	 				newUsdToForeignRates = {}
	 				angular.forEach data.query.results.rate, (rate)->
	 					currency = rate.id.substring(3,6)
	 				newUsdForeignRates[currency] = window.parseFloat(rate.Rate)
	 			usdToForeignRates = newUsdForeignRates

	 		refresh()
	 ]