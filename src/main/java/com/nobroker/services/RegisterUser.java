package com.nobroker.services;


import com.r3sys.dbcon.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class RegisterUser
 */
public class RegisterUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		

		String uname = request.getParameter("uname");
		String uemail = request.getParameter("uemail");
		String umob = request.getParameter("umob");
		String upass = request.getParameter("upass");
		String uadd = request.getParameter("uadd");
		
		try
		{
			Connection con = ConnectDB.connect();
			PreparedStatement ps1 = con.prepareStatement("Insert into users_tbl values(?,?,?,?,?,?)");
			ps1.setInt(1, 0);
			ps1.setString(2, uname);
			ps1.setString(3, uemail);
			ps1.setString(4, upass );
			ps1.setString(5, umob);
			ps1.setString(6, uadd);
			int i = ps1.executeUpdate();
			if(i==1)
			{
				//System.out.println("inserted");
				response.sendRedirect("index.html");
			}
			else
			{
				response.sendRedirect("failed.html");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
