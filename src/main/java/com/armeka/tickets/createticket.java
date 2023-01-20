package com.armeka.tickets;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class createticket
 */
@WebServlet("/ticket")
public class createticket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public createticket() {
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

		String usubject = request.getParameter("usubject");
		String uname = request.getParameter("uname");
		String uempid= request.getParameter("uempid");
		String uextno = request.getParameter("uextno");
		String uemail= request.getParameter("uemail");
		String descr= request.getParameter("descr");
		String image = request.getParameter("image");
		/*
		 * PrintWriter out = response.getWriter(); out.print(usubject);
		 * out.print(uname); out.print(uemail); out.print(uempid); out.print(descr);
		 * out.print(uextno);
		 */
		Connection con;
		FileInputStream fis=null;
		RequestDispatcher dispatcher = null;
		PreparedStatement pstmt = null;
		try {
//			File img = new File(image);
			Class.forName("com.mysql.jdbc.Driver");
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?useSSL=false","root","admin");
			PreparedStatement pst = con.prepareStatement("insert into tickets(usubject,uname,uempid,uextno,uemail,descr) values(?,?,?,?,?,?);");
			pst.setString(1, usubject);
			pst.setString(2, uname);
			pst.setString(3, uempid);
			pst.setString(4, uextno);
			pst.setString(5, uemail);
			pst.setString(6, descr);
//			fis = new FileInputStream(img);
//			pstmt.setBinaryStream(7, (InputStream) fis, (int) (img.length())); 
			int rowCount = pst.executeUpdate();
		
			dispatcher = request.getRequestDispatcher("createticket.jsp");
			if (rowCount > 0){
			 request.setAttribute("status","success");

			}else {
				 request.setAttribute("status","error");
			}
			dispatcher.forward(request, response);

	}
		catch (Exception e) {
			System.out.println("Got An Error");
		}

}
}
