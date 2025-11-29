<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
String name=request.getParameter("input1");
String address=request.getParameter("input2");
String productname=request.getParameter("input3");
String price=request.getParameter("input4");
String quantity=request.getParameter("input5");
String dateofsell=request.getParameter("input6");
String image=request.getParameter("input7");
String total=request.getParameter("input8");

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/agri_project", "root", "root");
    
    // Assuming 'id' is auto-incremented, so it's not part of the INSERT query
    String query = "INSERT INTO farmer_sell (f_name, f_address, product_name, price, quantity, dateofsell, image, total) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    PreparedStatement ps = con.prepareStatement(query);
    
    ps.setString(1, name);
    ps.setString(2, address);
    ps.setString(3, productname);
    ps.setString(4, price);
    ps.setString(5, quantity);
    ps.setString(6, dateofsell);
    ps.setString(7, image);
    ps.setString(8, total);
    
    int result = ps.executeUpdate();
    
    if (result > 0) {
        response.sendRedirect("farmersellproduct.jsp?msg=added");
    } else {
        response.sendRedirect("farmersellproduct.jsp?msg=wrong");
    }
    
    con.close();
} catch (SQLException e) {
    e.printStackTrace();
    response.sendRedirect("farmersellproduct.jsp?msg=wrong");
} catch (ClassNotFoundException e) {
    e.printStackTrace();
    response.sendRedirect("farmersellproduct.jsp?msg=wrong");
}
%>
