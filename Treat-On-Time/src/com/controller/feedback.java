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
 * Servlet implementation class feedback
 */
@WebServlet("/feedback")
public class feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public feedback() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String p_email = request.getParameter("email");
		String content = request.getParameter("content");
		System.out.print(p_email);
		System.out.print(content);
		Dao d = new Dao();
		int row = d.feedback_insert(p_email, content);
		
		if(row > 0) {
			response.sendRedirect("./User/user_index.jsp");
		}
		else {
			PrintWriter pf = response.getWriter();
			pf.print("Feedback Not Submited");
		}
		
	}

}
