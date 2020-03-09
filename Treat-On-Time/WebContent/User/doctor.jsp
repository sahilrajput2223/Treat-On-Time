<%@page import="java.sql.ResultSet"%>
<%@page import="com.model.Dao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>

<%  

if(user.getAttribute("email") == null){
	response.sendRedirect("./login.jsp");
	  }


	String name = request.getParameter("name");
	Dao d = new Dao();
	ResultSet rs = d.doctor_by_hospital_name(name);
	
%>
<!-- Breadcrumb -->
			<div class="breadcrumb-bar">
				<div class="container-fluid">
					<div class="row align-items-center">
						<div class="col-md-8 col-12">
							<nav aria-label="breadcrumb" class="page-breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index-2.html">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">Hospital</li>
									<li class="breadcrumb-item active" aria-current="page">Doctors</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">Hospital Name: <%= name %></h2>
						</div>
					</div>
				</div>
			</div>
			<!-- /Breadcrumb -->
			
			<!-- Page Content -->
			<div class="content">
				<div class="container-fluid">

					<div class="row">
						
						
							<!-- Search Filter -->
							
							<!-- /Search Filter -->
							
						
						
						<div class="col-md-12 col-lg-12 col-xl-12">
							<% 
							while(rs.next()){
							 %>		
							<!-- Doctor Widget -->
							<div class="card">
								<div class="card-body">
									<div class="doctor-widget">
										<div class="doc-info-left">
											<div class="doc-info-cont">
												<p class="doc-speciality" style="color:black; font-size:20px;">Name: <%= rs.getString("name") %> </p>
												<p class="doc-speciality">Specialist: <%= rs.getString("specification") %></p>
												<p class="doc-speciality">Education: <%= rs.getString("edu") %></p>
												
												<p class="doc-speciality">Avaliable Days:</p>
												<div class="clinic-services doc-speciality">
													<% 
													String day = rs.getString("days");
													String days[] = d.makeArray(day);
													
													for(int i = 0; i < days.length ; i++){
														out.print("<span>" + days[i] + "</span>");
													}
													%>
												</div>
												
												
												<p class="doc-speciality">Avaliable Time:</p>
												<div class="clinic-services">
													<% 
													String time = rs.getString("time_slot");
													String times[] = d.makeArray(time);
													
													for(int i = 0; i < times.length ; i++){
														out.print("<span>" + times[i] + "</span>");
													}
													%>
												</div>
											</div>
										</div>
										<div class="doc-info-right">
											<div class="clini-infos">
												<ul>
													<li><i class="fas fa-envelope"></i><%= rs.getString("email") %></li>
													<li><i class="fas fa-phone"></i><%= rs.getString("contact") %></li>
												</ul>
											</div>
											<div style="margin-top:70%;" class="clinic-booking">
												
												<form method="POST" action="./book_doctor.jsp">
												<input type="hidden" name="d_email" value="<%= rs.getString("email")%>">
													<button class="btn btn-primary	">Book Appointment</button>
												</form>
												
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- /Doctor Widget -->

							<% } rs.close(); %>
						</div>
					</div>

				</div>

			</div>		
			<!-- /Page Content -->
   

<%@ include file="footer.jsp"%>