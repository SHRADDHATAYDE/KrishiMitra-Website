<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ page import="java.sql.*" %>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400..900;1,400..900&display=swap" rel="stylesheet">
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UpdateCustomer</title>
<style>


.playfair-display {
  font-family: "Playfair Display", serif;
  font-optical-sizing: auto;
  font-weight: <weight>;
  font-style: normal;
}
input[type="text"], input[type="password"], input[type="email"], select,input[type="number"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	padding:15px;
	width:60%;	
	border-radius: 25px;
	margin-left:20%;
}
h3,h1
{	
	margin-left:20%;
}
hr
{
width:60%;	
margin-left:20%;
}
</style>
</head>
<body>
<%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");

//establish the connection

Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/agri_project","root","root");

//Create statment

		Statement stat=conn.createStatement();
//Execute Query
	ResultSet rs=stat.executeQuery("select * from product where id='"+id+"'");

while(rs.next()){
	

%>
<div class="container">
<form action="UpdatedItemAction.jsp" method="post">
<input type="hidden" name="id" value="<%out.println(id);%>">


<h3 class="playfair-display ">Item Name</h3>
<hr>
<input type="text" value="<%=rs.getString(2)%>" name="input1">

<h3 class="playfair-display ">Price</h3>
<hr>
<input type="text" value="<%=rs.getInt(3)%>" name="input2">

<h3 class="playfair-display ">stock</h3>
<hr>
<input type="text" value="<%=rs.getInt(4)%>" name="input3">

<h3 class="playfair-display ">quantity</h3>
<hr>
<input type="text" value="<%=rs.getString(5)%>" name="input4">

<h3 class="playfair-display ">Description</h3>
<hr>
<input type="text" value="<%=rs.getString(6)%>" name="input5">

<h3 class="playfair-display ">Category</h3>
<hr>
<input type="text" value="<%=rs.getString(7)%>" name="input6">

<h3 class="playfair-display ">Image</h3>
<hr>
<input type="text" value="<%=rs.getString(8)%>" name="input7">
<br>
<br>
<center><button type="submit" style=" padding:10px 20px 10px 20px ;background-color: darkcyan;" class="rounded border-0">Save</button></center>


</form>
</div>
<%
}}
catch(Exception e){
	System.out.println(e);
}
%>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>