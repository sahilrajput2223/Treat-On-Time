package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Dao;

/**
 * Servlet implementation class insert_user_profile
 */
@WebServlet("/insert_user_profile")
public class insert_user_profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insert_user_profile() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    private Date convertToSql(java.util.Date uDate) {
		java.sql.Date sDate = new java.sql.Date(uDate.getTime()); 
		return sDate;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// TODO Auto-generated method stub
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String DOB = request.getParameter("DOB");
			String bio = request.getParameter("bio");
			System.out.println(DOB);
			String blood_group = request.getParameter("blood_group");
			long contact = Long.parseLong(request.getParameter("contact"));
			String street = request.getParameter("street");
			String area = request.getParameter("area");
			String city = request.getParameter("city");
			String state = request.getParameter("state");
			String country = request.getParameter("country");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			java.util.Date bdate;
			bdate = sdf.parse(DOB);
			java.sql.Date Bdate = convertToSql(bdate);
			UserProfileBean upb = new UserProfileBean();
			upb.setName(name);
			upb.setEmail(email);
			upb.setBio(bio);
			upb.setDOB(Bdate);
			upb.setBlood_group(blood_group);
			upb.setContact(contact);
			upb.setStreet(street);
			upb.setArea(area);
			upb.setCity(city);
			upb.setState(state);
			upb.setCountry(country);
			Dao d = new Dao();
			int row = d.user_profile_insert(upb);
			PrintWriter pf = response.getWriter();
			if (row > 0) {
				pf.print("User profile Inserted");
			} else {
				pf.print("User profile Not Inserted");
			} 
		} catch (Exception e) {
			// TODO: handle exception
		}
	
	}

}
