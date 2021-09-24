<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<% Class.forName("org.postgresql.Driver"); %>
<HTML>
       <HEAD>
       <TITLE>Product list </TITLE>
       </HEAD>
       </table>
<style>.container{
	width: 100%;
	height: 100vh;
	background-image: url(Aboutback.jpg);
	background-position: center;
	background-size: cover;
	padding-left: 8%;
	padding-right: 8%;
	box-sizing: border-box;
}

TABLE {
	border: 2px solid black;
	width: 100%;
	height: 20%;
	
}
 TH{
 border: 1px solid black;
padding: 6px;
background-color: pink;
 text-align: left;
 font-size: 20px;
 }
 
 TD{
 border: 1px solid black;
padding: 6px;
font-size: 20px;
 }
 TR:hover{
background-color: dodgerblue;
	
}
.container H1{
 text-shadow: 2px 2px 8px #FF0000;}
</style>
<div class="container">
 <H1>Welcome <%= session.getAttribute("a") %> </H1>

<table border="0" width="100%" >
<tr>
<td colspan="4"><h2>shoes</h2><hr></td>
</tr>
<tr>
<th> <img src="image1.jpg" width="90%">

   Brand Name: <a href="#">Adidas</a></p>
</th>

<th> <img src="image2.jpg"width="90%">

   Brand Name: <a href="#">Sparx</a></p>
</th>

<th> <img src="image3.jpg"width="90%">

   Brand Name: <a href="#">Bata</a></p>
</th>

<th> <img src="image4.jpg"width="90%">

   Brand Name: <a href="#">Fila</a></p>
</th>

</tr>
</table>
       <BODY >
      
       <%
 	  Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","4144");
           Statement statement = con.createStatement() ;
          ResultSet resultset = statement.executeQuery("select * from product") ;
       %>
      <TABLE >
      
      <TR>
      <TH>Shoes_Name</TH>
      <TH>Shoes_N0</TH>
      <TH>Shoes_Size</TH>
      <TH>Shoes_Price</TH>
      
      </TR>
      <% while(resultset.next()){ %>
      <TR>
       <TD> <%= resultset.getString(1) %></td>
       <TD> <%= resultset.getString(2) %></TD>
       <TD> <%= resultset.getString(3) %></TD>
       <TD> <%= resultset.getString(4) %></TD>
      
       

      </TR>
      <% } %>
     </TABLE>
     </BODY>
     </div>
</HTML>