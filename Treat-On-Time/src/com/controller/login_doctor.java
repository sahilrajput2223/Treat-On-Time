package com.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Dao;

/**
 * Servlet implementation class login_doctor
 */
@WebServlet("/login_doctor")
public class login_doctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login_doctor() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			Dao d = new Dao();
			ResultSet rs = d.doctor_by_email(email);
			System.out.print(email);
			System.out.print(password);
			while(rs.next()) {

				System.out.print(rs.getString("email"));
				System.out.print(rs.getString("password"));
					
				if(email.equalsIgnoreCase(rs.getString("email")) &&  password.equalsIgnoreCase(rs.getString("password"))) {
					//session code
					HttpSession doctor = request.getSession();
					doctor.setAttribute("email",email);
					response.sendRedirect("./Doctor/profile.jsp");
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
