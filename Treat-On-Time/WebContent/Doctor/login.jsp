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
			
	
    <!-- Page Wrapper -->
            <div class="container">
			
                <div class="container">
							<div class="row">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">Doctor Login ...</h4>
									<p> If You Don't Have account, please <a href="./signup.jsp">SignUp ...</a></p>
								</div>
								<div class="card-body">
									<form action="/Treat-On-Time/login_doctor" method="POST">
										</br>
									
										
											<div class="form-group row">
											<label class="col-form-label col-md-2">Email: </label>
											<div class="col-md-10">
												<input type="email" name="email" class="form-control">
											</div>
										</div>
											</br>
									
										<div class="form-group row">
											<label class="col-form-label col-md-2">Password: </label>
											<div class="col-md-10">
												<input type="password" name="password" class="form-control">
											</div>
										</div>
											</br>
										
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
									
									<p style="margin-left:2%;">Forgot Password ?? No Problem, <a href="./forgot_password.jsp">Click Here ...</a></p>
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