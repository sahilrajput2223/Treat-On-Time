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
						
						Dao d = new Dao();
						ResultSet rs = d.hospital_select();
						
					%>
			
	
    <!-- Page Wrapper -->
            <div class="container">
			
                <div class="container">
							<div class="row">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">Doctor Signup ...</h4>
									<p> Already Have account, please <a href="./login.jsp">Login ...</a></p>
								</div>
								<div class="card-body">
									<form action="/Treat-On-Time/insert_doctor" method="POST">
										</br>
									
										<div class="form-group row">
											<label class="col-form-label col-md-2">Name: </label>
											<div class="col-md-10">
												<input type="text" name="name" class="form-control">
											</div>
										</div>
											</br>
										
										<div class="form-group row">
											<label class="col-form-label col-md-2">Hospital Name: </label>
											<div class="col-md-10">
												<select class="form-control" name="h_name">
													<% while(rs.next()){ %>
													<option value="<%= rs.getString("name") %>">
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
												<input type="text" name="contact" class="form-control">
											</div>
										</div>
											</br>
										
											<div class="form-group row">
											<label class="col-form-label col-md-2">Email: </label>
											<div class="col-md-10">
												<input type="email" name="email" class="form-control">
											</div>
										</div>
											</br>
										
										<div class="form-group row">
											<label class="col-form-label col-md-2">Education: </label>
											<div class="col-md-10">
												<input type="text" name="education" class="form-control">
											</div>
										</div>
											</br>
										
										<div class="form-group row">
											<label class="col-form-label col-md-2">Days Availble:</label>
											<div class="col-md-5">
												<div class="checkbox">
													<label>
														<input type="checkbox" name="days" value="Sunday"> Sunday
													</label></br>
													<label>
														<input type="checkbox" name="days" value="Monday"> Monday
													</label></br>
													<label>
														<input type="checkbox" name="days" value="Tuesday"> Tuesday
													</label></br>
													<label>
														<input type="checkbox" name="days" value="Wednesday"> Wednesday
													</label></br>
													
												</div>
											</div>
											<div class="col-md-5">
												<div class="checkbox">
													<label>
														<input type="checkbox" name="days" value="Thursday"> Thursday
													</label></br>
													<label>
														<input type="checkbox" name="days" value="Friday"> Friday
													</label></br>
													<label>
														<input type="checkbox" name="days" value="Saturday"> Saturday 
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
														<input type="checkbox" name="time" value="09:00 AM To 12:00 PM"> 09:00 AM To 12:00 PM
													</label></br>
												</div>
											</div>
											<div class="col-md-3">
												<div class="checkbox">
													<label>
														<input type="checkbox" name="time" value="01:00 PM To 04:00 PM"> 01:00 PM To 04:00 PM 
													</label></br>
												</div>
											</div>
											<div class="col-md-3">
												<div class="checkbox">
													<label>
														<input type="checkbox" name="time" value="05:00 PM To 09:00 PM"> 05:00 PM To 09:00 PM
													</label></br>
												</div>
											</div>
											
											</div>
											</br>
											
											<div class="form-group row">
											<label class="col-form-label col-md-2">Specification:</label>
											<div class="col-md-3">
												<div class="radiobox">
													<label>
														<input type="radio" name="specification" value="Podiatrist"> Podiatrist
													</label></br>
															<label>
														<input type="radio" name="specification" value="General Practitioner"> General Practitioner
													</label></br>
													<label>
														<input type="radio" name="specification" value="Pediatrician"> Pediatrician
													</label></br>
													<label>
														<input type="radio" name="specification" value="Endocrinologist"> Endocrinologist
													</label></br>
													<label>
														<input type="radio" name="specification" value="Neurologist"> Neurologist
													</label></br>
													<label>
														<input type="radio" name="specification" value="Rheumatologist"> Rheumatologist
													</label></br>
													<label>
														<input type="radio" name="specification" value="Immunologist"> Immunologist
													</label></br>
													
											
												</div>
											</div>
											
											<div class="col-md-3">
												<div class="radiobox">
													<label>
														<input type="radio" name="specification" value="Psychiatrist"> Psychiatrist
													</label></br>
															<label>
														<input type="radio" name="specification" value="Nephrologist"> Nephrologist
													</label></br>
													<label>
														<input type="radio" name="specification" value="OB/GYN"> OB/GYN
													</label></br>
													<label>
														<input type="radio" name="specification" value="Pulmonologist"> Pulmonologist
													</label></br>
													<label>
														<input type="radio" name="specification" value="Surgeon"> Surgeon
													</label></br>
													<label>
														<input type="radio" name="specification" value="Emergency Physician"> Emergency Physician
													</label></br>
													<label>
														<input type="radio" name="specification" value="Ophthalmologist"> Ophthalmologist
													</label></br>
													
											
												</div>
											</div>
											
											<div class="col-md-3">
												<div class="radiobox">
													<label>
														<input type="radio" name="specification" value="Oncologist"> Oncologist
													</label></br>
															<label>
														<input type="radio" name="specification" value="Urologist"> Urologist
													</label></br>
													<label>
														<input type="radio" name="specification" value="Otolaryngologist"> Otolaryngologist
													</label></br>
													<label>
														<input type="radio" name="specification" value="Anesthesiologist"> Anesthesiologist
													</label></br>
													<label>
														<input type="radio" name="specification" value="Dermatologist"> Dermatologist
													</label></br>
													<label>
														<input type="radio" name="specification" value="Radiologist"> Radiologist
													</label></br>
													<label>
														<input type="radio" name="specification" value="Cardiologist"> Cardiologist
													</label></br>
													
											
												</div>
											</div>
											
											</div>
											
										
										<div class="form-group row">
											<label class="col-form-label col-md-2">Password: </label>
											<div class="col-md-10">
												<input type="password" name="password" class="form-control">
											</div>
										</div>
										
										<div class="form-group row">
											<label class="col-form-label col-md-2">Confirm Password: </label>
											<div class="col-md-10">
												<input type="password" name="c_password" class="form-control">
											</div>
										</div>
										
										<div class="form-group row">
											<label class="col-form-label col-md-2">Security Question: </label>
											<div class="col-md-10">
												<input type="text" name="password_reset" placeholder="What's Your Nickname ??" class="form-control">
											</div>
										</div>
										
										</div>
											<div class="form-group row">
												<div class="col-md-2">
												</div>
												<div class="col-md-4">
													<input type="submit" style="width:100%" class="btn btn-primary" value="Submit">
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
		
        		
				
				</div>			
			</div>
			<!-- /Page Wrapper -->
		
        </div>
		<!-- /Main Wrapper -->
		
<%@ include file="footer.jsp" %>	