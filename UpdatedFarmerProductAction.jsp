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
String address=request.getParameter("input2");
int price=Integer.getInteger(request.getParameter("input3"));
int quantity=Integer.getInteger(request.getParameter("input4"));
String dateofsell=request.getParameter("input5");
String image=request.getParameter("input6");
String total=request.getParameter("input7");
String product_name=request.getParameter("input8");
try{

	
	//establish the connection

	Class.forName("com.mysql.cj.jdbc.Driver");

//establish the connection

Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/agri_project","root","root");

	//Create statment

			PreparedStatement ps=conn.prepareStatement("update product_items set name=?,price=?,stock=?,quantity=?,description=?,category=?,image=? where id=? ");
	
ps.setString(1, name);
ps.setString(2, address);
ps.setInt(3, price);
ps.setInt(4, quantity);
ps.setString(5, dateofsell);
ps.setString(6, image);
ps.setString(7, total);
ps.setString(8,product_name);

ps.executeUpdate();
response.sendRedirect("farmerproduct.jsp?msg=valid");


}
catch(Exception e){
	response.sendRedirect("farmerproduct.jsp?msg=Invalid");
	
}

%>

</body>
</html>