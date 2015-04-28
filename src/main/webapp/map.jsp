<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta charset="EUC-KR">
<title>map.jsp</title>

<link rel="stylesheet" href="bootstrap-3.3.4/css/bootstrap.min.css"/>

<script type="text/javascript" src="http://maps.google.com/maps/api/js"></script>
<script type="text/javascript" src="jquery/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.4/js/bootstrap.min.js"></script>

<script type="text/javascript" src="angular-1.3.15/angular.min.js"></script>
<script type="text/javascript" src="angular-1.3.15/angular-sanitize.min.js"></script>
<script type="text/javascript" src="angular-1.3.15/angular-animate.min.js"></script>
<script type="text/javascript" src="angular-1.3.15/ng-map.min.js"></script>

<script type="text/javascript">
	var app = angular.module("myApp", ["ngSanitize", "ngAnimate", "ngMap"]);
	app.controller("myController", function($scope, GeoCoder) {
		$scope.$on('mapInitialized', function(event, map) {
		    //map.setCenter()
			alert("mapInitialized...");		      
		});
		$scope.map1 = function() {
			$scope.map.setCenter({
				lat : 37.571619,
				lng : 126.976436
			});
			$scope.map.setZoom(18);
		}; 
		$scope.map2 = function() {
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
</script>

<style type="text/css">
	.box{
		border: 1px solid red;
	}
</style>

</head>
<body data-ng-controller="myController">
<section class="container">
	<div class="row">
		<div class="col-sm-4 box">
			<button class="btn btn-success" data-ng-click="map1()">광화문</button>
			<button class="btn btn-primary" data-ng-click="map2()">우리집</button>
		</div>
		<div class="col-sm-8 box">
			<map data-center="37.556761,126.945857" data-zoom="16"></map>
		</div>
	</div>
</section>
</body>
</html>