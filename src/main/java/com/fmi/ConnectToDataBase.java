package com.fmi;
import java.sql.*;

public class ConnectToDataBase {

	public ConnectToDataBase() {
	 Connection con = null;
	 String url = "jdbc:mysql:localhost/db";
	 String dbName = "db";
	 String driver = "com.mysql.jdbc.Driver";
	 String username= "root";
	 String password = "dinamo11";
	 Statement s;
	 
	 try {
		 Class.forName(driver).newInstance();
		 con = DriverManager.getConnection(dbName, username, password);
		 con.setAutoCommit(true);
		 con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
		 
	 }
	 catch (ClassNotFoundException e){
		 e.printStackTrace();
	 }
	 catch (SQLException e){
		 e.printStackTrace();
	 }
	 catch (Exception e)
	 {
		 e.printStackTrace();
	 }
	}
}
