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
	    	int k = 1;
	    	Dao d = new Dao();
	    	ResultSet rs = d.all_feedback();
	    	
	    
			%>
					<!-- Page Header -->
					<div class="page-header">
						<div class="row">
							<div class="col-sm-12">
								<h3 class="page-title">Welcome Admin!</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item active">Dashboard</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					<div class="row">
						<div class="col-md-12">
						
							<!-- Recent Orders -->
							<div class="card card-table">
								<div class="card-header">
									<h4 class="card-title">Feedback List</h4>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-hover table-center mb-0">
											<thead>
												<tr>
													<th>No.</th>
													<th>Patient Name</th>
													<th>Feedback</th>
													<th>Feedback Time</th>
												</tr>
											</thead>
											<tbody>
											<%  while(rs.next()){ %>
												<tr>
													
													<td>
														<h2 class="table-avatar">
															<%= k %>
														</h2>
													</td>
													
													<td>
														<h2 class="table-avatar">
															<%= rs.getString("p_email") %>
														</h2>
													</td>
													<td>
														<h2 class="table-avatar">
															<%= rs.getString("content") %>
														</h2>
													</td>
													
													<td>
														<div class="table-avatar">
															<%= rs.getString("date_to_upload") %>
														</div>
													</td>
													
												</tr>
												<% k++;}rs.close(); %>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!-- /Recent Orders -->
							
						</div>
					</div>
					
				</div>			
			</div>
			<!-- /Page Wrapper -->
		
        </div>
		<!-- /Main Wrapper -->
		
		
<%@ include file="footer.jsp" %>	