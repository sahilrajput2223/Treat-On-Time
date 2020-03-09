<%@page import="java.sql.ResultSet"%>
<%@page import="com.model.Dao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>

			<!-- Home Banner -->
			<section class="section section-search">
				<div class="container-fluid">
					<div class="banner-wrapper">
						<div class="banner-header text-center">
							<h1>Make an Appointment</h1>
							<p>Discover the best doctors, clinic & hospital the city nearest to you.</p>
						</div>
                         
						
					</div>
				</div>
			</section>
			<!-- /Home Banner -->
			  
			<% 

//HttpSession user = request.getSession(false);

if(user.getAttribute("email") == null){
	response.sendRedirect("./login.jsp");
	  }

				Dao d = new Dao();
				ResultSet rs = d.hospital_select();
				%>
			<!-- Hostpical Section -->
		   <section class="section section-blogs">
				<div class="container-fluid">
				
					<!-- Section Header -->
					<div class="section-header text-center">
						<h2>Hospital and News</h2>
						
					</div>
					<!-- /Section Header -->
					
					<div class="row blog-grid-row">
						
						<% while(rs.next()){ %>
						
							<div class="col-md-6 col-lg-3 col-sm-12">
						
							<!-- Blog Post -->
							<div class="blog grid-blog">
								<div class="blog-content">
									<ul class="entry-meta meta-item">
										<li>
											<div class="post-author">
												 <label style="color:black;">Name:&nbsp&nbsp&nbsp</label><span><%= rs.getString("name") %></span>
											</div>
										</li>
										<li>
											<div class="post-author">
												 <label style="color:black;">Email:&nbsp&nbsp&nbsp</label><span><%= rs.getString("email") %></span>
											</div>
										</li>
								
										<li>
											<div class="post-author">
												 <label style="color:black;">Contact:&nbsp&nbsp&nbsp</label><span><%= rs.getString("contact") %></span>
											</div>
										</li>
								
										<li>
											<div class="post-author">
												 <label style="color:black;">Bio:&nbsp&nbsp&nbsp</label><span><%= rs.getString("bio") %></span>
											</div>
										</li>
										<li>
											<div class="post-author">
												<form method="post" action="./hospital_profile.jsp">
													<input type="hidden" name="name" value="<%= rs.getString("name")%>">
													<button style="width:100%;" class="btn btn-primary">View More</button>
												</form>
											</div>
										</li>
										
								</div>
							</div>
							<!-- /Blog Post -->
							
						</div>
						<% } %>
						
						
										
						</div>
							
						</div>
					</div>
					
				</div>
			</section>
			<!-- /Hospital Section -->			
<%@ include file="footer.jsp" %>
			