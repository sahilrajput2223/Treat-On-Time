package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Dao;


/**
 * Servlet implementation class insert_doctor
 */
@WebServlet("/insert_doctor")
public class insert_doctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insert_doctor() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name"); 
		String h_name = request.getParameter("h_name");
		long contact = Long.parseLong(request.getParameter("contact"));
		String email = request.getParameter("email");
		String eduction = request.getParameter("education");
		String day[] = request.getParameterValues("days");
		String time[] = request.getParameterValues("time");
		String specification = request.getParameter("specification");
		String password = request.getParameter("password");
		String c_password = request.getParameter("c_password");
		String password_reset = request.getParameter("password_reset");
		
		
		Dao d = new Dao();
		String days = d.makeString(day);
		String times = d.makeString(time);
		
		DoctorBean db = new DoctorBean();
		db.setName(name);
		db.setH_name(h_name);
		db.setContact(contact);
		db.setEmail(email);
		db.setEdu(eduction);
		db.setDays(days);
		db.setTime_slot(times);
		db.setSpecification(specification);
		db.setPassword(password);
		db.setC_password(c_password);
		db.setPassword_reset(password_reset);
		
		
		
		if(password.equals(c_password)) {
			int row = d.Doctor_insert(db);
			
			if(row > 0) {
				HttpSession doctor = request.getSession();
				doctor.setAttribute("email",email);
				response.sendRedirect("./Doctor/profile.jsp");
		
			}
			else {
				PrintWriter pf = response.getWriter();
				pf.print("An Error Accoured, Doctor Not Registerd ....");
				pf.close();
			}
		}
		else {
			PrintWriter pf = response.getWriter();
			pf.print("Password Not Match, Doctor Not Registerd ....");
			pf.close();
			
		}
		
		
		
	}

	
}



