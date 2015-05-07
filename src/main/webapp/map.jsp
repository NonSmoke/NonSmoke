<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
