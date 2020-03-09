<%@page import="java.sql.ResultSet"%>
<%@page import="com.model.Dao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  		
<%@ include file='header.jsp'  %>
			
	 	<!-- Page Header -->
					<div class="page-header">
						<div class="row">
							<div class="col">
								<h3 class="page-title">Profile</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
									<li class="breadcrumb-item active">Profile</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					<%
						Dao d = new Dao();
				 		HttpSession doctor = request.getSession(false);				 
				 		
				 		if(doctor.getAttribute("email") == null){
				    		response.sendRedirect("./login.jsp");
				  		  }
						
				 		else{
				 			System.out.print(doctor.getAttribute("email"));
							String email = doctor.getAttribute("email").toString();
							
						ResultSet rs = d.doctor_by_email(email);
						while(rs.next()){
					%>
					<div class="row">
						<div class="col-md-12">
							<div class="profile-header">
								<div class="row align-items-center">
									<div class="col ml-md-n2 profile-user-info">
										<div class="user-Location"><i class="fa fa-map-marker"></i>&nbsp;&nbsp;&nbsp;<%= rs.getString("name") %></div>
										<div class="user-Location"><i class="fa fa-map-marker"></i>&nbsp;&nbsp;&nbsp;<%= rs.getString("h_name") %></div>
										<div class="user-Location"><i class="fa fa-map-marker"></i>&nbsp;&nbsp;&nbsp;<%= rs.getString("specification") %></div>
									</div>
									<div class="col-auto profile-btn">
										
										<form method="POST" action="./edit_profile.jsp">
											<input type="hidden" name="email" value="<%=rs.getString("email") %>">
											<button  class="btn btn-primary">Edit</button>
										</form>
										
									</div>
								</div>
							</div>
							<div class="tab-content profile-tab-cont">
								
								<!-- Personal Details Tab -->
								<div class="tab-pane fade show active" id="per_details_tab">
								
									<!-- Personal Details -->
									<div class="row">
										<div class="col-lg-12">
											<div class="card">
												<div class="card-body">
													<h5 class="card-title d-flex justify-content-between">
														<span>Personal Details</span>
													</h5>
													<div class="row">
														<p class="col-sm-2 text-muted  mb-0 mb-sm-3">Name</p>
														<p class="col-sm-10"><%= rs.getString("name") %></p>
													</div>
													<div class="row">
														<p class="col-sm-2 text-muted  mb-0 mb-sm-3">specialization</p>
														<p class="col-sm-10"><%= rs.getString("specification") %></p>
													</div>
												
													<div class="row">
														<p class="col-sm-2 text-muted  mb-0 mb-sm-3">Education</p>
														<p class="col-sm-10"><%= rs.getString("edu") %></p>
													</div>
													<div class="row">
														<p class="col-sm-2 text-muted  mb-0 mb-sm-3">Days Available</p>
														<p class="col-sm-10"><%= rs.getString("days") %></p>
													</div>
													<div class="row">
														<p class="col-sm-2 text-muted  mb-0 mb-sm-3">Duration For Time</p>
														<p class="col-sm-10"><%= rs.getString("time_slot") %></p>
													</div>
													<div class="row">
														<p class="col-sm-2 text-muted  mb-0 mb-sm-3">Email</p>
														<p class="col-sm-10 "><%= rs.getString("Email") %></p>
													</div>
													<div class="row">
														<p class="col-sm-2 text-muted mb-0 mb-sm-3">Contact</p>
														<p class="col-sm-10 "><%= rs.getLong("contact") %></p>
													</div>
												</div>
											</div>
											
											<!-- Edit Details Modal -->
											<div class="modal fade" id="edit_personal_details" aria-hidden="true" role="dialog">
												<div class="modal-dialog modal-dialog-centered" role="document" >
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title">Personal Details</h5>
															<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body">
															<form>
																<div class="row form-row">
																	<div class="col-12 col-sm-6">
																		<div class="form-group">
																			<label>First Name</label>
																			<input type="text" class="form-control" value="John">
																		</div>
																	</div>
																	<div class="col-12 col-sm-6">
																		<div class="form-group">
																			<label>Last Name</label>
																			<input type="text"  class="form-control" value="Doe">
																		</div>
																	</div>
																	<div class="col-12">
																		<div class="form-group">
																			<label>Date of Birth</label>
																			<div class="cal-icon">
																				<input type="text" class="form-control" value="24-07-1983">
																			</div>
																		</div>
																	</div>
																	<div class="col-12 col-sm-6">
																		<div class="form-group">
																			<label>Email ID</label>
																			<input type="email" class="form-control" value="johndoe@example.com">
																		</div>
																	</div>
																	<div class="col-12 col-sm-6">
																		<div class="form-group">
																			<label>Mobile</label>
																			<input type="text" value="+1 202-555-0125" class="form-control">
																		</div>
																	</div>
																	<div class="col-12">
																		<h5 class="form-title"><span>Address</span></h5>
																	</div>
																	<div class="col-12">
																		<div class="form-group">
																		<label>Address</label>
																			<input type="text" class="form-control" value="4663 Agriculture Lane">
																		</div>
																	</div>
																	<div class="col-12 col-sm-6">
																		<div class="form-group">
																			<label>City</label>
																			<input type="text" class="form-control" value="Miami">
																		</div>
																	</div>
																	<div class="col-12 col-sm-6">
																		<div class="form-group">
																			<label>State</label>
																			<input type="text" class="form-control" value="Florida">
																		</div>
																	</div>
																	<div class="col-12 col-sm-6">
																		<div class="form-group">
																			<label>Zip Code</label>
																			<input type="text" class="form-control" value="22434">
																		</div>
																	</div>
																	<div class="col-12 col-sm-6">
																		<div class="form-group">
																			<label>Country</label>
																			<input type="text" class="form-control" value="United States">
																		</div>
																	</div>
																</div>
																<button type="submit" class="btn btn-primary btn-block">Save Changes</button>
															</form>
														</div>
													</div>
												</div>
											</div>
											<!-- /Edit Details Modal -->
											
										</div>

									
									</div>
									<!-- /Personal Details -->

								</div>
								<!-- /Personal Details Tab -->
								
								<!-- Change Password Tab -->
								<div id="password_tab" class="tab-pane fade">
								
									<div class="card">
										<div class="card-body">
											<h5 class="card-title">Change Password</h5>
											<div class="row">
												<div class="col-md-10 col-lg-6">
													<form>
														<div class="form-group">
															<label>Old Password</label>
															<input type="password" class="form-control">
														</div>
														<div class="form-group">
															<label>New Password</label>
															<input type="password" class="form-control">
														</div>
														<div class="form-group">
															<label>Confirm Password</label>
															<input type="password" class="form-control">
														</div>
														<button class="btn btn-primary" type="submit">Save Changes</button>
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- /Change Password Tab -->
								
							</div>
						</div>
					</div>
				
				</div>			
			</div>
			<!-- /Page Wrapper -->
		<% } rs.close();}%>
        </div>
		<!-- /Main Wrapper -->
		



<%@ include file="footer.jsp" %>