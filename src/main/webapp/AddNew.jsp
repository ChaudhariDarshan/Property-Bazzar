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
    background-image: url('bg.jpg'); /* Replace 'images/background.jpg' with the actual path to your image file */
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
  	
 <div class="app-cam">
	<%
        String lat=request.getParameter("lat");
        String lng=request.getParameter("lng");
        String ptype = request.getParameter("ptype");
		String padd = request.getParameter("padd");
		String pprice = request.getParameter("pprice");
		%>
		<form action="AddUserNewProperty" method="post">

		<div class ="sign-u">
		<input type="text" class="user" name="ptype" placeholder="Enter Property Type :" required>
		<div class ="clearflix"> </div>
		</div>	
		<div class ="sign-u">
		<input type="text"  name="padd" placeholder="Enter Address :" required>
		<div class ="clearflix"> </div>
		</div>	
		<div class ="sign-u">
		<input class="form-control" type="text" value="<%=lat%>" placeholder="lat" name="lat" required/> 
		<div class ="clearflix"> </div>
		</div>	
		<div class ="sign-u">
		<input class="form-control" type="text" value="<%=lng%>"placeholder="lng" name="lng" required/>
		<div class ="clearflix"> </div>
		</div>	
		<div class ="sign-u">
		<input type="text"  name="pprice" placeholder="Enter Price : " required>
		<div class ="clearflix"> </div>
		</div>						
		<br>
		<input type="submit" value="Submit">
</form>
</div>
					
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>	
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
      <p>Copyright © 2015 Modern. All Rights Reserved | Design by <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
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