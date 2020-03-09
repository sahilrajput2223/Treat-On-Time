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
 * Servlet implementation class insert_user
 */
@WebServlet("/insert_user")
public class insert_user extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insert_user() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		System.out.println(password);
		String c_password = request.getParameter("c_password");
		System.out.println(c_password);
		String password_reset = request.getParameter("password_reset");
		
		if(password.equals(c_password)) {
			UserBean ub = new UserBean();
			ub.setUsername(username);
			ub.setEmail(email);
			ub.setPassword(password);
			ub.setC_password(c_password);
			ub.setPassword_reset(password_reset);
			
			Dao d = new Dao();
			int row = d.user_insert(ub);
			
			PrintWriter pf = response.getWriter();
			if(row > 0) {
				HttpSession user = request.getSession();
				user.setAttribute("email", email);
				response.sendRedirect("./User/user_index.jsp");
				//pf.print("User Inserted");
			}
			else {
				pf.print("User Not Inserted");
			}
		}
		else {
			System.out.print("password and Confirm password not match	");
		}
	}

}
