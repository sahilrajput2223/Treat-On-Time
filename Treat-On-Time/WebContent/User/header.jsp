<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html> 
<html lang="en">
	
<!-- Mirrored from dreamguys.co.in/demo/doccure/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 22 Feb 2020 10:56:19 GMT -->
<head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
		<title>Doccure</title>
		
		<!-- Favicons -->
		<link type="image/x-icon" href="assets/img/favicon.png" rel="icon">
		
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
		<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
		<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
		
		<!-- Main CSS -->
		<link rel="stylesheet" href="assets/css/style.css">
		
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.min.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->
	
	</head>
	<body>

		<!-- Main Wrapper -->
		<div class="main-wrapper">
		
			<!-- Header -->
			<header class="header">
				<nav class="navbar navbar-expand-lg header-nav">
					<div class="navbar-header">
						<a id="mobile_btn" href="javascript:void(0);">
							<span class="bar-icon">
								<span></span>
								<span></span>
								<span></span>
							</span>
						</a>
						<a href="index-2.html" class="navbar-brand logo">
							<img src="assets/img/logo.png" class="img-fluid" alt="Logo">
						</a>
					</div>
					<div class="main-menu-wrapper">
						<div class="menu-header">
							<a href="index-2.html" class="menu-logo">
								<img src="assets/img/logo.png" class="img-fluid" alt="Logo">
							</a>
							<a id="menu_close" class="menu-close" href="javascript:void(0);">
								<i class="fas fa-times"></i>
							</a>
						</div>
						<%
						

								 HttpSession user = request.getSession(false);

								if(user.getAttribute("email") != null){
									

						%>
						
						<ul class="main-nav">
							<li class="active">
								<a href="user_index.jsp">Home</a>
							</li>
							<li class="has-submenu">
								<a href="view_booking.jsp">All Bookings</i></a>
							</li>
							<li class="has-submenu">
								<a href="add_profile.jsp">Add Profile</i></a>
							</li>	
							
							<li class="has-submenu">
								<a href="view_profile.jsp">Profile</i></a>
							</li>	
						</ul>
						
						<%} %>		 
					</div>		 
					
					<ul class="nav header-navbar-rht">
							<%
						

								
								if(user.getAttribute("email") != null){
									

						%>
						
						<li class="nav-item">
							<a class="nav-link header-login" href="logout.jsp">Logout</a>
						</li>
						
						<% } %>
					</ul>
				</nav>
			</header>
			<!-- /Header -->
