
//Factory
myApp.factory('Meals', ['$resource',function($resource){
  return $resource('/meals', {},{
    query: { method: 'GET', isArray: true }
  })
}]);


myApp.controller("mealCtrl", ['$scope', '$http', '$resource', 'Meals', '$location', function($scope, $http, $resource, Meals, $location) {
  $scope.meals = Meals.query();
  console.log($scope.meals);
}]);

