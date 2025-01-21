<%@page import="com.nobroker.services.*"%>
<%@ page import="com.r3sys.dbcon.*"%>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>

	<body>

		<%
		
			try
			{
				String pid = request.getParameter("pid") ;
				//String uemail =Users.getEmail();
				Connection con = ConnectDB.connect();
				PreparedStatement ps1 = con.prepareStatement("delete from property_tbl where pid=? ");
				ps1.setString(1, pid);
				//ps1.setString(2,uemail);
				int i = ps1.executeUpdate();
				if(i==1)
				{
					response.sendRedirect("usermenu.html");
				}
				else
				{
					response.sendRedirect("viewuserproperty.jsp");
				}
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		
		%>



</body>
</html>