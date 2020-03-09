<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>

			
			<!-- Page Content -->
			<div class="content">
				<div class="container-fluid">
					
					<div class="row">
						<div class="col-md-8 offset-md-2">
								
							<!-- Register Content -->
							<div class="account-content">
								<div class="row align-items-center justify-content-center">
									<div class="col-md-7 col-lg-6 login-left">
										<img src="assets/img/login-banner.png" class="img-fluid" alt="Doccure Register">	
									</div>
									<div style="margin-bottom:5%;" class="col-md-12 col-lg-6 login-right">
										<div class="login-header">
											<h3>Patient Login </h3>
										</div>
										
										<!-- Register Form -->
										<form action="/Treat-On-Time/login_user" method="post">
											<div class="form-group form-focus">
												<input type="email" name="email" class="form-control floating">
												<label class="focus-label">Email</label>
											</div>
											<div class="form-group form-focus">
												<input type="password" name="password" class="form-control floating">
												<label class="focus-label">Password</label>
											</div>
											<button class="btn btn-primary btn-block btn-lg login-btn" type="submit">Login</button>
											
											<div style="margin-top:5%;" class="text-right">
												<a class="forgot-link" href="signup.jsp">If you don't have account, create one ! </a>
											</div>
											<div style="margin-top:5%;" class="text-right">
												<a class="forgot-link" href="forgot_password.jsp">Forgot Password, Click Here ..</a>
											</div>
										</form>
										<!-- /Register Form -->
										
									</div>
								</div>
							</div>
							<!-- /Register Content -->
								
						</div>
					</div>

				</div>

			</div>		
			<!-- /Page Content -->
   
<%@ include file="footer.jsp"%>