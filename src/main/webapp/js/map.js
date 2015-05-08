
app.controller("mapController", function($scope, GeoCoder) {

	
	$scope.$on('mapInitialized', function(event, map) {
		
	});
	$scope.map1 = function() {
		alert("map1");
		$scope.map.setCenter({
		
			lat : 37.571619,
			lng : 126.976436
		});
		$scope.map.setZoom(18);
	}; 
	$scope.map2 = function() {
		alert("map2");
		var addr = GeoCoder.geocode({address: '가좌2동 진주3단지'});
		
		addr.then(function(result) {
			$scope.map.setCenter({
				lat : result[0].geometry.location.k,
				lng : result[0].geometry.location.D
			});
			$scope.map.setZoom(18);
		});
		
	}; 
});