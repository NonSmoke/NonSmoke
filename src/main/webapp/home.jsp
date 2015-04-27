<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta charset="EUC-KR">
<title>home.jsp</title>

<link rel="stylesheet" href="bootstrap-3.3.4/css/bootstrap.min.css"/>

<script type="text/javascript" src="jquery/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.4/js/bootstrap.min.js"></script>
<script type="text/javascript" src="angular-1.3.15/angular.min.js"></script>
<script type="text/javascript" src="angular-1.3.15/angular-sanitize.min.js"></script>
<script type="text/javascript" src="angular-1.3.15/angular-animate.min.js"></script>
<script type="text/javascript">
	var app = angular.module("myApp", ["ngSanitize", "ngAnimate"]);
	app.controller("myController", function() {
		
	});
</script>
<style type="text/css">
	#header{
		text-align: center;
	}
	
</style>

</head>
<body data-ng-controller="myController">
<header class="container">
	<h1 id="header">NonSmoker</h1>
	
	<nav class="navbar navbar-default">
		<div class="container-fluid">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	    	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
	        	<span class="sr-only">Toggle navigation</span>
	        	<span class="glyphicon glyphicon-align-justify"></span>
	       	</button>
	      	<a class="navbar-brand" href="home.jsp">Home</a>
	    </div>
	
	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	    	<ul class="nav navbar-nav">
	        	<li class="active"><a href="#">intro<span class="sr-only">(current)</span></a></li>
	        	<li><a href="#">border</a></li>
	        	<li><a href="#">Calender</a></li>
	      	</ul>
	     <form class="navbar-form navbar-left" role="search">
	        <div class="form-group">
	        	<input type="text" class="form-control" placeholder="Search">
	        </div>
	        <button type="submit" class="btn btn-default">Search</button>
	      </form>
	      
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
</header>
<section class="container">
	
	<div class="row">
		<div class="col-xs-6 box">
<!-- 				<img src="NonSmoke.PNG" width="500" height="400"> -->
		</div>
		<div class="col-xs-6 box">
			<form>
				<div class="form-group">
					<label for="InputId">Membership ID</label>
					<input type="name"/>
				</div>
				<div class="form-group">
				    <label for="InputPassword">Password</label>
				    <input type="password"/>
				</div>
				<button type="submit" class="btn btn-default">Log in</button>
				<button type="reset" class="btn btn-default">Reset</button>
				<br>
				<a href="#" target="_blank" id="register">Join button</a>
			</form>
		</div>
	</div>
</section>
<footer class="container">
	<h1>PSW</h1>
</footer>
</body>
</html>