package com.armeka.tickets;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;

public class DBTEST {

	public static void main(String[] args) {


		String usubject = "hello";
		String uname = "hello";
		String uempid= "hello";
		String uextno = "hello";
		String uemail= "hello";
		String descr= "hello";
		String image = "hello";
		/*
		 * PrintWriter out = response.getWriter(); out.print(usubject);
		 * out.print(uname); out.print(uemail); out.print(uempid); out.print(descr);
		 * out.print(uextno);
		 */
		Connection con;
		
//		PreparedStatement pstmt = null;
		try {
//			File img = new File(image);
			Class.forName("com.mysql.jdbc.Driver");
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","admin");
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
		
			System.out.println("done");

	}
		catch (Exception e) {

		System.out.println("error");
		}

}


		
}
