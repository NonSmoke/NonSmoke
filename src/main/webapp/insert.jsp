<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
    String title = request.getParameter("title");
    String writer = request.getParameter("writer");
    String regdate = request.getParameter("regdate");
    String content = request.getParameter("content");
    
    if (title == null || title == "")out.println("title이 null입니다.");
    if (writer == null || writer == "")out.println("writer이 null입니다.");
    if (regdate == null || regdate == "")out.println("regdate이 null입니다.");
    if (content == null || content == "")out.println("content이 null입니다.");
    
    try {
    	 
        String driverName = "oracle.jdbc.driver.OracleDriver"; //데이터베이스에 접속하기위한 드라이버를 로드합니다.
    
        String url = "jdbc:oracle:thin:@localhost:1521:XE";            //접속 URL정보와 포트번호(oracle포트), sid(oracle버전)
    
        Class.forName(driverName);
    
        Connection con = DriverManager.getConnection(url,"scott","tiger");    // getCo... : 계정정보 url, id, pw
    
        Statement stmt = con.createStatement();            // SQL 쿼리를 날리기위한 Statement 객체 생성
        
        String sql = "INSERT INTO BOARD "+
        
                       "(IDX, TITLE, WRITER, REGDATE, CONTENT) "+
        
                       "VALUES (board_seq.nextval, '"+title+"', '"+writer+"', '"+regdate+"', '"+content+"')";
        
       stmt.executeUpdate(sql); 
        
//         out.println("Oracle 데이터베이스 db에 성공적으로 접속했습니다");
    
        con.close();
    
   } catch (Exception e) {
    
        out.println("Oracle 데이터베이스 db 접속에 문제가 있습니다. <hr>");
    
        out.println(e.getMessage());
    
        e.printStackTrace();
    
   }finally{
	   
       out.print("<script>location.href='#list';</script>");

   }
%>
<body>
</body>
</html>