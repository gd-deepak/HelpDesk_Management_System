package com.armeka.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.armeka.model.User;


//IMPORT :

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;






/**
 * Servlet implementation class registersrvlt
 */
@WebServlet("/register")
public class registersrvlt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registersrvlt() {
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
		String uempid = request.getParameter("uempid");
		String uname = request.getParameter("uname");
		String uemail= request.getParameter("uemail");
		String upwd = request.getParameter("upwd");
		String upwd2 = request.getParameter("upwd2");
		String uphone = request.getParameter("uphone");
		String uextno = request.getParameter("uextno");
//		PrintWriter out = response.getWriter();
//		out.print(uempid);
//		out.print(uname);
//		out.print(uemail);
//		out.print(upwd);
//		out.print(uphone);
//		out.print(uextno);
		RequestDispatcher dispatcher = null;
		Connection con = null;
		if(uname== null || uname.equals("")){
			request.setAttribute("status","invalidName");
			dispatcher = request.getRequestDispatcher("register.jsp");
			dispatcher.forward(request, response); 
		} 
		if(upwd== null || upwd.equals("")){
			request.setAttribute("status","invalidUpwd");
			dispatcher = request.getRequestDispatcher("register.jsp");
			dispatcher.forward(request, response); 
		}
		if(!upwd.equals(upwd2)){
			request.setAttribute("status","invalidUpwd2");
			dispatcher = request.getRequestDispatcher("register.jsp");
			dispatcher.forward(request, response); 
		}
		if(uphone== null || uphone.equals("")){
			request.setAttribute("status","invalidUphone");
			dispatcher = request.getRequestDispatcher("register.jsp");
			dispatcher.forward(request, response); 
		}else if(uphone.length()>10) {
			request.setAttribute("status","invalidMobileLength");
			dispatcher = request.getRequestDispatcher("register.jsp");
			dispatcher.forward(request, response);
			
		}
		else if(uphone.length()<10) {
			request.setAttribute("status","invalidMobileLength2");
			dispatcher = request.getRequestDispatcher("register.jsp");
			dispatcher.forward(request, response);	
		}
		if(uextno== null || uextno.equals("")){
			request.setAttribute("status","invalidUextno");
			dispatcher = request.getRequestDispatcher("register.jsp");
			dispatcher.forward(request, response); 
		}
			
			else if(uextno.length()<4) {
				request.setAttribute("status","invalidUextnolength");
				dispatcher = request.getRequestDispatcher("register.jsp");
				dispatcher.forward(request, response);
			}
		
	try {
		Class.forName("com.mysql.jdbc.Driver");
		 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?useSSL=false","root","admin");
		PreparedStatement pst = con.prepareStatement("insert into register(uempid,uname,uemail,upwd,uphone,uextno) values(?,?,?,?,?,?)");
		pst.setString(1, uempid);
		pst.setString(2, uname);
		pst.setString(3, uemail);
		pst.setString(4, upwd);
		pst.setString(5, uphone);
		pst.setString(6, uextno);
		int rowCount = pst.executeUpdate();
			// sending otp

			String to = uemail;// change accordingly
			// Get the session object
			Properties props = new Properties();
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.socketFactory.port", "465");
			props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.port", "465");
			Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication("email", "password");
				}
			});
			try {
				MimeMessage message = new MimeMessage(session);
				message.setFrom(new InternetAddress(uemail));// change accordingly
				message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
				message.setSubject("Account Registration at ARMEKA");
				message.setText("Hello "+uname+ ", \n Your account for Armeka HelpDesk has been Created Successfully."
						+ "\n Kindly login with below credentials :"
						+ "\n Email : "+uemail
						+"\n Password : "+upwd
						+"\n\n DO NOT SHARE YOUR USERNAME AND PASSWORD WITH ANYONE");
				
				// send message
				Transport.send(message);
				System.out.println("message sent successfully");
			}

			catch (MessagingException e) {
				throw new RuntimeException(e);
			}
		dispatcher = request.getRequestDispatcher("register.jsp");
		if (rowCount > 0){
		 request.setAttribute("status","success");

		}else {
			 request.setAttribute("status","error");
		}
		dispatcher.forward(request, response);

	} catch (Exception e) {
		e.printStackTrace();
	}
	
	finally {
		try {
			con.close(); 
		} catch (SQLException e) {
			e.printStackTrace();
		
		}
	}
	
	}
	
	
}


