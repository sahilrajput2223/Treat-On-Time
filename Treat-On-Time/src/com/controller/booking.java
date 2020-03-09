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
 * Servlet implementation class booking
 */
@WebServlet("/booking")
public class booking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public booking() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String d_email = request.getParameter("d_email");
		String d_name = request.getParameter("d_name");
		String p_email = request.getParameter("p_email");
		String p_name = request.getParameter("p_name");
		String day = request.getParameter("day_book");
		String time = request.getParameter("time_book");
		
		Dao d = new Dao();
		int row = d.book(d_name, d_email, p_name, p_email, day, time);
		PrintWriter pf  = response.getWriter();
		
		if(row > 0) {
			response.sendRedirect("./User/view_booking.jsp");
			//pf.print("booking done");
		}
		else {
			pf.print("booking Not Done");
		}
	}

}
