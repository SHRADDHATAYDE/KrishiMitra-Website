<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete customer</title>
</head>
<body>
<%
String id=request.getParameter("id");
try{
	Class.forName("com.mysql.cj.jdbc.Driver");

	//establish the connection

	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agri_project","root","root");
	Statement stat=con.createStatement();
	stat.executeUpdate("delete from Customer_register where id='"+id+"'");
	response.sendRedirect("customerrecord.jsp?msg=deleted");
	
}
catch(Exception e){
	response.sendRedirect("customerrecord.jsp?msg=Invalid");
	
	
}
%>

</body>
</html>