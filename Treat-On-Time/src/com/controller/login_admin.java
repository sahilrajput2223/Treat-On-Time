package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class login_admin
 */
@WebServlet("/login_admin")
public class login_admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login_admin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.print(name);
		System.out.print(password);
		if(name.equals("admin") && password.equals("admin"))
		{
			HttpSession doctor= request.getSession();
			doctor.setAttribute("email","true" );
			response.sendRedirect("./Admin/admin_index.jsp");
		}
		else
		{
			response.sendRedirect("./Admin/login.jsp");
		}

	}

}
