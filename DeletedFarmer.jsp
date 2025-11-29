<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id=request.getParameter("id");
try{
	Class.forName("com.mysql.cj.jdbc.Driver");

	//establish the connection

	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agri_project","root","root");
	Statement stat=con.createStatement();
	stat.executeUpdate("delete from farmer_regi where id='"+id+"'");
	response.sendRedirect("farmerrecord.jsp?msg=deleted");
	
}
catch(Exception e){
	response.sendRedirect("farmerrecord.jsp?msg=Invalid");
	
	
}
%>

</body>
</html>