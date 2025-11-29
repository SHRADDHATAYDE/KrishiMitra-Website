<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
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
<%
String msg=request.getParameter("msg");
if("added".equals(msg)){
	
%>
<h3 class="alert">Product added successfully!</h3>
<%} %>
<%
if("exit".equals(msg)){
	
%>

<h3 class="alert">Product already exist in you cart! Quantity  increased!</h3>
<%} %>
<%
if("invalid".equals(msg)){
	

%>
<h3 class="alert">Something Went Wrong Please try again later!</h3>
<%} %>
<header class="head text-center pb-5">
        <nav class="navbar navbar-expand-lg navbar-light fixed-top bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand text-uppercase fw-bold text-white ms-5 ps-5 pe-5" style="background-color: darkcyan
                    " href="#">krishi mitra</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse d-flex justify-content-center" id="navbarNavDropdown">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link text-uppercase" aria-current="page" href="home.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-uppercase" aria-current="page" href="myCart.jsp">My Cart</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-uppercase" aria-current="page" href="addressPaymentForOrder.jsp">My Order</a>
                        </li>
                         
                        
                     
                        
                        
                        <li class="nav-item">
                            <a class="nav-link text-uppercase" href="#">contact</a>
                        </li>
                        <li class="pt-1 ms-3">
                        <form action="searchHome.jsp" method="post">
                        <input tye="text" placeholder="serach" name="search">
                        <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                        </form>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>
    </header>

<center>
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
try{
	Class.forName("com.mysql.cj.jdbc.Driver");

	//establish the connection

	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/agri_project","root","root");
	//Create statment

	Statement stat=conn.createStatement();
	//Execute Query
		ResultSet rs=stat.executeQuery("select * from product");
	while(rs.next()){
		

%>
          <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><i class="fa fa-inr"></i> </i><%=rs.getInt(4) %></td>
            <td><a href="addtocardaction.jsp?id=<%= rs.getString(1) %>">Add to cart <i class='fas fa-cart-plus'></i></a></td>
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
      </center>
      <br>
      <br>
      <br>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>