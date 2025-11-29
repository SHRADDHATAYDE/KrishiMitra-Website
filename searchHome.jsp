<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SearchHome</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<style>
    .image h1 {
    width: 100%;
    height: 100%;
    align-items: center;
    justify-content: center;
    display: flex;

}
.image {

    background-image: linear-gradient(rgba(10, 10, 10, 0.5), rgba(10, 10, 10, 0.5)), url(./image/nasscom\ agri.jpg);
    height: 25vh;
    width: 100%;
    background-position: center;
    background-size: cover;

}

    
    #farmer {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
}

#farmer td, #farmer th {
  border: 1px solid #ddd;
  padding: 8px;
}

#farmer tr:nth-child(even){background-color: #f2f2f2;}

#farmer tr:hover {background-color: #ddd;}

#farmer th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
    </style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i></div>
<table id="farmer">
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th scope="col">Add to cart <i class='fas fa-cart-plus'></i></th>
          </tr>
        </thead>
        <tbody>
        
 <%
 int z=0;
try{
	String search=request.getParameter("search");
	Class.forName("com.mysql.cj.jdbc.Driver");

	//establish the connection

	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/agri_project","root","root");
	//Create statment

	Statement stat=conn.createStatement();
	//Execute Query
		ResultSet rs=stat.executeQuery("select * from product where name like '%"+search+"%' or category like '%"+search+"%' and active='Yes'");
	while(rs.next()){
		z=1;

%>       

         <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><i class="fa fa-inr"></i> </i><%=rs.getInt(4) %></td>
            <td><a href="customerhome.jsp?id=<%= rs.getString(1) %>">Add to cart <i class='fas fa-cart-plus'></i></a></td>
          </tr>
          <%
	}
}
catch(Exception e)
{
	System.out.println(e);
}

%>
         
        </tbody>
      </table>
      <%if(z==0){
    	  %>
      	
	<h1 style="color:white; text-align: center;">Nothing to show</h1>
	<%} %>
      <br>
      <br>
      <br>
     
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>