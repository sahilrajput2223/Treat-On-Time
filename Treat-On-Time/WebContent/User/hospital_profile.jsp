<%@page import="java.sql.ResultSet"%>
<%@page import="com.model.Dao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>

	<%
	

//HttpSession user = request.getSession(false);

if(user.getAttribute("email") == null){
	response.sendRedirect("./login.jsp");
	  }

		String name = request.getParameter("name");
		Dao d = new Dao();
		ResultSet rs = d.hospital_by_name(name);
		
		while(rs.next()){
	
	%>
			
			<!-- Breadcrumb -->
			<div class="breadcrumb-bar">
				<div class="container-fluid">
					<div class="row align-items-center">
						<div class="col-md-12 col-12">
							<nav aria-label="breadcrumb" class="page-breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index-2.html">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">Hospital Profile</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title"><%= rs.getString("name") %></h2>
						</div>
					</div>
				</div>
			</div>
			<!-- /Breadcrumb -->
			
			<!-- Page Content -->
			<div class="content">
				<div class="container">

					<!-- Doctor Widget -->
					<div class="card">
						<div class="card-body">
							<div class="doctor-widget">
								<div class="doc-info-left">
									<div class="doc-info-cont">
										<h4 ><%= rs.getString("name")%></h4>
										<h4 style="color:lightgray"><%= rs.getString("email")%></h4>
										<h4 style="color:lightgray"><%= rs.getString("contact")%></h4>
										
									</div>
								</div>
								<div class="doc-info-right">
									<div class="clinic-booking">
										<form style="margin-top:10%;" method="post" action="./doctor.jsp">
										<input type="hidden" name="name" value="<%= rs.getString("name")%>">
										<button class="btn btn-primary">View Doctors</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /Doctor Widget -->
					
					<!-- Doctor Details Tab -->
					<div class="card">
						<div class="card-body pt-0">
						
							<!-- Tab Menu -->
							<nav class="user-tabs mb-4">
								<ul class="nav nav-tabs nav-tabs-bottom nav-justified">
									<li class="nav-item">
										<a class="nav-link active" href="#doc_overview" data-toggle="tab">Overview</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="#doc_locations" data-toggle="tab">Locations</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="#doc_reviews" data-toggle="tab">Fecilities</a>
									</li>
								</ul>
							</nav>
							<!-- /Tab Menu -->
							
							<!-- Tab Content -->
							<div class="tab-content pt-0">
							
								<!-- Overview Content -->
								<div role="tabpanel" id="doc_overview" class="tab-pane fade show active">
									<div class="row">
										<div class="col-md-12 col-lg-9">
										
											<!-- About Details -->
											<div class="widget about-widget">
												<h4 class="widget-title">About Hospital</h4>
												<p><%= rs.getString("bio") %></p>
											</div>
											<!-- /About Details -->
																		
											
										</div>
									</div>
								</div>
								<!-- /Overview Content -->
								
								
								
								
								<!-- Locations Content -->
								<div role="tabpanel" id="doc_locations" class="tab-pane fade">
										<span style="font-size:15px;">Street: <span style="font-size:15px;color:gray;"><%= rs.getString("street") %></span></span>
										</br>
										<span style="font-size:15px;">Area: <span style="font-size:15px;color:gray;"><%= rs.getString("area") %></span></span>
										</br>
										<span style="font-size:15px;">City: <span style="font-size:15px;color:gray;"><%= rs.getString("city") %></span></span>
										</br>
										<span style="font-size:15px;">State: <span style="font-size:15px;color:gray;"><%= rs.getString("state") %></span></span>
										</br>
										<span style="font-size:15px;">Country: <span style="font-size:15px;color:gray;"><%= rs.getString("country") %></span></span>
										</br>
										
								</div>
								<!-- /Locations Content -->
								
								
								
								<!-- Reviews Content -->
								<div role="tabpanel" id="doc_reviews" class="tab-pane fade">
								
									<!-- Services List -->
											<div class="service-list">
												<h4>Services</h4>
												<ul class="clearfix">
													<% 
															String f = rs.getString("facilites");
															String F[] = d.makeArray(f);
															for (int i = 0 ; i < F.length ; i++ ){ out.print("<li>" + F[i] + "</li>");}
														%></li>
												</ul>
											</div>
											<!-- /Services List -->
											
								</div>
								<!-- /Reviews Content -->
								
								
								
								
								</div>
								</div></div>
								</div>
								
								</div>
								</div>
								
								
								
<% } rs.close();%>

<%@ include file="footer.jsp"%>