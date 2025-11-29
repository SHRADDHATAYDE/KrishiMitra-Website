<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String product_id=request.getParameter("id");
try{
	 Class.forName("com.mysql.cj.jdbc.Driver");
	    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/agri_project", "root", "root");
	    Statement st=conn.createStatement();
	    st.executeUpdate("delete from cart where product_id ='"+product_id+"'");
	    response.sendRedirect("myCart.jsp?msg=remove");
}
catch(Exception e){
	System.out.println(e);
}

%>
