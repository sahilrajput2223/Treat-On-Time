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
 * Servlet implementation class delet_booking
 */
@WebServlet("/delete_booking")
public class delete_booking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public delete_booking() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		PrintWriter pw = response.getWriter(); 
		int ID = Integer.parseInt(request.getParameter("b_id"));
		
		Dao d = new Dao();
		int count = d.booking_delete(ID);
		
		if( count > 0 ) {
			response.sendRedirect("./User/view_booking.jsp");
		}
		else {
			pw.println("Booking Data Not Deleted .... ");
		}
	
	
	}

}
