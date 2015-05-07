<!-- http://localhost:8080/Employee/webapp/login/login -->
<!-- http://localhost:8080/Employee/WEB-INF/login/loginform.jsp -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<section class="container">

	<div class="row">
		<div class="col-xs-6 box">
 				<img src="img/NonSmoke.PNG" width="500" height="400">
		</div>
		<div class="col-xs-6 box">
<!-- #############################POST ·Î±×ÀÎ######################## -->
			<form id="form1" name="form1" action ="/login" method="post">
				
				<div class="form-group">
					<label for="InputId">Membership ID</label><br>
					<input type="text" id="id" name="id"/>
				</div>
				<div class="form-group">
				    <label for="InputPassword">Password</label><br>
				    <input type="password" id="password" name="password"/>
				</div>
				<input type="submit" value="login" class="btn btn-default">
				<button type="reset" class="btn btn-default">Reset</button>
				<br>
				<a href="#" id="register">Join button</a>
			</form>
		</div>
	</div>
</section>
