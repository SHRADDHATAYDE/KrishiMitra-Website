<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <h2>Payment Form</h2>

    <script>
        // Retrieve parameters from URL
        const urlParams = new URLSearchParams(window.location.search);
        const productId = urlParams.get('productId');
        const total = urlParams.get('total');

        // Use the retrieved values as needed
        document.addEventListener('DOMContentLoaded', function() {
            document.getElementById('productId').innerText = productId;
            document.getElementById('totalAmount').innerText = total;
        });
    </script>

    <form method="post" action="processPayment">
        <div class="form-group">
            <label>Product ID:</label>
            <span id="productId"></span>
        </div>
        <div class="form-group">
            <label>Total Amount:</label>
            <span id="totalAmount"></span>
        </div>
        <!-- Other payment fields like card details go here -->
        <button type="submit" class="btn btn-primary">Pay Now</button>
    </form>
</div>

</body>
</html>
