<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>

			<%
			HttpSession doctor = request.getSession(false);
	    	
	    	if(doctor.getAttribute("email") == null){
	    		response.sendRedirect("./login.jsp");
	  		  }
	    
			%>
			<!-- Page Content -->
			<div class="content">
				<div class="container-fluid">
					
					<div class="row">
						<div class="col-md-8 offset-md-2">
								
							<!-- Register Content -->
							<div class="account-content">
								<div class="row align-items-center justify-content-center">
									<div style="margin-bottom:5%;padding-top:5%;padding-bottom:5%;" class="col-md-12 col-lg-6 login-right">
										<div class="login-header">
											<p style="margin-left:7%;margin-top:50%;"> Are You Sure You Want To Logout ??</p>
										</div>
										
										<!-- Register Form -->
										<form action="/Treat-On-Time/logout_admin" method="post">
											<button class="btn btn-primary btn-block btn-lg login-btn" type="submit">Logout</button>
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