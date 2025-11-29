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
String name=request.getParameter("input1");
String email=request.getParameter("input2");
String address=request.getParameter("input4");
String state=request.getParameter("input5");
String contact=request.getParameter("input6");
try{

	
	//establish the connection

	Class.forName("com.mysql.cj.jdbc.Driver");

//establish the connection

Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/agri_project","root","root");

	//Create statment

			PreparedStatement ps=conn.prepareStatement("update farmer_regi set f_name=?,f_mail=?,f_address=?,f_state=?,f_contact=? where id=? ");
	
ps.setString(1, name);
ps.setString(2, email);
ps.setString(3, address);
ps.setString(4, state);
ps.setString(5, contact);
ps.setString(6,id);

ps.executeUpdate();
response.sendRedirect("farmerrecord.jsp?msg=valid");


}
catch(Exception e){
	response.sendRedirect("farmerrecord.jsp?msg=Invalid");
	
}

%>

</body>
</html>