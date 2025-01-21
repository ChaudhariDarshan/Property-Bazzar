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
			<button><a href="index.html">Logout</a></button> 
            </form>
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        
                        <li>
                            <a href="#"><i class="fa fa-indent nav_icon"></i> User Menu<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                               <li>
                                    <a href="GetLocationOnMap.html">Add New Property</a>
                                </li>
                                <li>
                                    <a href="viewallpropertyuser.jsp">View All Properties</a>
                                </li>
                                <li>
                                    <a href="viewuserproperty.jsp">View All My Properties</a>
                                </li>
                                <li>
                                    <a href="viewusersoldproperty.jsp">Previously Sold Properties</a>
                                </li>
                                
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="user.html"><i class="fa fa-dashboard fa-fw nav_icon"></i>Logout</a>
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
					<h2>Enquiry Table</h2>
					<div class="panel-ctrls" data-actions-container="" data-action-collapse="{&quot;target&quot;: &quot;.panel-body&quot;}"><span class="button-icon has-bg"><i class="ti ti-angle-down"></i></span></div>
				</div>
				<div class="panel-body no-padding" style="display: block;">
					<table class="table table-striped">
						<thead>
							<tr class="warning">
								<th>Enquiry ID</th>
								<th>USer Name</th>
								<th>USer Email</th>
								<th>User Contact</th>
								<th>User Address</th>
								<th>Enquiry Details</th>
								<th>Property ID</th>
							</tr>
						</thead>
						<% 
        	String pid =request.getParameter("pid");
        	Connection con=ConnectDB.connect();
        try
        {
        	PreparedStatement ps1=con.prepareStatement("Select * from enquiry_tbl where pid=?");
        	ps1.setString(1,pid);
        	//ps1.setString(2,Users.getEmail());
        	ResultSet rs =ps1.executeQuery();
        	while(rs.next())
        	{
        	%>
      			<center><div>
                <tr>
                    
                    <center><th><%=rs.getString("eid")%></th></center>
                    <center><th><%=rs.getString("bname")%></th></center>
                    <center><th><%=rs.getString("bemail")%></th></center>
                    <center><th><%=rs.getString("bmob")%></th></center>
                    <center><th><%=rs.getString("badd")%></th></center>
                    <center><th><%=rs.getString("detail")%> </th></center>
                    <center><th><%=rs.getString("pid")%> </th></center>
                    
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