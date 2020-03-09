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
 * Servlet implementation class update_doctor
 */
@WebServlet("/update_doctor")
public class update_doctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public update_doctor() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String h_name = request.getParameter("h_name");
		String email = request.getParameter("email");
		long contact = Long.parseLong(request.getParameter("contact"));
		String day[] = request.getParameterValues("days");
		String time[] = request.getParameterValues("time");
		String password_reset = request.getParameter("password_reset");
		
		
		Dao d = new Dao();
		String days = d.makeString(day);
		String times = d.makeString(time);
		
		DoctorBean db = new DoctorBean();
		db.setH_name(h_name);
		db.setEmail(email);
		db.setContact(contact);
		db.setDays(days);
		db.setTime_slot(times);
		db.setPassword_reset(password_reset);
		
		
		int row = d.Doctor_update(db);
		
			if(row > 0) {
				response.sendRedirect("Doctor/profile.jsp");
			}
			else {
				PrintWriter pf = response.getWriter();
				pf.print("An Error Accoured, Doctor Profile Not Updated ....");
				pf.close();
			}
		}
	
	}
