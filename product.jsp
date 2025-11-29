<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Item Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
   
   <style>
   /* styles.css */
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

form {
    background-color: #ffffff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    width: 300px;
}



label {
    display: block;
    margin-top: 10px;
    font-weight: bold;
}

input[type="text"],
input[type="number"] {
    width: 100%;
    padding: 8px;
    margin-top: 5px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

button {
    width: 100%;
    padding: 10px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
}

button:hover {
    background-color: #45a049;
}

body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f9;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.form-container {
    background-color: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    width: 400px;
}

h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

label {
    display: block;
    margin: 10px 0 5px;
    font-weight: bold;
}

input[type="text"],
input[type="number"],
select {
    width: 100%;
    padding: 8px;
    margin-bottom: 15px;
    border-radius: 5px;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    width: 100%;
    padding: 10px;
    background-color: #4CAF50;
    border: none;
    border-radius: 5px;
    color: white;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #45a049;
}

   
   </style>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("added".equals(msg)){
	
%>
<p class="alert">Product added Successfully!</p>
<%} %>
<%
if("wrong".equals(msg)){
	
%>
<p class="alert">Something went wrong!try again</p>
<%} %>




   <%
   int id=1;
   try{
	   Class.forName("com.mysql.cj.jdbc.Driver");
		
	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agri_project","root","root");
	   Statement stat=con.createStatement();
	   ResultSet rs=stat.executeQuery("select max(id) from product");
		
	   while(rs.next()){
		   id=rs.getInt(1);
		   id=id+1;
		 
		   
	   }
   }catch(Exception e){
   
   }
   %>
   
    
    <form action="AddNewProductAction.jsp" method="post">
   <header class="head text-center pb-5">
        <nav class="navbar navbar-expand-lg navbar-light fixed-top bg-body-tertiary">
            <div class="container-fluid">
                 
                 <a class="nav-link text-uppercase pt-3 ps-3 mt-3 pb-3 " style="background-color: #F8F9FB;"  aria-current="page" href="Dashboard.jsp">Dashboard</a>
              </div>
                    
        </nav>
    </header>
    
    <h2 class="">Add Item</h2>
    <h3 style="color: cyan;">Product ID: <%out.println(id); %></h3>
   <input type="hidden" name="id" value="<%out.println(id); %>">
         <label for="productName">Product Name:</label>
            <input type="text" id="productName" name="productName" required>
            
            <label for="category">Category:</label>
            <input type="text" id="category" name="category" required>
            
            <label for="price">Price:</label>
            <input type="number" id="price" name="price" step="0.01" required>
            
            <label for="active">Active:</label>
            <select id="active" name="active" required>
                <option value="Yes">Yes</option>
                <option value="No">No</option>
            </select>
            
            <button type="submit" >Add Product</button>
    </form>


   
<hr>
</div>


</body>
</html>
