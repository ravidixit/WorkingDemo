/**
 * Created by admin on 23/07/14.
 */
var app = angular.module('myAppModule',[]);

app.controller('MyController',function($scope,$http){
        $http.get('http://rest-service.guides.spring.io/greeting').
            success(function(data) {
                $scope.greeting = data;
            });
});