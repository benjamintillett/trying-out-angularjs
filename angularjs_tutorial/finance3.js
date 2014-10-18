// Generated by CoffeeScript 1.8.0
(function() {
  angular.module("finance3", []).factory("currencyConverter", [
    '$http', function($http) {
      return function() {
        var currencyConverter;
        return new (currencyConverter = (function() {
          var usdToForeignRates;

          function currencyConverter() {
            this.YAHOO_FINANCE_URL_PATTERN = '//query.yahooapis.com/v1/public/yql?q=select * from ' + 'yahoo.finance.xchange where pair in ("PAIRS")&format=json&' + 'env=store://datatables.org/alltableswithkeys&callback=JSON_CALLBACK';
            this.currencies = ["USD", "EUR", "CNY"];
            this.usdToForeignRates = {};
          }

          currencyConverter.prototype.convert = function(amount, inCurr, outCurr) {
            return amount * this.usdToForeignRates[outCurr] / this.usdToForeignRates[inCurr];
          };

          currencyConverter.prototype.refresh = function() {
            var url;
            return url = this.YAHOO_FINANCE_URL_PATTERN.replace('PAIRS', 'USD' + currencies.join('","USD'));
          };

          $http.jsonp(url).success(function(data) {
            var newUsdToForeignRates;
            newUsdToForeignRates = {};
            angular.forEach(data.query.results.rate, function(rate) {
              var currency;
              return currency = rate.id.substring(3, 6);
            });
            return newUsdForeignRates[currency] = window.parseFloat(rate.Rate);
          });

          usdToForeignRates = newUsdForeignRates;

          refresh();

          return currencyConverter;

        })());
      };
    }
  ]);

}).call(this);
