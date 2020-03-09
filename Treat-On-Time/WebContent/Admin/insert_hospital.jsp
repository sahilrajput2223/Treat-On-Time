<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file='header.jsp'  %>
				
				<%
				HttpSession doctor = request.getSession(false);
		    	
		    	if(doctor.getAttribute("email") == null){
		    		response.sendRedirect("./login.jsp");
		  		  }
		    
				%>
					<div class="row">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">Add Hospital</h4>
								</div>
								<div class="card-body">
									<form action="/Treat-On-Time/insert_hospital" method="POST">
										<div class="form-group row">
											<label class="col-form-label col-md-2">Name: </label>
											<div class="col-md-10">
												<input type="text" name="name" class="form-control">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-md-2">Email: </label>
											<div class="col-md-10">
												<input type="email" name="email" class="form-control">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-md-2">Contact: </label>
											<div class="col-md-10">
												<input type="text" name="contact" class="form-control">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-md-2">Street: </label>
											<div class="col-md-10">
												<input type="text" name="street" class="form-control">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-md-2">Area: </label>
											<div class="col-md-10">
												<input type="text" name="area" class="form-control">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-md-2">City: </label>
											<div class="col-md-10">
												<input type="text" name="city" class="form-control">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-md-2">State: </label>
											<div class="col-md-10">
												<input type="text" name="state" class="form-control">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label  col-md-2">Country: </label>
											<div class="col-md-10">
												<input type="text" name="country" class="form-control">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-md-2">Bio: </label>
											<div class="col-md-10">
												<textarea rows="5" cols="5" name="bio" class="form-control" placeholder="Enter text here"></textarea>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-md-2">Facilities</label>
											<div class="col-md-5">
												<div class="checkbox">
													<label>
														<input type="checkbox" name="facilities" value="Birth Center"> Birth Center
													</label></br>
													<label>
														<input type="checkbox" name="facilities" value="Blood Bank"> Blood Bank
													</label>
													</br>
													<label>
														<input type="checkbox" name="facilities" value="Dialysis Center"> Dialysis Center
													</label>
													</br>
													<label>
														<input type="checkbox" name="facilities" value="Canser Center"> Canser Center
													</label>
													</br>
													<label>
														<input type="checkbox" name="facilities" value="Imaging and radiology center"> Imaging and radiology center
													</label>
													</br>
													<label>
														<input type="checkbox" name="facilities" value="Mental health"> Mental health
													</label>
													</br>
												</div>
											</div>
											<div class="col-md-5">
												<div class="checkbox">
													<label>
														<input type="checkbox" name="facilities" value="Nursing Home"> Nursing Home
													</label>
													</br>
													<label>
														<input type="checkbox" name="facilities" value="OPD"> OPD 
													</label>
													</br>	
													<label>
														<input type="checkbox" name="facilities" value="Dental Facility"> Dental Facility
													</label>
													</br>
													<label>
														<input type="checkbox" name="facilities" value="Physiotherapy"> Physiotherapy
													</label>
													</br>
													<label>
														<input type="checkbox" name="facilities" value="Laboratory Service"> Laboratory Service
													</label>
													</br>
													<label>
														<input type="checkbox" name="facilities" value="Ambulance Service"> Ambulance Service
													</label>
													</br>
												</div>
											</div>
										
										</div>
											<div class="form-group row">
												<div class="col-md-1">
												</div>
												<div class="col-md-4">
													<input type="submit" style="width:100%" class="btn btn-primary" value="Submit">
												</div>
												<div class="col-md-4">
													<input style="width:100%" type="reset" class="btn btn-danger" value="Reset">
												</div>
												<div class="col-md-1">
												</div>
												
											</div>
										
									</form>
								</div>
							</div>
						</div>
					</div>
				
				</div>			
			</div>
			<!-- /Main Wrapper -->
		
        		
				
				</div>			
			</div>
			<!-- /Page Wrapper -->
		
        </div>
		<!-- /Main Wrapper -->
		
<%@ include file="footer.jsp" %>	