<%@ page language="java" contentType="text/html; charset=EUC-KR"
 
    pageEncoding="EUC-KR"%>
 
<%@ page import="java.sql.*" %>  
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
 
<head>
 
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
 
<title>����! �Խ��� - �Խñ� ����</title>    
 
</head>
 
<%
 
    String idx = request.getParameter("idx");
 
    try {
 
        String driverName = "oracle.jdbc.driver.OracleDriver"; 
 
        String url = "jdbc:oracle:thin:@localhost:1521:XE";
 
      
 
        Class.forName(driverName);
 
        Connection con = DriverManager.getConnection(url,"scott","tiger");
 
 
        Statement stmt = con.createStatement();        
 
        String sql = "delete from board where idx = " + idx ;   // ���� �����Դϴ�.
 
        stmt.executeQuery(sql);
 
        con.close();
 
    }catch (Exception e) {
 
 
        e.printStackTrace();
 
    }
 
%>
 
<script>
 
    alert("�Խñ��� �����Ǿ����ϴ�");  // �Խñ��� �����Ǿ��ٴ� ���â�� ����ְ�
 
    location.href="redirect.jsp";          // ����Ʈ�������� �̵��մϴ�.
 
</script>
 
<body>                                           
 
</body>
 
</html>