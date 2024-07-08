package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entities.*;

public class userDAo {
	private Connection conn;

	public userDAo(Connection conn) {
		super();

	}

public boolean saveuserregister(user us) 
    { boolean f=false;
	
	  try 
	  {
		   String query1="insert data into user(name,email,password,catorgy,phone) valuse(?,?,?,?,?)";
		   PreparedStatement ps=conn.prepareStatement(query1);
           ps.setString(1, us.getName());
           ps.setString(2, us.getEmail());
           ps.setString(3, us.getPassword());
           ps.setString(4, us.getCatogry());
           ps.setString(5, us.getMobile());
           ps.executeUpdate();
           f=true;
	  }
	  catch(Exception e) 
	  {
		  e.printStackTrace();
	  }
	return f;
	   
		
	 
	}
      
}
