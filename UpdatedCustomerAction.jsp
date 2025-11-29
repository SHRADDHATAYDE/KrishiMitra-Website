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
String c_id=request.getParameter("id");
String name=request.getParameter("input1");
String email=request.getParameter("input2");
String address=request.getParameter("input3");
String contact=request.getParameter("input4");
String dob=request.getParameter("input5");
String gender=request.getParameter("input6");
String state=request.getParameter("input7");
try{

	
	//establish the connection

	Class.forName("com.mysql.cj.jdbc.Driver");

//establish the connection

Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/agri_project","root","root");

	//Create statment

			PreparedStatement ps=conn.prepareStatement("update customer_register set c_name=?,c_email=?,c_address=?,c_mobile=?,c_dob=?,c_gender=?,c_state=? where id=? ");
	
ps.setString(1, name);
ps.setString(2, email);
ps.setString(3, address);
ps.setString(4, contact);
ps.setString(5, dob);
ps.setString(6, gender);
ps.setString(7, state);
ps.setString(8,c_id);

ps.executeUpdate();
response.sendRedirect("CustomerRecord.jsp?msg=valid");


}
catch(Exception e){
	response.sendRedirect("CustomerRecord.jsp?msg=Invalid");
	
}

%>

</body>
</html>