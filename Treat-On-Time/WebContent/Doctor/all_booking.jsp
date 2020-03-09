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
			    	else{		    
						String d_email = doctor.getAttribute("email").toString();
						Dao d = new Dao();
						ResultSet rs = d.all_booking_by_d_email(d_email);
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
													<th>Patient Name</th>
													<th>Patient Email</th>
													<th>Day</th>
													<th>Time</th>
												</tr>
											</thead>
											<tbody style="border:1px solid gray">		
											<% while(rs.next()){ %>
												<tr >
													<td style="border:1px solid gray"> <%= k  %> </td>
													<td style="border:1px solid gray"> <%= rs.getString("p_name") %> </td>
													<td style="border:1px solid gray"> <%= rs.getString("p_email") %> </td>
													<td style="border:1px solid gray"> <%= rs.getString("day") %> </td>
													<td style="border:1px solid gray"> <%= rs.getString("time") %> </td>
											<% k++; } rs.close(); }%>	
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