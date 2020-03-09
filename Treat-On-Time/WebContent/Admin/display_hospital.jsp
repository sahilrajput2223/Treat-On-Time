<%@page import="java.sql.ResultSet"%>
<%@page import="com.model.Dao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file='header.jsp'  %>


			
					<!-- Page Header -->
					<div class="page-header">
						<div class="row">
							<div class="col">
								<h3 class="page-title">Hospital</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
									<li class="breadcrumb-item active">All Hospital</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					<% 
					HttpSession doctor = request.getSession(false);
			    	
			    	if(doctor.getAttribute("email") == null){
			    		response.sendRedirect("./login.jsp");
			  		  }
			    
						Dao d = new Dao();
						ResultSet rs = d.hospital_select();
						int k = 1;
					%>
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-body">
									<div class="table-responsive">
										<table style="border:1px solid gray" class="table table-nowrap mb-0">
											<thead style="border:1px solid gray">
												<tr style="border:1px solid gray">
													<th>No.</th>
													<th>Name</th>
													<th>Contact</th>
													<th>Email</th>
													<th>Facilities</th>
													<th>Street</th>
													<th>Area</th>
													<th>City</th>
													<th>State</th>
													<th>Country</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody style="border:1px solid gray">		
											<% while(rs.next()){ %>
												<tr >
													<td style="border:1px solid gray"> <%= k  %> </td>
													<td style="border:1px solid gray"> <%= rs.getString(2) %> </td>
													<td style="border:1px solid gray"> <%= rs.getLong(9) %> </td>
													<td style="border:1px solid gray"> <%= rs.getString(10) %> </td>
													<td style="border:1px solid gray"><pre> <% String a[] = d.makeArray( rs.getString(11)); 
														for(int i = 0; i < a.length; i++) {
															out.println(a[i]);
															
														} 
														%> </pre></td>
													<td style="border:1px solid gray"> <%= rs.getString(3) %> </td>
													<td style="border:1px solid gray"> <%= rs.getString(4) %> </td>
													<td style="border:1px solid gray"> <%= rs.getString(5) %> </td>
													<td style="border:1px solid gray"> <%= rs.getString(6) %> </td>
													<td style="border:1px solid gray"> <%= rs.getString(7) %> </td>
													<td style="border:1px solid gray">
														<form action="edit_hospital.jsp" method="post">
															<input type="hidden" name="H_id" value="<%= rs.getInt("id") %>" >
																<button>Edit</button>
															</form>
														<form action="/Treat-On-Time/delete_hospital" method="post">
																<input type="hidden" name="H_id" value="<%= rs.getInt("id") %>" >
																	<button>Delete</button>
														</form>
													</td>
											
											<% k++; } rs.close();%>	
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				
				</div>			
			</div>
			<!-- /Main Wrapper -->
		
        </div>
		<!-- /Main Wrapper -->
		
	
		
<%@ include file="footer.jsp" %>	