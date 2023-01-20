package com.armeka.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.xdevapi.Result;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	String uemail= request.getParameter("username");
	String upwd= request.getParameter("password");
	HttpSession session = request.getSession();
	RequestDispatcher dispatcher =null;
	if(uemail== null || uemail.equals("")){
		request.setAttribute("status","invalidEmail");
		dispatcher = request.getRequestDispatcher("login.jsp");
		dispatcher.forward(request, response);
	}
	if(upwd== null || upwd.equals("")){
			request.setAttribute("status","invalidUpwd");
			dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response); 
		} 
		try {
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?useSSL=false","root","admin");
		PreparedStatement pst = con.prepareStatement("select * from register where uemail = ? and upwd= ?");
		pst.setString(1, uemail);
		pst.setString(2, upwd);
		ResultSet rs = pst.executeQuery();
		if (rs.next()) {
			session.setAttribute("name",rs.getString("uname"));
			dispatcher = request.getRequestDispatcher("index.jsp");
		}
		else {
			request.setAttribute("status","error");
			dispatcher = request.getRequestDispatcher("login.jsp");
			
		}
		dispatcher.forward(request, response);
	} catch (Exception e) {
		e.printStackTrace();

	}

	}
}
