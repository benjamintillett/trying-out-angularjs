angular.module 'invoice1',[]
  .controller 'InvoiceController', class
      constructor: (@$location) ->
        @qty = 1
        @cost = 2
        @inCurr = "EUR"
        @currencies = ["USD", "EUR", "CNY"]
        @usdToForeignRates = {
          USD: 1,
          EUR: 0.74,
          CNY: 6.09
        }

      total: (outCurr) ->
        @convertCurrency(@qty*@cost, @inCurr, outCurr)

      convertCurrency: (amount,inCurr,outCurr)->
        amount * @usdToForeignRates[outCurr] / @usdToForeignRates[inCurr]

      pay: ->
        window.alert("Thanks")

