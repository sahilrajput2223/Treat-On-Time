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

	String email = request.getParameter("email");
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
									<li class="breadcrumb-item active" aria-current="page">Edit Profile</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">Edit Settings</h2>
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
									<% while(rs.next()){ %>
									<!-- Profile Settings Form -->
									<form method="post" action="/Treat-On-Time/update_user">
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
													<input type="text" value="<%= rs.getString("email") %>"  name="name" class="form-control">
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
													<textarea type="text" name="bio" class="form-control" ><%= rs.getString("bio") %></textarea>
												</div>
											</div>
																				
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Date of Birth</label>
													<div>
														<input type="date" name="DOB" value="<%= rs.getString("date_of_birth") %>" class="form-control"">
													</div>
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Blood Group</label>
													<select name="blood_group" class="form-control select">
														<option <% if((rs.getString("blood_group")).equals("A-")){ out.print("selected"); } %> >A-</option>
														<option <% if((rs.getString("blood_group")).equals("A+")){ out.print("selected"); } %>>A+</option>
														<option <% if((rs.getString("blood_group")).equals("B-")){ out.print("selected"); } %>>B-</option>
														<option <% if((rs.getString("blood_group")).equals("B+")){ out.print("selected"); } %>>B+</option>
														<option <% if((rs.getString("blood_group")).equals("AB-")){ out.print("selected"); } %>>AB-</option>
														<option <% if((rs.getString("blood_group")).equals("AB+")){ out.print("selected"); } %>>AB+</option>
														<option <% if((rs.getString("blood_group")).equals("O-")){ out.print("selected"); } %>>O-</option>
														<option <% if((rs.getString("blood_group")).equals("O+")){ out.print("selected"); } %>>O+</option>
													</select>
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Mobile</label>
													<input type="text" value="<%= rs.getString("contact") %>" name="contact" class="form-control">
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Street</label>
													<input type="text" name="street" value="<%= rs.getString("street") %>" class="form-control">
												</div>
											</div>
										
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Area</label>
													<input type="text" name="area" value="<%= rs.getString("area") %>" class="form-control">
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>City</label>
													<input type="text" name="city" value="<%= rs.getString("city") %>" class="form-control">
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>State</label>
													<input type="text" name="state" value="<%= rs.getString("state") %>" class="form-control">
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Country</label>
													<input type="text" name="country" value="<%= rs.getString("country") %>" class="form-control">
												</div>
											</div>
										</div>
										<div class="row submit-section">
											<div class="col-md-2">
												
											</div>
											<div class="col-md-5">
												<button style="wdith:100%;" type="submit" class="btn btn-primary submit-btn">Update</button>
											</div>
											<div class="col-md-5">
												<input style="wdith:100%;" type="reset" class="btn btn-danger submit-btn" value="Reset">
											</div>
											<div class="col-md-2">
												
											</div>
										</div>
									</form>
									<% } rs.close(); %>
									<!-- /Profile Settings Form -->
									
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>		
			<!-- /Page Content -->

			
<%@ include file="footer.jsp" %>			