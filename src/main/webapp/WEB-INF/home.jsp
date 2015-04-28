<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta charset="EUC-KR">
<title>home.jsp</title>

<link rel="stylesheet" href="login/bootstrap-3.3.4/css/bootstrap.min.css"/>

<script type="text/javascript" src="login/jquery/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="login/bootstrap-3.3.4/js/bootstrap.min.js"></script>
<script type="text/javascript" src="login/angular-1.3.15/angular.min.js"></script>
<script type="text/javascript" src="login/angular-1.3.15/angular-sanitize.min.js"></script>
<script type="text/javascript" src="login/angular-1.3.15/angular-animate.min.js"></script>
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
	<h1 id="header">NonSmoke</h1>
	
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
	        	<li><a href="intro.jsp">intro<span class="sr-only">(current)</span></a></li>
		      	<li class="dropdown">
		       		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span class="caret"></span></a>
		        	<ul class="dropdown-menu" role="menu">
		            	<li><a href="calender.jsp">Calender</a></li>
		            	<li><a href="map.jsp">Map</a></li>
		            	<li class="divider"></li>
		            	<li><a href="border.jsp">border</a></li>
		          	</ul>
		        </li>
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
 				<img src="login/NonSmoke.PNG" width="500" height="400">
		</div>
		<div class="col-xs-6 box">
			<form action ="login" method="post">
				<div class="form-group">
					<label for="InputId">Membership ID</label><br>
					<input type="text" name="id"/>
				</div>
				<div class="form-group">
				    <label for="InputPassword">Password</label><br>
				    <input type="password" name="password"/>
				</div>
				<button type="submit" class="btn btn-default">Log in</button>
				<button type="reset" class="btn btn-default">Reset</button>
				<br>
				<a href="#" id="register">Join button</a>
			</form>
		</div>
	</div>
</section>
<footer class="container">
	<h1>PSW</h1>
</footer>
</body>
</html>