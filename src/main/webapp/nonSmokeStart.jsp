<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta charset="EUC-KR">
<title>calendar.jsp</title>

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
   
   document.write('<style>');
   document.write('td {font-size:18px; font-family:����; text-decoration:none; }');
   document.write('A:link,A:active,A:visited{text-decoration:none;font-size:18PX;color:#333333;}');
   document.write('A:hover {text-decoration:none; color:ff9900}');
   document.write('font { font-size: 15pt; }');
   document.write('.cnj_input {position:relative;}');
   document.write('.cnj_input2 {border-width:2; border-color:rgb(204,204,204); border-style:solid;}');
   document.write('.cnj_input3 { border-width:2; border-style:solid; border-color:#000000; color:#0084D4; background-color:white;text-align:right;}');
   document.write('.cnj_input4 { scrollbar-face-color: #FFCC33;scrollbar-shadow-color: #ffffff;scrollbar-highlight-color: #F3f3f3;scrollbar-3dlight-color: #ffffff;scrollbar-darkshadow-color: #F3f3f3;scrollbar-track-color: #ffffff;scrollbar-arrow-color: #f9f9f9; }');
   document.write('</style>');
   
   var monthName=new Array("1��","2��","3��","4��","5��","6��","7��",
   "8��","9��","10��","11��","12��")
   /*
   var monthName=new Array("January","February","March","April","May","June","July",
   "August","September","October","November","December")
   */
   var monthDays=new Array(31,28,31,30,31,30,31,31,30,31,30,31)
   var now=new Date()
   var nowd=now.getDate()
   var nowm=now.getMonth()
   var nowy=now.getYear()
   function showCalendar(day,month,year) {
   if ((year%4==0||year%100==0)&&(year%400==0)) monthDays[1]=29; else monthDays[1]=28 //leap year test
   var firstDay=new Date(year,month,1).getDay()
   var cnj_str="<table width=45% border=0 cellpadding=5 cellspacing=1 align=center bgcolor=#CCCCCC>"
   
   cnj_str+="<tr bgcolor=white><td colspan=7>"
   cnj_str+="<table border=0 cellpadding=0 cellspacing=0 align=center width=100%>"
   cnj_str+="<td><a href='javascript:;' onClick='nowm--; if (nowm<0) { nowy--; nowm=11; } showCalendar(nowd,nowm,nowy)' title='���� ��'> <<</a></td>"
   cnj_str+="<td align=center> "+(year+1900)+"��"+" "+monthName[month].toUpperCase()+" </td>"
   cnj_str+="<td align=right><a href='javascript:;' onClick='nowm++; if (nowm>11) { nowy++; nowm=0; } showCalendar(nowd,nowm,nowy)' title='���� ��'> >></a></td>"
   cnj_str+="</tr></table>"
   cnj_str+="</td></tr>"
   cnj_str+="<tr align=center bgcolor='#FFFFB9'>"
   cnj_str+="<th><font color='red'>��</font></th>"
   cnj_str+="<th><font color='black'>��</font></th>"
   cnj_str+="<th><font color='black'>ȭ</font></th>"
   cnj_str+="<th><font color='black'>��</font></th>"
   cnj_str+="<th><font color='black'>��</font></th>"
   cnj_str+="<th><font color='black'>��</font></th>"
   cnj_str+="<th><font color='blue'>��</font></th>" 
   cnj_str+="</tr>"
   
   var dayCount=1
   
   cnj_str+="<tr bgcolor=white>"
   
   for (var i=0;i<firstDay;i++) cnj_str+="<td> " //����
   for (var i=0;i<monthDays[month];i++) {
   if(dayCount==nowd) {
   cnj_str+="<td align=center bgcolor='#FFFFB9'><b>" // ���� ��¥�϶� ���� ����,���� ���ϰ�
   } else {
   cnj_str+="<td align=center>" // ���� ��¥�� �ƴҶ� ���� ����
   }
   
   cnj_str+="<a href=nonSmokeStart.jsp' id='nowy/nowm/nowd'>" // ��ũ����
   cnj_str+=dayCount++ // ��¥
   cnj_str+="</a>"
   
   if(dayCount==nowd) {
   cnj_str+="</b>" // ���� ��¥�϶� ���� ���ϰ�
   } else {
   cnj_str+="" // ���� ��¥�� ���� ���ϰ� ����
   }
   
   if ((i+firstDay+1)%7==0&&(dayCount<monthDays[month]+1)) cnj_str+="<tr bgcolor=white>"
   }
   var totCells=firstDay+monthDays[month]
   for (var i=0;i<(totCells>28?(totCells>35?42:35):(28)-totCells;i++) cnj_str+="<td> "
   cnj_str+="</table><BR>"
   calendar.innerHTML=cnj_str
   }
</script>
<style type="text/css">
   #header{
      text-align: center;
   }
   
</style>


<body onLoad="showCalendar(nowd,nowm,nowy)">
<span id="calendar" class="cnj_input"></span>
</body>

</body>
</html>