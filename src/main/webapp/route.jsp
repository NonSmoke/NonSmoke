<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta charset="EUC-KR">
<title>route.jsp</title>
<link rel="stylesheet" href="bootstrap-3.3.4/css/bootstrap.min.css"/>

<c:url var="jquery" value="/jquery"/>
<c:url var="bootstrap" value="/bootstrap-3.3.4"/>
<c:url var="angular" value="/angular-1.3.15"/>


<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js"></script>
<script type="text/javascript" src="${jquery}/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="${bootstrap}/js/bootstrap.min.js"></script>


<script type="text/javascript" src="${angular}/angular.min.js"></script>
<script type="text/javascript" src="${angular}/angular-sanitize.min.js"></script>
<script type="text/javascript" src="${angular}/angular-animate.min.js"></script>
<script type="text/javascript" src="${angular}/angular-route.min.js"></script>
<script type="text/javascript" src="angular-1.3.15/ng-map.min.js"></script>


<script type="text/javascript">
	var app = angular.module("myApp", ["ngAnimate", "ngSanitize", "ngRoute","ngMap"]);
	
	app.config(function($routeProvider) {
	
		var home = {
				  templateUrl : "home.jsp",
				  controller : "homeController"
		  };
		var intro = {
				  templateUrl : "intro.jsp",
				  controller : "introController"
		  };
		
		var calendar = {
				  templateUrl : "calendar.jsp",
				  controller : "calendarController"
		  };
		var border = {
				  templateUrl : "border.jsp",
				  controller : "borderController"
		  };
		var map = {
				  templateUrl : "map.jsp",
				  controller : "mapController"
		  };
		
		  
		  $routeProvider.when('/home', home);
		  $routeProvider.when('/intro', intro);
		  $routeProvider.when('/calendar', calendar);
		  $routeProvider.when('/border', border);
		  $routeProvider.when('/map', map);
		 
		  
		  $routeProvider.otherwise({redirectTo: '/home'});

		
		
	});
	
	app.controller("myController", function($scope) {
	
	});
	
	app.controller("homeController", function($scope) {
		
	});
	
	app.controller("introController", function($scope) {
		
	});

	app.controller("borderController", function($scope) {
	
	});
	
</script>

<script type="text/javascript" src="js/calendar.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<script type="text/javascript" src="js/map.js"></script>



</head>


<body data-ng-controller="myController">
<header class="container">
<nav class="navbar navbar-default">

		<div class="container-fluid">
	    <div class="navbar-header">
	    	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
	        	<span class="sr-only">Toggle navigation</span>
	        	<span class="glyphicon glyphicon-align-justify"></span>
	       	</button>
	      	<a class="navbar-brand" href="#home">Home</a>
	    </div>
	
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	    	<ul class="nav navbar-nav">
	        	<li><a href="#intro">intro<span class="sr-only">(current)</span></a></li>
		            	<li><a href="#border">border</a></li>
		            	<li><a href="#calendar">Calender</a></li>
		            	<li><a href="#map">Map</a></li>
		       
	        </ul>
	     <form class="navbar-form navbar-left" role="search">
	        <div class="form-group">
	        	<input type="text" class="form-control" placeholder="Search">
	        </div>
	        <button type="submit" class="btn btn-default">Search</button>
	      </form>
	      
	    </div>
	  </div>
	</nav>
	
	<ng-view>
	
	</ng-view>
	
	
</header>
</body>

</html>