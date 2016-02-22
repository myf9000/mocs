var myApp = angular.module('meal', ['ngRoute', 'ngResource']); 
myApp.config([
  '$routeProvider', '$locationProvider', function($routeProvider, $locationProvider) {
	    $routeProvider.when('/me',{
	      templateUrl: 'templates/meals/index.html',
	      controller: 'mealCtrl'
	    }).
	    otherwise({
	      redirectTo: '/'
	   	});
	  }
]);