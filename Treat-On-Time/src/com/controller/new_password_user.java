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
 * Servlet implementation class new_password_user
 */
@WebServlet("/new_password_user")
public class new_password_user extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public new_password_user() {
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
			 UserBean ub = new UserBean();
			 ub.setEmail(email);
			 ub.setPassword(password);
			 ub.setC_password(c_password);
			 
			 Dao d = new Dao();
			 int row = d.User_password_update(ub);
			 
			 
			 if(row > 0) {
				System.out.print("password updated for user " + email);
				HttpSession hf = request.getSession();
				hf.invalidate();
				response.sendRedirect("./User/login.jsp");
			 }
		}
		else {
			pf.print("Password and confirm password not match");
		}
		

	}

}
