(function() {
  "use strict";

  angular.module("app").controller("spillCtrl", function($scope) {
    $scope.name = "hey you are using an angular variable!!";
    $scope.mapShow = function() {
      console.log("Hello!!");
    };


  });
}());