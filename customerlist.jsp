<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<% Class.forName("org.postgresql.Driver"); %>
<HTML>
       <HEAD>
       <TITLE>Customer list </TITLE>
       </HEAD>
       </table>

 

       <BODY>
       <style>
       .container{
	width: 100%;
	height: 100vh;
	background-image: url(Aboutback.jpg);
	background-position: center;
	background-size: cover;
	padding-left: 8%;
	padding-right: 8%;
	box-sizing: border-box;
}
.h1{
	color: black;
	 text-shadow: 2px 2px 8px #FF0000;
	font-size: 30px;
}
table {
	border: 2px solid black;
	width: 100%;
	height: 20%;
	
}
 th{
 border: 1px solid black;
padding: 6px;
background-color: dodgerblue;
 text-align: left;
 font-size: 20px;
 }
 
 td{
 border: 1px solid black;
padding: 6px;
font-size: 20px;
 }
 tr:hover{
background-color: dodgerblue;
	
}

</style>
<div class="container">
       <div class="h1">Welcome <%= session.getAttribute("a") %>  <br> Customer List:-> </div>
       <%
 	  Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","4144");
           Statement statement = con.createStatement() ;
          ResultSet resultset = statement.executeQuery("select * from customer") ;
       %>
      <table>
      
      <tr>
      <th>User_Name</th>
      <th>Phone_N0</th>
      <th>Address</th>
      <th>password</th>
      
      </TR>
      <% while(resultset.next()){ %>
      <tr>
       <td> <%= resultset.getString(1) %></td>
       <td> <%= resultset.getString(2) %></td>
       <td> <%= resultset.getString(3) %></td>
       <td> <%= resultset.getString(4) %></td>
      
       

      </tr>
      <% } %>
     </table>
     </div>
     </BODY>
</HTML>