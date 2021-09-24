<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>

<html lang="en">

<head>

  <meta charset="UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1.0">

 



  <title>Add product </title>

</head>

<body>
<style>
* {

  margin: 0;

  padding: 0;

  box-sizing: border-box;

}

body {

  background: url('pexels-melvin-buezo-2529148.jpg') no-repeat center;

  background-size: cover;

  font-family: sans-serif;

}

.login-wrapper {

  height: 100vh;

  width: 100vw;

  display: flex;

  justify-content: center;

  align-items: center;

}

.form {

  position: relative;

  width: 100%;

  max-width: 380px;

  padding: 80px 40px 40px;

  background: rgba(0,0,0,0.7);

  border-radius: 10px;

  color: #fff;

  box-shadow: 0 15px 25px rgba(0,0,0,0.5);

}

.form::before {

  content:'';

  position: absolute;

  top: 0;

  left: 0;

  width: 50%;

  height: 100%;

  background: rgba(255,255,255, 0.08);

  transform: skewX(-26deg);

  transform-origin: bottom left;

  border-radius: 10px;

  pointer-events: none;

}

.form img {

  position: absolute;

  top: -50px;

  left: calc(50% - 50px);

  width: 100px;

  background: rgba(255,255,255, 0.8);

  border-radius: 50%;

}
.admin{
color:black;}
.admin h1 {

font-size:50px;
 text-shadow: 2px 2px 8px #FF0000;
}

.card{
	width: 80px;
	height: 80px;
	display: inline-block;
	border-radius: 10px;
	padding: 15px 25px;
	box-sizing: border-box;
	cursor: pointer;
	margin: 10px 15px;
	
	background-position: center;
	background-size: cover;
	transition: transform 0.5s;
}


.card3{
	background-image: url(avatar.png);
}

.form h2 {

  text-align: center;

  letter-spacing: 1px;

  margin-bottom: 2rem;

  color: #ff652f;

}

.form .input-group {

  position: relative;

}

.form .input-group input {

  width: 100%;

  padding: 10px 0;

  font-size: 1rem;

  letter-spacing: 1px;

  margin-bottom: 30px;

  border: none;

  border-bottom: 1px solid #fff;

  outline: none;

  background-color: transparent;

  color: inherit;

}

.form .input-group label {

  position: absolute;

  top: 0;

  left: 0;

  padding: 10px 0;

  font-size: 1rem;

  pointer-events: none;

  transition: .3s ease-out;

}

.form .input-group input:focus + label,

.form .input-group input:valid + label {

  transform: translateY(-18px);

  color: #ff652f;

  font-size: .8rem;

}

.submit-btn {

  display: block;

  margin-left: auto;

  border: none;

  outline: none;

  background: #ff652f;

  font-size: 1rem;

  text-transform: uppercase;

  letter-spacing: 1px;

  padding: 10px 20px;

  border-radius: 5px;

  cursor: pointer;

}

.forgot-pw {

  color: inherit;

}



#forgot-pw {

  position: absolute;

  display: flex;

  justify-content: center;

  align-items: center;

  top: 0;

  left: 0;

  right: 0;

  height: 0;

  z-index: 1;

  background: #fff;

  opacity: 0;

  transition: 0.6s;

}

#forgot-pw:target {

  height: 100%;

  opacity: 1;

}

.close {

  position: absolute;

  right: 1.5rem;

  top: 0.5rem;

  font-size: 2rem;

  font-weight: 900;

  text-decoration: none;

  color: inherit;

}
</style>
<div class="card card3">
				</div>
<div class="admin">
		<h1>Welcome<%
String user1=(String)session.getAttribute("a");
out.println(user1);
%></h1></div>
  <div class="login-wrapper">

    <form class="form">

      <img src="image3.jpg" alt="">
         

      <h2>Add Product</h2>

      <div class="input-group">

        <input type="text" name="shoes_name" required >

        <label >Shoes_name</label>

      </div>
       <div class="input-group">

        <input type="text" name="number" required >

        <label>Shoes_no</label>

      </div>
       <div class="input-group">

        <input type="text" name="size" id="size" required>

        <label >Shoes_size</label>

      </div>
     
      <div class="input-group">

        <input type="text" name="price" required>

        <label>Shoes_price</label>

      </div>

      <input type="submit" value="ADD" class="submit-btn">
      
<div>.</div>
<div><a href="Dashboard.jsp" class="forgot-pw">cancel</a></div>
    </form>

    </div>


<%
String name=request.getParameter("shoes_name");
String number=request.getParameter("number");


String size=request.getParameter("size");
String quantity=request.getParameter("quantity");
String price=request.getParameter("price");
out.println(name);
out.println(number);
out.println(size);
out.println(quantity);
out.println(price);
if(name!=null && number!=null && size!=null && price!=null)
{
try
{
	  Class.forName("org.postgresql.Driver");
	  Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","4144");

		  Statement stmt = con.createStatement();
		  stmt.executeUpdate("insert into product values('"+name+"','"+number+"','"+size+"','"+price+"')");
			out.println("Success!");
			
			 %>
			 <h1>Dashboard</h1>
			 <a href="Adminlogin.jsp">Back</a>
			 <%
}
catch(Exception e)
{
	e.printStackTrace();
	System.out.print(e);
}
}
else
{%>
	<script type="text/javascript" language="javascript">
	alert("Feilds must contains some value");
	</script>

<%}
%>


</body>

</html>