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
else{
	String email = user.getAttribute("email").toString();
	Dao d = new Dao();
	ResultSet rs = d.user_profile_by_email(email);
%>

			<!-- Breadcrumb -->
			<div class="breadcrumb-bar">
				<div class="container-fluid">
					<div class="row align-items-center">
						<div class="col-md-12 col-12">
							<nav aria-label="breadcrumb" class="page-breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index-2.html">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">Profile</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">Profile</h2>
						</div>
					</div>
				</div>
			</div>
			<!-- /Breadcrumb -->
			
			<!-- Page Content -->
			<div class="content">
				<div class="container">
					<div class="row">
									
						<div class="col-md-12 col-lg-12 col-xl-12">
							<div class="card">
								<div class="card-body container">
									
									<!-- Profile Settings Form -->
									<%
										while(rs.next()){
									%>
										<div class="row form-row">
											<div class="col-12 col-md-12">
												<div class="form-group">
													<div class="change-avatar">
													</div>
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Name</label>
													<input type="text" name="name" value="<%= rs.getString("name") %>" readonly class="form-control">
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Email ID</label>
													<input type="email" value="<%= rs.getString("email") %>" readonly name="email" class="form-control" >
												</div>
											</div>
											<div class="col-12 col-md-12">
												<div class="form-group">
													<label>Bio</label>
													<textarea type="text" name="bio" readonly class="form-control" ><%= rs.getString("bio") %></textarea>
												</div>
											</div>
																				
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Date of Birth</label>
													<div>
														<input type="date" name="DOB" value="<%= rs.getString("date_of_birth") %>" readonly class="form-control"">
													</div>
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Blood Group</label>
													<input type="text" name="blood_group" value="<%= rs.getString("blood_group") %>" readonly class="form-control"">
												
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Mobile</label>
													<input type="text" value="<%= rs.getString("contact") %>" readonly name="contact" class="form-control">
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Street</label>
													<input type="text" name="street" value="<%= rs.getString("street") %>" readonly class="form-control">
												</div>
											</div>
										
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Area</label>
													<input type="text" name="area" class="form-control" value="<%= rs.getString("area") %>" readonly>
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>City</label>
													<input type="text" name="city" class="form-control" value="<%= rs.getString("city") %>" readonly>
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>State</label>
													<input type="text" name="state" class="form-control" value="<%= rs.getString("state") %>" readonly>
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Country</label>
													<input type="text" name="country" class="form-control" value="<%= rs.getString("country") %>" readonly>
												</div>
											</div>
											
											<form method="post" action="./edit_profile.jsp"  style="margin-top:2%;">
												<input type="hidden" name="email" value="<%= rs.getString("email")%>">	
											<button style="padding:5%; width:100%;" class="btn btn-primary"> Edit Profile </button></form>
										</div>
									<% } rs.close(); } %>
									<!-- /Profile Settings Form -->
									
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>		
			<!-- /Page Content -->

			
<%@ include file="footer.jsp" %>			