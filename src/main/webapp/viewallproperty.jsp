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
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Modern an Admin Panel Category Flat Bootstarp Resposive Website Template | Basic_tables :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<!----webfonts--->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<!---//webfonts--->  
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
</head>
<style>
  body {
    background-image: url('bg.jpg'); 
    background-repeat: no-repeat;
    background-size: cover;
  }
</style>
<body>
<div id="wrapper">
     <!-- Navigation -->
        <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Property Bazzar</a>
            </div>
            
			<form class="navbar-form navbar-right">
              <input type="text" class="form-control" value="Search..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search...';}">
            </form>
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="index.html"><i class="fa fa-dashboard fa-fw nav_icon"></i>Dashboard</a>
                        </li>
                        
                        <li>
                            <a href="#"><i class="fa fa-indent nav_icon"></i> Admin Menu<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="viewalluser.jsp">View All User's</a>
                                </li>
                                <li>
                                    <a href="viewallproperty.jsp">View All Properties</a>
                                </li>
                                <li>
                                    <a href="viewallsoldpro.jsp">View Sold Properties</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="index.html"><i class="fa fa-dashboard fa-fw nav_icon"></i>Logout</a>
                        </li>
                        
                    </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
        <div id="page-wrapper">
        <div class="col-md-12 graphs">
	   <div class="xs">
  	
 
	<div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">
				<div class="panel-heading">
					<h2>All Properties Information Table</h2>
					<div class="panel-ctrls" data-actions-container="" data-action-collapse="{&quot;target&quot;: &quot;.panel-body&quot;}"><span class="button-icon has-bg"><i class="ti ti-angle-down"></i></span></div>
				</div>
				<div class="panel-body no-padding" style="display: block;">
					<table class="table table-striped">
						<thead>
							<tr class="warning">
								<th>Proprty Id</th>
								<th>Property Type</th>
								<th>Property Address</th>
								<th>Property Price</th>
								<th>Property status</th>
								<th>Owener Email</th>
								<th>Action</th>
							</tr>
						</thead>
						<% 
        	
        	Connection con=ConnectDB.connect();
        try
        {
        	PreparedStatement ps1=con.prepareStatement("Select * from property_tbl where pstatus=?");
        	ps1.setString(1,"Available");
        	ResultSet rs =ps1.executeQuery();
        	while(rs.next())
        	{
        	%>
      			<center><div>
                <tr>
                    <center><th><%=rs.getString("pid")%> </th></center>
                    <center><th><%=rs.getString("ptype")%></th></center>
                    <center><th><%=rs.getString("padd")%></th></center>
                    <center><th><%=rs.getString("pprice")%></th></center>
                    <center><th><%=rs.getString("pstatus")%></th></center>
                    <center><th><%=rs.getString("uemail")%></th></center>
                    <center><th><a href="deleteproperty.jsp?pid=<%=rs.getString("pid")%>">Delete</a></th>
                </tr>
               </div></center>
               
            <%
            	}
		}
			        catch(Exception e)
			        {
			        	e.printStackTrace();
			        }
			        
        
        	%>
					</table>
				</div>
			</div>
	
  </div>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <div class="copy_layout">
<p>Copyright &copy; 2023 Harshada Properties,Dhule. All Rights Reserved | Design by Darshan Chaudhari  </p>  </div>
  
   </div>
   
      </div>
      <!-- /#page-wrapper -->
   </div>
    <!-- /#wrapper -->
<!-- Nav CSS -->
<link href="css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
</body>
</html>

</body>
</html>