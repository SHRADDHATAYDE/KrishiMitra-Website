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
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
   
   <style>
     body {
            background-color: #f8f9fa;
        }

        .container {
            margin-top: 20px;
            padding: 15px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            max-width: 500px; /* Limit the width of the form */
        }

        h2 {
            font-size: 1.5rem;
            margin-bottom: 15px;
            text-align: center;
        }

        .form-control,
        .form-control-file {
            border-radius: 5px;
        }

        .btn {
            border-radius: 5px;
        }
   </style>
</head>
<body>

<!-- JavaScript alert based on message -->
<%
    String msg = request.getParameter("msg");
    if ("added".equals(msg)) {
%>
        <script>alert("Product added successfully!");</script>
<%
    } else if ("wrong".equals(msg)) {
%>
        <script>alert("Something went wrong! Try again.");</script>
<%
    }
%>

<%
    int id = 1;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/agri_project", "root", "root");
        Statement stat = con.createStatement();
        ResultSet rs = stat.executeQuery("select max(id) from farmer_sell");
        
        if (rs.next()) {
            id = rs.getInt(1) + 1;
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

<header class="head text-center pb-5">
    <nav class="navbar navbar-expand-lg navbar-light fixed-top bg-body-tertiary">
        <div class="container-fluid">
            <a class="navbar-brand text-uppercase fw-bold text-white ms-5 ps-5 pe-5" style="background-color: darkcyan" href="#">
                Krishi Mitra
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                    aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </nav>
</header>

<div class="container">
    <h2>Product Entry</h2>
    <form id="productForm" method="get" action="productentryaction">
        <div class="form-group row">
            <div class="col-md-6">
                <label for="farmerName">Farmer's Name:</label>
                <input type="text" class="form-control" id="farmerName" name="input1" required>
            </div>
            <div class="col-md-6">
                <label for="farmerAddress">Address:</label>
                <input type="text" class="form-control" id="farmerAddress" name="input2" required>
            </div>
        </div>

        <div class="form-group">
            <label for="productName">Product Name:</label>
            <input type="text" class="form-control" id="productName" name="input3" required>
        </div>

        <div class="form-group row">
            <div class="col-md-6">
                <label for="productPrice">Price:</label>
                <input type="number" class="form-control" id="productPrice" name="input4" required step="0.01" oninput="calculateTotal()">
            </div>
            <div class="col-md-6">
                <label for="productQuantity">Quantity:</label>
                <input type="number" class="form-control" id="productQuantity" name="input5" required oninput="calculateTotal()">
            </div>
        </div>

        <div class="form-group">
            <label for="sellingDay">Day of Sale:</label>
            <input type="date" class="form-control" id="sellingDay" name="input6" required>
        </div>

        <div class="form-group">
            <label for="productImage">Image:</label>
            <input type="file" class="form-control-file" id="productImage" name="input7" required>
        </div>

        <div class="form-group">
            <label for="totalPrice">Total Price:</label>
            <input type="text" class="form-control" id="totalPrice" name="input8" readonly>
        </div>

        <button type="submit" class="btn btn-primary btn-block">Submit</button>
    </form>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script>
    function calculateTotal() {
        const price = parseFloat(document.getElementById('productPrice').value) || 0;
        const quantity = parseInt(document.getElementById('productQuantity').value) || 0;
        const total = price * quantity;
        document.getElementById('totalPrice').value = total.toFixed(2);
    }
</script>

</body>
</html>
