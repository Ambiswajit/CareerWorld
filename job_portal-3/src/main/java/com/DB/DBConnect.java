package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private static Connection conn;
	public static Connection getConn() {
		try {
			if(conn == null) {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal-3","root","biswajit0316");
			}
		
		}catch(Exception e ){
			e.printStackTrace();
			
		}
		return conn;
	}
	
}
