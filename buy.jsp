<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<% Class.forName("org.postgresql.Driver"); %>
<HTML>
       <HEAD>
       <TITLE>Product page </TITLE>
       </HEAD>
       </table>
       <style>
       
table {
	border: 2px solid black;
	width: 100%;
	height: 30%;
	
}
 th{
 border: 1px solid black;
padding: 6px;
background-color: pink;
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

.container H1{ text-shadow: 2px 2px 8px #FF0000;}
 
       </style>
<div class="container">
 <H1>Welcome <%= session.getAttribute("a") %> </H1>

<table >
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

   
      
      <tr>
      <th>Shoes_Name</th>
      <th>Shoes_N0</th>
    
      <th>Shoes_Price</th>
      
      <th><font color='#D18603'>size</font>
      </tr>
      <%
      

     
      Class.forName("org.postgresql.Driver");
	  Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","4144");
	  Statement st = con.createStatement();
          Statement statement = con.createStatement() ;
         ResultSet rs = statement.executeQuery("select * from product") ;
      
      
        
      
      while(rs.next()) {

          String shoes_name= rs.getString(1);
          String shoes_no = rs.getString(2);
        
          String shoes_price= rs.getString(4);
        
         

          out.println("<tr>");
          out.println("<td>" + shoes_name + "</td>");
          out.println("<td>" + shoes_no + "</td>");
          
          out.println("<td>" + shoes_price + "</td>");
          

          out.println("<td><b><form action='checkout.jsp'><select name='buy'><option value='06'>06</option><option value='07'>07</option><option value='08'>08</option><option value='09'>09</option><option value='10'>10</option></select><input type='submit' value='BUY'>  <input type=\"hidden\" id=\"activityid1Value\" name=\"name\" value=\""+shoes_name +"\">  <input type=\"hidden\" id=\"activityid1Value\" name=\"shoes_price\" value=\""+shoes_price +"\"> </form></b>");
          out.println("</tr>");
      }
      st.close();

  %>


    </table>
    </div>
     </BODY>
</HTML>