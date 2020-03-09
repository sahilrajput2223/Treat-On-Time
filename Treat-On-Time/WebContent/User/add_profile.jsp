<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ include file="header.jsp" %>

<%


//HttpSession user = request.getSession(false);

if(user.getAttribute("email") == null){
	response.sendRedirect("./login.jsp");
	  }


%>
			<!-- Breadcrumb -->
			<div class="breadcrumb-bar">
				<div class="container-fluid">
					<div class="row align-items-center">
						<div class="col-md-12 col-12">
							<nav aria-label="breadcrumb" class="page-breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index-2.html">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">Profile Settings</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">Profile Settings</h2>
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
									<form method="post" action="/Treat-On-Time/insert_user_profile">
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
													<input type="text" name="name" class="form-control">
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Email ID</label>
													<input type="email" name="email" class="form-control" >
												</div>
											</div>
											<div class="col-12 col-md-12">
												<div class="form-group">
													<label>Bio</label>
													<textarea type="text" name="bio" class="form-control" ></textarea>
												</div>
											</div>
																				
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Date of Birth</label>
													<div>
														<input type="date" name="DOB" class="form-control"">
													</div>
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Blood Group</label>
													<select name="blood_group" class="form-control select">
														<option>A-</option>
														<option>A+</option>
														<option>B-</option>
														<option>B+</option>
														<option>AB-</option>
														<option>AB+</option>
														<option>O-</option>
														<option>O+</option>
													</select>
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Mobile</label>
													<input type="text" name="contact" class="form-control">
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Street</label>
													<input type="text" name="street" class="form-control">
												</div>
											</div>
										
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Area</label>
													<input type="text" name="area" class="form-control">
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>City</label>
													<input type="text" name="city" class="form-control">
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>State</label>
													<input type="text" name="state" class="form-control">
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Country</label>
													<input type="text" name="country" class="form-control">
												</div>
											</div>
										</div>
										<div class="row submit-section">
											<div class="col-md-2">
												
											</div>
											<div class="col-md-5">
												<button style="wdith:100%;" type="submit" class="btn btn-primary submit-btn">Submit</button>
											</div>
											<div class="col-md-5">
												<input style="wdith:100%;" type="reset" class="btn btn-danger submit-btn" value="Reset">
											</div>
											<div class="col-md-2">
												
											</div>
										</div>
									</form>
									<!-- /Profile Settings Form -->
									
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>		
			<!-- /Page Content -->

			
<%@ include file="footer.jsp" %>			