<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String id = request.getParameter("id");
String action = request.getParameter("quantity"); // "inc" or "dec"
int price = 0;
int total = 0;
int quantity = 0;

try {
    // Load the JDBC driver and establish the connection
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/agri_project", "root", "root");

    // Query to get the current price, total, and quantity of the product in the cart
    String query = "SELECT price, total, quantity FROM cart WHERE product_id = ?";
    PreparedStatement ps = conn.prepareStatement(query);
    ps.setString(1, id);
    ResultSet rs = ps.executeQuery();

    // Check if the product exists in the cart
    if (rs.next()) {
        price = rs.getInt("price");
        total = rs.getInt("total");
        quantity = rs.getInt("quantity");

        // Handle decrement case
        if (quantity == 1 && "dec".equals(action)) {
            // Prevent decrement when quantity is 1
            response.sendRedirect("myCart.jsp?msg=notpossible");
        } else {
            // Update the quantity and total based on the action (increment or decrement)
            if ("dec".equals(action)) {
                total -= price;
                quantity -= 1;
            } else if ("inc".equals(action)) {
                total += price;
                quantity += 1;
            }

            // Update the cart with the new total and quantity
            String updateQuery = "UPDATE cart SET total = ?, quantity = ? WHERE product_id = ?";
            PreparedStatement psUpdate = conn.prepareStatement(updateQuery);
            psUpdate.setInt(1, total);
            psUpdate.setInt(2, quantity);
            psUpdate.setString(3, id);
            psUpdate.executeUpdate();

            // Redirect based on the action
            if ("dec".equals(action)) {
                response.sendRedirect("myCart.jsp?msg=dec");
            } else if ("inc".equals(action)) {
                response.sendRedirect("myCart.jsp?msg=inc");
            }
        }
    } else {
        // If the product is not found in the cart
        response.sendRedirect("myCart.jsp?msg=notpossible");
    }

    // Close the resources
    rs.close();
    ps.close();
    conn.close();

} catch (Exception e) {
    e.printStackTrace();
    response.sendRedirect("myCart.jsp?msg=error");
}
%>
