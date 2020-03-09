package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Dao;

/**
 * Servlet implementation class update_hospital
 */
@WebServlet("/update_hospital")
public class update_hospital extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public update_hospital() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int H_id = Integer.parseInt(request.getParameter("h_id"));
		String name = request.getParameter("name"); 
		String email = request.getParameter("email");
		String street = request.getParameter("street");
		String area = request.getParameter("area");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String country = request.getParameter("country");
		String bio = request.getParameter("bio");
		long contact = Long.parseLong(request.getParameter("contact"));
		String[] facilitie = request.getParameterValues("facilities");
		
		Dao d = new Dao();
		String facilities = d.makeString(facilitie);
		
		HospitalBean hb = new HospitalBean();
		hb.setH_id(H_id);
		hb.setName(name);
		hb.setEmail(email);
		hb.setStreet(street);
		hb.setArea(area);
		hb.setCity(city);
		hb.setState(state);
		hb.setCountry(country);
		hb.setBio(bio);
		hb.setContact(contact);
		hb.setFacilities(facilities);
		
		int row = d.Hospital_update(hb);
		
		if(row > 0) {
			response.sendRedirect("Admin/display_hospital.jsp");
		}
		else {
			PrintWriter pf = response.getWriter();
			pf.print("An Error Accoured, Hospital Not Updated... <a href='Admin/display_hospital.jsp'>back to All hospital page </a>");
		}

	}

}
