<%@page import="java.sql.ResultSet"%>
<%@page import="com.model.Dao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Doccure - Dashboard</title>
		<!-- Datatables CSS -->
		<link rel="stylesheet" href="assets/plugins/datatables/datatables.min.css">
		
		<!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
		
		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
		
		<!-- Feathericon CSS -->
        <link rel="stylesheet" href="assets/css/feathericon.min.css">
		
		<link rel="stylesheet" href="assets/plugins/morris/morris.css">
		
		<!-- Main CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
		
		<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.min.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->
    </head>
    <body>
					<% 
	
					HttpSession doctor = request.getSession(false);
			    	
			    	if(doctor.getAttribute("email") == null){
			    		response.sendRedirect("./login.jsp");
			  		  }
			    	else{
						String email = request.getParameter("email");
						Dao d = new Dao();
						ResultSet rs = d.hospital_select();
						ResultSet rs_d = d.doctor_by_email(email);
						
						while(rs_d.next()){
							
							String[] days = d.makeArray(rs_d.getString("days"));	
							int d_len = days.length;
							
							String[] times = d.makeArray(rs_d.getString("time_slot"));	
							int t_len = times.length;
							
					%>
			
	
    <!-- Page Wrapper -->
            <div class="container">
			
                <div class="container">
							<div class="row">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">Doctor Edit Profile ...</h4>
									<p> Hi,  <%= rs_d.getString("name") %></p>
								</div>
								<div class="card-body">
									<form action="/Treat-On-Time/update_doctor" method="POST">
										</br>
									
										<div class="form-group row">
											<label class="col-form-label col-md-2">Name: </label>
											<div class="col-md-10">
												<input type="text" name="name" readonly value="<%= rs_d.getString("name") %>" class="form-control">
											</div>
										</div>
											</br>
										
										<div class="form-group row">
											<label class="col-form-label col-md-2">Hospital Name: </label>
											<div class="col-md-10">
												<select class="form-control" name="h_name">
													<% while(rs.next()){ %>
													<option value="<%= rs.getString("name") %>" <% if(rs.getString("name").equalsIgnoreCase(rs_d.getString("h_name"))) { out.print("selected"); }  %> >
														<%= rs.getString("name") %>
													</option>
													<% }rs.close(); %>
												</select>
											</div>
										</div>
											</br>
										
										<div class="form-group row">
											<label class="col-form-label col-md-2">Contact: </label>
											<div class="col-md-10">
												<input type="text" name="contact" class="form-control" value="<%= rs_d.getString("contact") %>">
											</div>
										</div>
											</br>
										
											<div class="form-group row">
											<label class="col-form-label col-md-2">Email: </label>
											<div class="col-md-10">
												<input type="email" name="email" class="form-control" value="<%= rs_d.getString("email") %>" readonly>
											</div>
										</div>
											</br>
										<div class="form-group row">
											<label class="col-form-label col-md-2">Specialization: </label>
											<div class="col-md-10">
												<input type="email" readonly class="form-control" value="<%= rs_d.getString("specification") %>" readonly>
											</div>
										</div>
											</br>
										<div class="form-group row">
											<label class="col-form-label col-md-2">Education: </label>
											<div class="col-md-10">
												<input type="text" name="education" readonly class="form-control" value="<%= rs_d.getString("edu") %>">
											</div>
										</div>
											</br>
										
										<div class="form-group row">
											<label class="col-form-label col-md-2">Days Availble:</label>
											<div class="col-md-5">
												<div class="checkbox">
													<label>
														<input type="checkbox" name="days" <% for(int i = 0 ; i < d_len ; i++){ if(days[i].equalsIgnoreCase("Sunday")){ out.print("checked"); } }  %> value="Sunday"> Sunday
													</label></br>
													<label>
														<input type="checkbox" name="days" <% for(int i = 0 ; i < d_len ; i++){ if(days[i].equalsIgnoreCase("Monday")){ out.print("checked"); } }  %> value="Monday"> Monday
													</label></br>
													<label>
														<input type="checkbox" name="days" <% for(int i = 0 ; i < d_len ; i++){ if(days[i].equalsIgnoreCase("Tuesday")){ out.print("checked"); } }  %> value="Tuesday"> Tuesday
													</label></br>
													<label>
														<input type="checkbox" name="days" <% for(int i = 0 ; i < d_len ; i++){ if(days[i].equalsIgnoreCase("Wednesday")){ out.print("checked"); } }  %> value="Wednesday"> Wednesday
													</label></br>
													
												</div>
											</div>
											<div class="col-md-5">
												<div class="checkbox">
													<label>
														<input type="checkbox" name="days" <% for(int i = 0 ; i < d_len ; i++){ if(days[i].equalsIgnoreCase("Thursday")){ out.print("checked"); } }  %> value="Thursday"> Thursday
													</label></br>
													<label>
														<input type="checkbox" name="days" <% for(int i = 0 ; i < d_len ; i++){ if(days[i].equalsIgnoreCase("Friday")){ out.print("checked"); } }  %> value="Friday"> Friday
													</label></br>
													<label>
														<input type="checkbox" name="days" <% for(int i = 0 ; i < d_len ; i++){ if(days[i].equalsIgnoreCase("Saturday")){ out.print("checked"); } }  %> value="Saturday"> Saturday 
													</label></br>
													
												</div>
											</div>
											</div>
												</br>
											
											<div class="form-group row">
											<label class="col-form-label col-md-2">Time Availble:</label>
											<div class="col-md-3">
												<div class="checkbox">
													<label>
														<input type="checkbox" name="time" <% for(int i = 0 ; i < t_len ; i++){ if(times[i].equalsIgnoreCase("09:00 AM To 12:00 PM")){ out.print("checked"); } }  %> value="09:00 AM To 12:00 PM"> 09:00 AM To 12:00 PM
													</label></br>
												</div>
											</div>
											<div class="col-md-3">
												<div class="checkbox">
													<label>
														<input type="checkbox" name="time" <% for(int i = 0 ; i < t_len ; i++){ if(times[i].equalsIgnoreCase("01:00 PM To 04:00 PM")){ out.print("checked"); } }  %> value="01:00 PM To 04:00 PM"> 01:00 PM To 04:00 PM 
													</label></br>
												</div>
											</div>
											<div class="col-md-3">
												<div class="checkbox">
													<label>
														<input type="checkbox" name="time" <% for(int i = 0 ; i < t_len ; i++){ if(times[i].equalsIgnoreCase("05:00 PM To 09:00 PM")){ out.print("checked"); } }  %> value="05:00 PM To 09:00 PM"> 05:00 PM To 09:00 PM
													</label></br>
												</div>
											</div>
											
											</div>
											</br>
												
										
										
										<div class="form-group row">
											<label class="col-form-label col-md-2">Security Question: </label>
											<div class="col-md-10">
												<label>What's Your Nickname ??</label>
												<input type="text" name="password_reset" value="<%= rs_d.getString("password_reset") %>" class="form-control">
											</div>
										</div>
										
										</div>
											<div class="form-group row">
												<div class="col-md-2">
												</div>
												<div class="col-md-4">
													<input type="submit" style="width:100%" class="btn btn-primary" value="Update">
												</div>
												<div class="col-md-4">
													<input style="width:100%" type="reset" class="btn btn-danger" value="Reset">
												</div>
												<div class="col-md-2">
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
		
        		<% }rs_d.close(); }%>
				
				</div>			
			</div>
			<!-- /Page Wrapper -->
		
        </div>
		<!-- /Main Wrapper -->
		
<%@ include file="footer.jsp" %>	