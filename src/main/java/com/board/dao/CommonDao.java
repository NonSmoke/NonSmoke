package com.board.dao;
 
import java.sql.*;
 
public class CommonDao {
    //공통적으로 쓰일 접속에 관련된 정보 변수들을 상수로 선언합니다.
 
    private final String driverName="oracle.jdbc.driver.OracleDriver";
    private final String url="jdbc:oracle:thin:@localhost:1521:XE";
    private final String id="scott";
    private final String password="tiger";
 
    //접속에 필요한 변수를 선언합니다.
    private Connection con=null;
    private Statement stmt=null;
 
    //db접속정보를 가시조, 접속후에 SQL문을 사용하기위해 필요한 statement객체를 반환하는
    //openConnection 메소드를 구현합니다.
 
    public Statement openConnection(){
 
        try{
 
            Class.forName(driverName);
 
            con=DriverManager.getConnection(url,id,password);
            stmt=con.createStatement();
 
        }catch(Exception e){
            e.printStackTrace();
        }
        return stmt;
    }
    //접속을 종료하기위한 closeConnection 메소드를 구현합니다.
 
    public void closeConnection(){
 
        try {
            if(!con.isClosed())//닫히지 않았으면
                con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}