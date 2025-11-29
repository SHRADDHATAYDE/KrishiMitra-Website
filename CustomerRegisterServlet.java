package com.org;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CustomerRegisterServlet")
public class CustomerRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String name = request.getParameter("input1");
	        String email = request.getParameter("input2");
	        String password = request.getParameter("input3");
	        String address= request.getParameter("input4");
	        String mobile = request.getParameter("input5");
	        String dob= request.getParameter("input6");
	        String gender= request.getParameter("input7");
	        String state= request.getParameter("input8");
	        
	        try {
	        	//Register the Driver Class
				Class.forName("com.mysql.cj.jdbc.Driver");
				
				//Establish connection
				
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agri_project","root","root");
				
				//Create Statement
				
				Statement stat=con.createStatement();
				//Execute Query
				stat.executeUpdate("insert into customer_register(c_name,c_email,c_password,c_address,c_mobile,c_dob,c_gender,c_state) values('"+name+"','"+email+"','"+password+"','"+address+"','"+mobile+"','"+dob+"','"+gender+"','"+state+"')");
				
				PrintWriter out=response.getWriter();
				
				response.sendRedirect("customerLogin.jsp");
				
				con.close();
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        
	}

}
