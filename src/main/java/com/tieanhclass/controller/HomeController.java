package com.tieanhclass.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet(urlPatterns = {"/trang-chu"})
public class HomeController extends HttpServlet {

	/**
	 * 
	 */
	/*@Inject 
	private ICategoryService categoryService; */
	
	
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//		request.setAttribute("categories", categoryService.findAll());
		//request.setAttribute("model", nưe);
		
		RequestDispatcher rd = request.getRequestDispatcher("/views/home.jsp"); 
		rd.forward(request, response);
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
