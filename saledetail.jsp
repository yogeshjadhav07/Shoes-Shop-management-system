<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%

String username=(String)session.getAttribute("a");
String Shoes_name=request.getParameter("name");
String shoes_price=request.getParameter("shoes_price");
String quantity1=request.getParameter("quantity");

String size=request.getParameter("buy");
out.println(Shoes_name);
out.println(username);
out.println(shoes_price);
out.println(quantity1);
out.println(size);
try{
	 Class.forName("org.postgresql.Driver");
	  Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","4144");

		  Statement stmt = con.createStatement();
			stmt.execute("insert into sale values('"+username+"','"+Shoes_name+"','"+shoes_price+"','"+size+"','"+quantity1+"')");
			out.println("Success!");
}
catch(Exception e)
{
	e.printStackTrace();
}
%>