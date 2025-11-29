<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
String product_id=request.getParameter("id");
int quantity=1;
int product_price=0;
int product_total=0;
int cart_total=0;

int z=0;
try{
	Class.forName("com.mysql.cj.jdbc.Driver");

	//establish the connection

	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agri_project","root","root");
	//Create statment
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from product where id='"+product_id+"'");
	while(rs.next()){
		product_price=rs.getInt(4);
		product_total=product_price;
		
	}
	ResultSet rs1=st.executeQuery("select * from cart where product_id='"+product_id+"'");
	while(rs1.next()){
		cart_total=rs1.getInt(4);
		cart_total=cart_total+product_total;
		quantity=rs1.getInt(2);
		quantity=quantity+1;
		z=1;
	}
	if(z==1){
		st.executeUpdate("update cart set total='"+cart_total+"',quantity='"+quantity+"' where product_id="+product_id+"");
		response.sendRedirect("customerhome.jsp?msg=exit");
	}
	if(z==0){
		PreparedStatement ps=con.prepareStatement("insert into cart(product_id,quantity,price,total) values(?,?,?,?)");
		ps.setString(1,product_id);
		ps.setInt(2,quantity);
		ps.setInt(3,product_price);
		ps.setInt(4,product_total);
		ps.executeUpdate();
		response.sendRedirect("customerhome.jsp?msg=added");
		
	}
	
}
catch(Exception e){
	System.out.println(e);
	response.sendRedirect("customerhome.jsp?msg=invalid");
}
%>