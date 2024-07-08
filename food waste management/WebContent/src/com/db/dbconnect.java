package com.db;
import java.sql.*;

public class dbconnect {
	public static Connection con;
	public static Connection getConnection() 
	{
		try 
		{
			if(con==null)
			{
				Class.forName("com.mysql.jdbc.cj.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/abc","root","Ajeet@117089");
			
			}
			
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return con;
	}

}
