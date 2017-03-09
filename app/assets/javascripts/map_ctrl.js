(function() {
  angular.module('app').controller('mapCtrl', function($scope) {
    $scope.message = "message from map controller";
    $scope.mapShow = function() {
      var mapShow
      function initMap() {
        mapShow = new google.maps.Map(document.getElementById('mapShow'), {
          center: {lat: -34.397, lng: 150.644},
          zoom: 8
        });
      }
      console.log("Hello!!");
    };
  });
})();