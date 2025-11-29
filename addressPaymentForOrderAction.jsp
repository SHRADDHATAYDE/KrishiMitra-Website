<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Payment Receipt</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            margin: 20px;
        }
        .receipt {
            border: 1px solid #ccc;
            padding: 20px;
            max-width: 600px;
            margin: 0 auto;
        }
        .receipt-header {
            text-align: center;
        }
        .receipt-header h2 {
            margin-bottom: 0;
        }
        .receipt-details {
            margin-top: 20px;
        }
        .receipt-details th, .receipt-details td {
            padding: 10px;
            text-align: left;
        }
        .thank-you {
            text-align: center;
            margin-top: 30px;
        }
    </style>
</head>
<body>
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
                       
<!-- Logout button with alert -->
<a href="home.jsp" onclick="showLogoutAlert(event)">
    <button type="button" class="rounded footer-btn p-2 " style="background-color: darkcyan; color: #ffff; border:none;margin-left:800px;">
        LogOut <i class="fa-solid fa-angles-right"></i>
    </button>
</a>

<script>
    function showLogoutAlert(event) {
        event.preventDefault(); // Prevent the default link action
        // Show the alert message
        alert("Logout successfully!");

        // After showing the alert, redirect to home.jsp or the login page
        window.location.href = 'home.jsp';  // Change this to your logout or login page
    }
</script> 
                        
                         
                    </ul>

                </div>
            </div>
        </nav>
    </header>

<%
    // Retrieve parameters passed from the previous page
    String paymentId = request.getParameter("id");
    String orderId = request.getParameter("orderId");
    String userId = (String) session.getAttribute("userId");

    // Fetch user and order data from the database
    String userName = "";
    String orderDate = "";
    int totalAmount = 0;
    String productId = "";

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/agri_project", "root", "root");

        // Query to get the order details
        PreparedStatement ps = conn.prepareStatement("SELECT * FROM cart");
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            int quantity1 = rs.getInt("quantity");

            // Retrieve session attributes for product data
            Integer price = (Integer) session.getAttribute("price");
            Integer quantity = (Integer) session.getAttribute("quantity");
            Integer subTotal = (Integer) session.getAttribute("subTotal");
            Integer totalAmount1 = (Integer) session.getAttribute("totalAmount");

            if (price == null) price = 0;
            if (quantity == null) quantity = 0;
            if (subTotal == null) subTotal = 0;
            if (totalAmount1 == null) totalAmount1 = totalAmount;
%>

<div class="receipt">
    <div class="receipt-header">
        <h2>Payment Receipt</h2>
        <p>Krishi Mitra</p>
    </div>

    <div class="receipt-details">
        <table class="table">
            <tr>
                <th>Quantity</th>
                <td><%= quantity1 %></td>
            </tr>
            
            <tr>
                <th>Total Amount Paid:</th>
                <td><i class="fa fa-inr"></i> <%= totalAmount1 %></td>
            </tr>
        </table>
    </div>

    <div class="thank-you">
        <h4>Thank you for your payment!</h4>
        <p>Your order has been successfully processed.</p>
    </div>
</div>

<% 
        }
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>


</body>
</html>
