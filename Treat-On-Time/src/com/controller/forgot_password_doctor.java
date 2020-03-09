package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class forgot_password_doctor
 */
@WebServlet("/forgot_password_doctor")
public class forgot_password_doctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public forgot_password_doctor() {
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
			String password_key = request.getParameter("password_reset");
			
			Dao d = new Dao();
			ResultSet rs = d.doctor_by_email(email);
			//if(rs == null) {
				//PrintWriter pf = response.getWriter();
				//pf.print("email");
			//}
			while(rs.next()) {
				if(email.equals(rs.getString("email"))) {
					if (password_key.equalsIgnoreCase(rs.getString("password_reset"))) {
						HttpSession hs = request.getSession();
						hs.setAttribute("forgot_password_email", email);
						response.sendRedirect("./Doctor/new_password.jsp");
					}
					else {
						PrintWriter pf = response.getWriter();
						pf.print("password key and sequrity question not match");
						pf.close();
					}
				}
			
			}
		
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
