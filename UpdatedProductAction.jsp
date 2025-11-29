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
int price=Integer.getInteger(request.getParameter("input2"));
int stock=Integer.getInteger(request.getParameter("input3"));
String quantity=request.getParameter("input4");
String description=request.getParameter("input5");
String category=request.getParameter("input6");
String image=request.getParameter("input7");
try{

	
	//establish the connection

	Class.forName("com.mysql.cj.jdbc.Driver");

//establish the connection

Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/agri_project","root","root");

	//Create statment

			PreparedStatement ps=conn.prepareStatement("update product_items set name=?,price=?,stock=?,quantity=?,description=?,category=?,image=? where id=? ");
	
ps.setString(1, name);
ps.setInt(2, price);
ps.setInt(3, stock);
ps.setString(4, quantity);
ps.setString(5, description);
ps.setString(6, category);
ps.setString(7, image);
ps.setString(8,id);

ps.executeUpdate();
response.sendRedirect("ProductList.jsp?msg=valid");


}
catch(Exception e){
	response.sendRedirect("ProductList.jsp?msg=Invalid");
	
}

%>

</body>
</html>