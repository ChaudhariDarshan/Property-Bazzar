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
				String uid = request.getParameter("uid") ;
				//String uemail =Users.getEmail();
				Connection con = ConnectDB.connect();
				PreparedStatement ps1 = con.prepareStatement("delete from users_tbl where uid=? ");
				ps1.setString(1, uid);
				//ps1.setString(2,uemail);
				int i = ps1.executeUpdate();
				if(i==1)
				{
					response.sendRedirect("viewalluser.jsp");
				}
				else
				{
					response.sendRedirect("viewalluser.jsp");
				}
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		
		%>



</body>
</html>