package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Dao;

/**
 * Servlet implementation class new_password_doctor
 */
@WebServlet("/new_password_doctor")
public class new_password_doctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public new_password_doctor() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String c_password = request.getParameter("c_password");
		PrintWriter pf = response.getWriter();
		
		if(password.equals(c_password)) {
			 DoctorBean db = new DoctorBean();
			 db.setEmail(email);
			 db.setPassword(password);
			 db.setC_password(c_password);
			 
			 Dao d = new Dao();
			 int row = d.Doctor_password_update(db);
			 
			 if(row > 0) {
				System.out.print("password updated for doctor " + email);
				HttpSession hf = request.getSession();
				hf.invalidate();
				response.sendRedirect("./Doctor/login.jsp");
			 }
		}
		else {
			pf.print("Password and confirm password not match");
		}
		
		
	}

}
