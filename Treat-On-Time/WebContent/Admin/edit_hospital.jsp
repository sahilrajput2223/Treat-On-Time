<%@page import="java.sql.ResultSet"%>
<%@page import="com.model.Dao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file='header.jsp'  %>

<%

HttpSession doctor = request.getSession(false);

if(doctor.getAttribute("email") == null){
	response.sendRedirect("./login.jsp");
	  }

	int userID =Integer.parseInt(request.getParameter("H_id")); 
	Dao d = new Dao(); 
	ResultSet rs = d.hospital_selectById(userID);
	
	while(rs.next()){		
		String fesilities = rs.getString(11);
		String fesilitie[] = d.makeArray(fesilities);
		int f_len = fesilitie.length;
		
	
%>
					<div class="row">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">Add Hospital</h4>
								</div>
								<div class="card-body">
									<form action="/Treat-On-Time/update_hospital" method="POST">
										<input type="hidden" name="h_id" value="<%= rs.getInt(1) %>" >
										<div class="form-group row">
											<label class="col-form-label col-md-2">Name: </label>
											<div class="col-md-10">
												<input type="text" name="name" readonly value="<%= rs.getString("name") %>" class="form-control">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-md-2">Email: </label>
											<div class="col-md-10">
												<input type="email" name="email" value="<%= rs.getString("email") %>" class="form-control">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-md-2">Contact: </label>
											<div class="col-md-10">
												<input type="text" name="contact" value="<%= rs.getString("contact") %>" class="form-control">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-md-2">Street: </label>
											<div class="col-md-10">
												<input type="text" name="street" class="form-control" value="<%= rs.getString("street") %>">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-md-2">Area: </label>
											<div class="col-md-10">
												<input type="text" name="area" class="form-control" value="<%= rs.getString("area") %>">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-md-2">City: </label>
											<div class="col-md-10">
												<input type="text" name="city" class="form-control" value="<%= rs.getString("city") %>">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-md-2">State: </label>
											<div class="col-md-10">
												<input type="text" name="state" class="form-control" value="<%= rs.getString("state") %>">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label  col-md-2">Country: </label>
											<div class="col-md-10">
												<input type="text" name="country" value="<%= rs.getString("country") %>" class="form-control">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-md-2">Bio: </label>
											<div class="col-md-10">
												<textarea rows="5" cols="5" name="bio" class="form-control"  placeholder="Enter text here"><%= rs.getString("bio") %></textarea>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-md-2">Facilities</label>
											<div class="col-md-5">
												<div class="checkbox">
													<label>
														<input type="checkbox" name="facilities" <% for(int i = 0 ; i < f_len ; i++){ if(fesilitie[i].equalsIgnoreCase("Birth Center")){ out.print("checked"); } }  %> value="Birth Center"> Birth Center
													</label></br>
													<label>
														<input type="checkbox" name="facilities" <% for(int i = 0 ; i < f_len ; i++){ if(fesilitie[i].equalsIgnoreCase("Blood Bank")){ out.print("checked"); } }  %> value="Blood Bank"> Blood Bank
													</label>
													</br>
													<label>
														<input type="checkbox" name="facilities" <% for(int i = 0 ; i < f_len ; i++){ if(fesilitie[i].equalsIgnoreCase("Dialysis Center")){ out.print("checked"); } }  %> value="Dialysis Center"> Dialysis Center
													</label>
													</br>
													<label>
														<input type="checkbox" name="facilities" <% for(int i = 0 ; i < f_len ; i++){ if(fesilitie[i].equalsIgnoreCase("Canser Center")){ out.print("checked"); } }  %> value="Canser Center"> Canser Center
													</label>
													</br>
													<label>
														<input type="checkbox" name="facilities" <% for(int i = 0 ; i < f_len ; i++){ if(fesilitie[i].equalsIgnoreCase("Imaging and radiology center")){ out.print("checked"); } }  %> value="Imaging and radiology center"> Imaging and radiology center
													</label>
													</br>
													<label>
														<input type="checkbox" name="facilities" <% for(int i = 0 ; i < f_len ; i++){ if(fesilitie[i].equalsIgnoreCase("Mental health")){ out.print("checked"); } }  %> value="Mental health"> Mental health and addiction treatment center
													</label>
													</br>
												</div>
											</div>
											<div class="col-md-5">
												<div class="checkbox">
													<label>
														<input type="checkbox" name="facilities" <% for(int i = 0 ; i < f_len ; i++){ if(fesilitie[i].equalsIgnoreCase("Nursing Home")){ out.print("checked"); } }  %> value="Nursing Home"> Nursing Home
													</label>
													</br>
													<label>
														<input type="checkbox" name="facilities" <% for(int i = 0 ; i < f_len ; i++){ if(fesilitie[i].equalsIgnoreCase("OPD")){ out.print("checked"); } }  %> value="OPD"> OPD 
													</label>
													</br>	
													<label>
														<input type="checkbox" name="facilities" <% for(int i = 0 ; i < f_len ; i++){ if(fesilitie[i].equalsIgnoreCase("Dental Facility")){ out.print("checked"); } }  %> value="Dental Facility"> Dental Facility
													</label>
													</br>
													<label>
														<input type="checkbox" name="facilities" <% for(int i = 0 ; i < f_len ; i++){ if(fesilitie[i].equalsIgnoreCase("Physiotherapy")){ out.print("checked"); } }  %> value="Physiotherapy"> Physiotherapy
													</label>
													</br>
													<label>
														<input type="checkbox" name="facilities" <% for(int i = 0 ; i < f_len ; i++){ if(fesilitie[i].equalsIgnoreCase("Laboratory Service")){ out.print("checked"); } }  %> value="Laboratory Service"> Laboratory Service
													</label>
													</br>
													<label>
														<input type="checkbox" name="facilities" <% for(int i = 0 ; i < f_len ; i++){ if(fesilitie[i].equalsIgnoreCase("Ambulance Service")){ out.print("checked"); } }  %> value="Ambulance Service"> Ambulance Service
													</label>
													</br>
												</div>
											</div>
										
										</div>
											<div class="form-group row">
												<div class="col-md-1">
												</div>
												<div class="col-md-4">
													<input type="submit" style="width:100%" class="btn btn-primary" value="Update">
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
		
        		<% }rs.close(); %>
				
				</div>			
			</div>
			<!-- /Page Wrapper -->
		
        </div>
		<!-- /Main Wrapper -->
		
<%@ include file="footer.jsp" %>	