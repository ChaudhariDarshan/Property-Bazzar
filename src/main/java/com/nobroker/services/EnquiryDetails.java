package com.nobroker.services;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.r3sys.dbcon.ConnectDB;

/**
 * Servlet implementation class EnquiryDetails
 */
public class EnquiryDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnquiryDetails() {
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
		
		
		String bname=request.getParameter("bname");
		String bemail=request.getParameter("bemail");
		String bmob=request.getParameter("bmob");
		String badd=request.getParameter("badd");
		String que = "Is this Available ?";
		String pid=request.getParameter("pid");
		try
		{
			Connection con=ConnectDB.connect();
			PreparedStatement ps1=con.prepareStatement("insert into enquiry_tbl values(?,?,?,?,?,?,?)");
			ps1.setInt(1, 0);
			ps1.setString(2, bname);
			ps1.setString(3, bemail);
			ps1.setString(4, bmob);
			ps1.setString(5, badd);
			ps1.setString(6, que);
			ps1.setString(7, pid);
			int i=ps1.executeUpdate();
			if(i==1)
			{
				response.sendRedirect("usermenu.html");
			}
		}
		catch(Exception e)
		{
			response.sendRedirect("failed.jsp");
			e.printStackTrace();
		}
	}

}
