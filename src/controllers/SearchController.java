package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDao;

@WebServlet("/SearchController")
public class SearchController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private ProductDao dao;
	
	public SearchController() {
		super();
		dao = new ProductDao();
	}
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String searchterm = request.getParameter("search");
		RequestDispatcher rd = null;
		
		request.setAttribute("products", dao.getSearch(searchterm));
		rd = request.getRequestDispatcher("/results.jsp");
		rd.forward(request, response);
	}
	
}
