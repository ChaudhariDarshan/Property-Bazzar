package com.nobroker.services;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.r3sys.dbcon.ConnectDB;

/**
 * Servlet implementation class AddUserNewProperty
 */
public class AddUserNewProperty extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUserNewProperty() {
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
		
		String ptype = request.getParameter("ptype");
		String padd = request.getParameter("padd");
		String pprice = request.getParameter("pprice");
		String uemail = request.getParameter("uemail");
		String lat = request.getParameter("lat");
		String lng = request.getParameter("lng");
	
		

		
		try
		{
			Connection con = ConnectDB.connect();
			PreparedStatement ps1 = con.prepareStatement("insert into property_tbl values(?,?,?,?,?,?,?,?)");
			ps1.setInt(1, 0);
			ps1.setString(2, ptype);
			ps1.setString(3, padd);
			ps1.setString(4, pprice);
			ps1.setString(5, "Available");
			ps1.setString(6, Users.getEmail());
			ps1.setString(7, lat);
			ps1.setString(8, lng);
			int i = ps1.executeUpdate();
			if(i==1)
			{
				response.sendRedirect("usermenu.html");
			}
			else
			{
				response.sendRedirect("addnewproperty.html");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
