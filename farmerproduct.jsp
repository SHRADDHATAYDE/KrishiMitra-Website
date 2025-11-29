<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
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
<header class="head text-center pb-5">
        <nav class="navbar navbar-expand-lg navbar-light fixed-top bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand text-uppercase fw-bold text-white ms-5 ps-5 pe-5" style="background-color: darkcyan
                    " href="#">krishi mitra</a>

                    </ul>

                </div>
            </div>
        </nav>
    </header>
     <section class="blog-sec-1">
        <div class="image">
            <h1 class="text-white">Farmer Selling Products</h1>
        </div>
        <section>
          <a class="nav-link text-uppercase pt-3 ps-3 mt-3 pb-3" style="background-color: #F8F9FB;"  aria-current="page" href="Dashboard.jsp">Home/Dashboard</a>
  
      
        </section>
        
<br>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg)){
	%>
	<center><font color="red" size="5">Successfully Updated</font></center>
	<% 
}
%>
<%

if("Invalid".equals(msg)){
	%>
	<center><font color="red" size="5">Something Wrong went wrong! Try again!</font></center>
	<% 
}
%>
<%

if("deleted".equals(msg)){
	%>
	<center><font color="red" size="5">Successfully Deleted</font></center>
	<% 
}
%>

<center>
<table id="farmer">
<tr>
<th>ID</th>
<th>Item_Name</th>
<th>Address</th>
<th>Price</th>
<th>Quantity</th>
<th>Date Of Sell</th>
<th>Product Name</th>
<th>Image</th>
<th>Total</th>
<th>Edit</th>
<th>Delete</th>
</tr>
<tr>
<%
try
{
Class.forName("com.mysql.cj.jdbc.Driver");

//establish the connection

Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/agri_project","root","root");

//Create statment

		Statement stat=conn.createStatement();
//Execute Query
	ResultSet rs=stat.executeQuery("select * from farmer_sell");
while(rs.next()){

	


%>
<td><%=rs.getInt(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getInt(4) %></td>
<td><%=rs.getInt(5) %></td>
<td><%=rs.getString(6) %></td>
<td><%=rs.getString(9) %></td>
<td><img  src="./image/<%= rs.getString(7) %>" width="150" /></td>
<td><%=rs.getString(8) %></td>

<td><a  href="UpdatedFarmerProduct.jsp?id=<%=rs.getString(1)%>">Edit</a></td>
<td><a  href="DeletedFarmerProduct.jsp?id=<%=rs.getString(1)%>">Delete</a></td>
</tr>
<%
}
}
catch(Exception e){
	System.out.println(e);
}
%>
</table>
</center>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

</body>
</html>