<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>My Cart</title>
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
        #farmer tr:nth-child(even) { background-color: #f2f2f2; }
        #farmer tr:hover { background-color: #ddd; }
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
<div style="color: white; text-align: center; font-size: 30px;">My Cart <i class='fas fa-cart-arrow-down'></i></div>


    <%
        String msg = request.getParameter("msg");
        if ("notpossible".equals(msg)) {
  %>
  <h3 class="alert">There is only one Quantity! So Click on remove!</h3>
<%} %>
<%
if ("inc".equals(msg)) {
	  %>
	  <h3 class="alert">Quantity increased successfully!</h3>
	<%} %>
        
        <%
if ("dec".equals(msg)) {
	  %>
	  <h3 class="alert">Quantity decreased successfully!</h3>
	<%} %>
	<%
if ("remove".equals(msg)) {
	  %>
	  <h3 class="alert">Product remove Successfully!</h3>
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
                            <a class="nav-link text-uppercase" aria-current="page" href="customerhome.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-uppercase" aria-current="page" href="myCart.jsp">My Cart</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-uppercase" aria-current="page" href="addressPaymentForOrder.jsp">My Order</a>
                        </li>
                         
                        
                     
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-uppercase" href="#" id="navbarDropdownMenuLink"
                                role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                my contact
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <li><a class="dropdown-item" href="#">Action</a></li>
                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                            </ul>
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


<table id="farmer">
<thead>
<%
int total = 0;
int sno = 0;
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/agri_project", "root", "root");
    Statement st = conn.createStatement();
    ResultSet rs1 = st.executeQuery("select sum(total) from cart");
    while(rs1.next()){
    	total=rs1.getInt(1);
    }
	

%>

          <tr>
            <th scope="col" style="background-color: cyan; color:black;">Total: <i class="fa fa-inr"></i><%out.println(total); %> </th>
          <%if(total>0) {%>  <th scope="col"><a href="addressPaymentForOrder.jsp">Proceed to order</a></th><%} %>
          </tr>
        </thead>
        <thead>
          <tr>
          <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> price</th>
            <th scope="col">Quantity</th>
            <th scope="col">Sub Total</th>
            <th scope="col">Remove <i class='fas fa-trash-alt'></i></th>
          </tr>
        </thead>
        <tbody>
      <%
      ResultSet rs=st.executeQuery("select * from product inner join cart on product.id=cart.product_id");
      while(rs.next()){
    	  
      
      %>
          <tr>
			<%sno=sno+1; %>
           <td><%out.println(sno); %></td>
            <td><%=rs.getString("name") %></td>
            <td><%=rs.getString("category") %></td>
            <td><i class="fa fa-inr"></i><%=rs.getString("price") %> </td>
            
            <td><a href="incDecQunatityAction.jsp?id=<%=rs.getString("id")%>&quantity=inc"><i class='fas fa-plus-circle'></i></a><%=rs.getString("quantity") %>  <a href="incDecQunatityAction.jsp?id=<%=rs.getString("id")%>&quantity=inc"><i class='fas fa-minus-circle'></i></a></td>
            <td><i class="fa fa-inr"></i><%=rs.getString("total") %> </td>
            <td><a href="removeFromCart.jsp?id=<%=rs.getString("id")%>">Remove <i class='fas fa-trash-alt'></i></a></td>
          </tr>
          <%
}}
catch(Exception e){
	System.out.println(e);
}
          %>

        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>