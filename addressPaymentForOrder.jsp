<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Confirmation</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
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
                        
                        
                         
                    </ul>

                </div>
            </div>
        </nav>
    </header>
    <div class="container mt-5">
        <h2 class="text-center mb-4">Confirm Your Order</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Product Name</th>
                    <th>Category</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>
                <%
                    int totalAmount = 0;
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/agri_project", "root", "root");
                        Statement st = conn.createStatement();
                        ResultSet rs = st.executeQuery("SELECT * FROM product INNER JOIN cart ON product.id=cart.product_id");
                       // ResultSet rs2=st.executeQuery("select sum(quantity) from cart");
                        
                        while (rs.next()) {
                            int price = rs.getInt("price");
                            int quantity = rs.getInt("quantity");
                            int subTotal = price * quantity;
                          //  int TotalQuantity=rs2.getInt("2");
                            //totalAmount += subTotal;
                            
                           totalAmount=subTotal+totalAmount;
                            
                           
                           
                           HttpSession ses=request.getSession();
                            ses.setAttribute("price", price);
                            ses.setAttribute("quantity", quantity);
                            ses.setAttribute("subTotal", subTotal);
                            ses.setAttribute("totalAmount", totalAmount);
                          //  ses.setAttribute("TotalQuantity", TotalQuantity);
                %>
                <tr>
                    <td><%= rs.getString("name") %></td>
                    <td><%= rs.getString("category") %></td>
                    <td><i class="fa fa-inr"></i> <%= price %></td>
                    <td><%= quantity %></td>
                    <td><i class="fa fa-inr"></i> <%= subTotal %></td>
                </tr>
                <%
                        }
                        
                %>
            </tbody>
        </table>

        <h4>Total Amount: <i class="fa fa-inr"></i> <%= totalAmount %></h4>

        <!-- Address and Payment Form -->
        <form action="addressPaymentForOrderAction.jsp" method="post">
            <div class="mb-3">
                <label for="address" class="form-label">Address</label>
                <textarea class="form-control" id="address"  name="address" rows="3" required></textarea>
            </div>
            <div class="mb-3">
                <label for="paymentMethod" class="form-label">Payment Method</label>
                <select class="form-select" id="paymentMethod" name="paymentMethod" required>
                    <option value="creditCard">Credit Card</option>
                    <option value="debitCard">Debit Card</option>
                    <option value="netBanking">Net Banking</option>
                    <option value="cod">Cash on Delivery</option>
                </select>
            </div>

            <button type="submit" class="btn btn-primary">Place Order</button>
        </form>

        <%
            rs.close();
            st.close();
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        %>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+GYuTk5w5UJ0E7B3f4LbsOB8yM9n9" crossorigin="anonymous">
    </script>
</body>
</html>
