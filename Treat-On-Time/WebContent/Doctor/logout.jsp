<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file='header.jsp'  %>
			
					<!-- Page Header -->
					<div class="page-header">
						<div class="row">
							<div class="col-sm-12">
								<h3 class="page-title">Welcome Doctor!</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item ">Dashboard</li>
									<li class="breadcrumb-item active">Logout</li>
								</ul>
							</div>
						</div>
						
						<div class="row container">
							<div class="col-md-3">
							
							</div>
							<div class="col-md-6">
								<div style="margin-top:25%;background-color:White; padding-left:15%; padding-top:5%;padding-bottom: 5%;">
									<p style="font-size:20px;">Are You Sure You Want To Logout ??</p>
								<form method="POST" action="/Treat-On-Time/logout_doctor">
								
								<button class="btn btn-primary" style="width:50%;margin-left:10%;">Logout</button>
								</form>
								</div>
								
							</div>
							<div class="col-md-3">
							
							</div>
							
						</div>
						
					</div>
					<!-- /Page Header -->
									</div>
					</div>
					
				</div>			
			</div>
			<!-- /Page Wrapper -->
		
        </div>
		<!-- /Main Wrapper -->
		
		<%@ include file="footer.jsp" %>