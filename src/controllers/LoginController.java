package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import models.User;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDao dao;

	public LoginController() {
		super();
		dao = new UserDao();
	}


	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		RequestDispatcher rd = null;

		User user =  dao.getUserByUsername(username);
		String truepassword = user.getPassword();
		
		if (truepassword == null) {
			rd = request.getRequestDispatcher("loginfail.jsp");
		}
		else {			
			if (truepassword.equals(password)) {
				rd = request.getRequestDispatcher("loginsuccess.jsp");
			} else {
				rd = request.getRequestDispatcher("loginfail.jsp");
			}
		}
		rd.forward(request, response);
	}


}
