package com.r3sys.dbcon;

import java.sql.Connection;
import java.sql.DriverManager;
public class ConnectDB 
{
	
	static Connection con=null;
	public static Connection connect()
	{
		if(con==null)
		{
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nobroker_db","root","");
			}
			catch(Exception e)
			{
				System.err.println("Something Went Wronsg....!");
				e.printStackTrace();
			}
		}
		return con;
	}
}
