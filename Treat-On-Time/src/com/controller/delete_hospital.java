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
 * Servlet implementation class delete_hospital
 */
@WebServlet("/delete_hospital")
public class delete_hospital extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public delete_hospital() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		PrintWriter pw = response.getWriter(); 
		int ID = Integer.parseInt(request.getParameter("H_id"));
		
		Dao d = new Dao();
		int count = d.hospital_delete(ID);
		
		if( count > 0 ) {
			response.sendRedirect("Admin/display_hospital.jsp");
		}
		else {
			pw.println("Data Not Deleted .... ");
		}
	}

}
