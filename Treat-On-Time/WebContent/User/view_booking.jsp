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

	int k = 1;
	String email = user.getAttribute("email").toString();
	Dao d = new Dao();
	ResultSet rs = d.booking_user_profile_by_email(email);
	
%>
			<!-- Breadcrumb -->
			<div class="breadcrumb-bar">
				<div class="container-fluid">
					<div class="row align-items-center">
						<div class="col-md-12 col-12">
							<nav aria-label="breadcrumb" class="page-breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index-2.html">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">Booking</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">All Booking</h2>
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
														<div class="table-responsive">
										<table style="border:1px solid gray" class="table table-nowrap mb-0">
											<thead style="border:1px solid gray">
												<tr style="border:1px solid gray">
													<th>No.</th>
													<th>Doctor Name</th>
													<th>Doctor Email</th>
													<th>Patient Name</th>
													<th>Patient Email</th>
													<th>Booking Day</th>
													<th>Booking Time</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody style="border:1px solid gray">		
											<% while(rs.next()){ %>
												<tr >
													<td style="border:1px solid gray"> <%= k  %> </td>
													<td style="border:1px solid gray"> <%= rs.getString("d_name") %> </td>
													<td style="border:1px solid gray"> <%= rs.getString("d_email") %> </td>
													<td style="border:1px solid gray"> <%= rs.getString("p_name") %> </td>
													<td style="border:1px solid gray"> <%= rs.getString("p_email") %> </td>
													<td style="border:1px solid gray"> <%= rs.getString("day") %> </td>
													<td style="border:1px solid gray"> <%= rs.getString("time") %> </td>
													<td style="border:1px solid gray">
														<form action="/Treat-On-Time/delete_booking" method="post">
																<input type="hidden" name="b_id" value="<%= rs.getInt("id") %>" >
																	<button>Delete</button>
														</form>
													</td>
											
											<% k++; } rs.close();%>	
											</tbody>
										</table>
									</div>
		<!-- /Profile Settings Form -->
									
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>		
			<!-- /Page Content -->

			
<%@ include file="footer.jsp" %>			