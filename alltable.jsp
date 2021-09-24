<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tables</title>
</head>
<body>
<%
try
{
	Class.forName("org.postgresql.Driver");
	Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","4144");
	System.out.println("Connected!");
	Statement stmt=con.createStatement();
	String sql1="create table Admin11(username varchar(20) primary key,password varchar(20))";
	stmt.executeUpdate(sql1);
	System.out.println("table Created!");
	String sql="insert into Admin11 values('Yogesh','1234')";
	stmt.executeUpdate(sql);
	
	String sql2="create table customer(username varchar(20) primary key,phone varchar(20),address varchar(20),password varchar(20))";
	stmt.executeUpdate(sql2);
	
	String sql3="create table Product(Shoes_name varchar(20) primary key,Shoes_No varchar(20),Shoes_Size varchar(10),Shoes_price varchar(20))";
	stmt.executeUpdate(sql3);
	
	String sql4="create table sale(username varchar references customer(username),Mobile_Number varchar(20),Email varchar(20),Address varchar(20),City varchar(20),state  varchar(20),zip varchar(10),Shoes_name varchar references product(Shoes_name),shoesprice varchar(20))";
	stmt.executeUpdate(sql4);
	
	String sql5="create table payment(username varchar references customer(username),name_on_card varchar(20),Mobile_Number varchar(20),shoesprice varchar(20))";
	stmt.executeUpdate(sql5);
	
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>