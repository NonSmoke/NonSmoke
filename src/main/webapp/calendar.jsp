<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="en-US" ng-app="myApp">
<head>
	<meta charset="UTF-8">
	<title>일별 스케쥴</title>
	<style type="text/css">
		#cal {
			clear: both;
			border-collapse: collapse;
			margin: auto;
		}
		#cal td {
			width: 150px;
			height: 70px;
			border: 1px solid #777;
			vertical-align: top;
		}
		#cal thead td {
			text-align: center;
			height: 25px;
			color: #000 !important;
			background-color: #ddd;
		}
		#cal .n {
			display: block;
			width: 100%;
			text-align: right;
			cursor: pointer;
		}
		#cal .n:hover {
			background-color: #ddd;
		}
		#cal .e {
			display: block;
			cursor: pointer;
			font-size: 12px;
			padding: 3px;
		}
		#cal .e:hover {
			background-color: #ddd;
		}
		#cal .e span {
			padding: 3px 0px;
		}
		#cal_head {
			width: 1000px;
			margin: auto;
		}
		#cal_head>div {
			float: left;
			width: 50%;
			display: inline-block;
			height: 30px;
		}
		#cal_head .right {
			padding-top: 30px;
			text-align: right;
		}
		.state_0 {
			color: #666;
			opacity: 0.3;
		}
		.state_1 {
			color: #000;
		}
		.today_1 {
			background-color: #ddd;
		}
		#cal_exec {
			position: absolute;
			z-index: 100;
			width: 600px;
			border-collapse: collapse;
			border: 1px solid #999;
			top: 110px;
			left: 50%;
			margin-left: -300px;
			background-color: #ccc;
			box-shadow: 5px 5px 5px #777;
		}
		#cal_exec td:nth-child(odd){
			width: 20%;
			text-align: center;
		}
		#cal_exec td {
			padding: 5px;
		}
		#cal_exec td input:not([type="radio"]) {
			width: 90%;
			padding: 3px;
		}
		#cal_exec td textarea {
			width: 90%;
			height: 150px;
			padding: 3px;
		}
		#cal_exec button {
			font-size: 15px;
		}
	</style>

	
	
</head>
<body>
	<div ng-controller="calendarController">

		<div id="cal_head">
			<div class="left"><h1>{{yy}}년 {{mm+1}}월</h1></div>
			<div class="right">
				<button ng-click="_set_cal(-1)">이전달</button>
				<button ng-click="_set_cal(0)">이번달</button>
				<button ng-click="_set_cal(1)">다음달</button>
			</div><br><br><hr>
		</div>
		<table id="cal">
			<thead>
				<td>sun</td>
				<td>mon</td>
				<td>tue</td>
				<td>wed</td>
				<td>thu</td>
				<td>fri</td>
				<td>sat</td>
			</thead>
			<tr ng-repeat="y in [0,1,2,3,4,5]">
				<td ng-repeat="x in [0,1,2,3,4,5,6]" class="state_{{cal[y*7+x].mm == mm ? 1 : 0}} today_{{cal[y*7+x].tt == tt ? 1 : 0}}">
					<span class="n" ng-click="_select(cal[y*7+x])">{{cal[y*7+x].dd}}</span>
					<div class="e" ng-click="_select(e)" ng-repeat="e in cal[y*7+x].e"><span ng-style="{'color': e.color,'background-color': e.background}">{{e.title}}</span></div>
				</td>
			</tr>
		</table>
		

		<table id="cal_exec" ng-show="z">
		<tr>
			<td colspan="2">{{z.yy}}년 {{z.mm+1}}월 {{z.dd}}일</td>
		</tr>
		<tr>
			<td>제목</td>
			<td><input ng-model="z.title"></td>
		</tr>
		<tr>
			<td>글자색</td>
			<td><label ng-repeat="c in ccc" ng-style="{color: c}"><input type="radio" ng-model="z.color" value="{{c}}">■ </label></td>
		</tr>
		<tr>
			<td>배경색</td>
			<td><label ng-repeat="c in ccc" ng-style="{color: c}"><input type="radio" ng-model="z.background" value="{{c}}">■ </label></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea ng-model="z.content"></textarea></td>
		</tr>
		<tr>
			<td colspan="2">
				<button ng-show="!z._id" ng-disabled="!z.title" ng-click="_add()">등록</button>
				<button ng-show="z._id" ng-disabled="!z.title" ng-click="_edit()">수정</button>
				<button ng-show="z._id" ng-click="_Delete()">삭제</button>
				<button ng-click="_deselect()">닫기</button>
			</td>
		</tr>
		</table>

	</div>
	

</body>
</html>