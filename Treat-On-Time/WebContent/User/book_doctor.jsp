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
else{
	String d_email = request.getParameter("d_email");
	String p_email = user.getAttribute("email").toString();
	
	Dao d = new Dao();
	
	ResultSet rs_d = d.doctor_by_email(d_email);
	ResultSet rs_p = d.user_profile_by_email(p_email);

%>

			<!-- Breadcrumb -->
			<div class="breadcrumb-bar">
				<div class="container-fluid">
					<div class="row align-items-center">
						<div class="col-md-12 col-12">
							<nav aria-label="breadcrumb" class="page-breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index-2.html">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">Book Doctor</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">Book Doctor</h2>
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
									<% while(rs_d.next()){
										while(rs_p.next()){
										%>
									
									<!-- Profile Settings Form -->
									<form method="post" action="/Treat-On-Time/booking">
										<div class="row form-row">
											<div class="col-12 col-md-12">
												<div class="form-group">
													<div class="change-avatar">
													</div>
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Doctor Name</label>
													<input type="text" name="d_name" value="<%= rs_d.getString("name") %>" readonly class="form-control">
												</div>
											</div>		
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Doctor Email</label>
													<input type="text" name="d_email" value="<%= rs_d.getString("email") %>" readonly class="form-control">
												</div>
											</div>												
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Patient Name</label>
													<input type="text" name="p_name" value="<%= rs_p.getString("name") %>" readonly class="form-control">
												</div>
											</div>		
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Patient Email</label>
													<input type="text" name="p_email" value="<%= rs_p.getString("email") %>" readonly class="form-control">
												</div>
											</div>		
											
											
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Avaliable Days</label>
													
													<%  
														String day = rs_d.getString("days");
														String days[] = d.makeArray(day);
														
														for (int i = 0 ; i < days.length ; i++){
															out.println("<input type='radio' value="+days[i]+ " name='day_book'> " + days[i]);
														}
													%>
													
												</div>
											</div>
											
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Avaliable Time</label>
													
													<%  
														String time = rs_d.getString("time_slot");
														String times[] = d.makeArray(time);
														
														for (int i = 0 ; i < times.length ; i++){
															out.println("<input type='radio' value="+ times[i]+" name='time_book' > " + times[i]);
														}
													%>
													
												</div>
											</div>
											
											
											<div class="row submit-section">
												<div class="col-md-6">
													<button style="wdith:100%;" type="submit" class="btn btn-primary submit-btn">Submit</button>
												</div>
												<div class="col-md-6">
													<input style="wdith:100%;" type="reset" class="btn btn-danger submit-btn" value="Reset">
												</div>
											</div>
										</div>
										
									</form>
									<!-- /Profile Settings Form -->
									<% }}rs_d.close();rs_p.close(); }%>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>		
			<!-- /Page Content -->

			
<%@ include file="footer.jsp" %>			