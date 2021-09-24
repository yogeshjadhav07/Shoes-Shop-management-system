<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>

<html lang="en">

<head>

  <meta charset="UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1.0">

 



  <title>Sign up </title>

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

  height: 160vh;

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
  <div class="login-wrapper">

    <form class="form">

      <img src="avatar.png" alt="">
         

      <h2>Sign Up</h2>

      <div class="input-group">

        <input type="text" name="user1" required >

        <label >User Name</label>

      </div>
       <div class="input-group">

        <input type="text" name="phone" size="10" required>

        <label>Mobile</label>

      </div>
       <div class="input-group">

        <input type="text" name="address" id="address" required>

        <label >Address</label>

      </div>
      <div class="input-group">

        <input type="password" name="loginPassword" id="loginPassword" required>

        <label>Password</label>

      </div>

      <div class="input-group">

        <input type="password" name="ConfirmPassword" id="ConfirmPassword" required>

        <label >Confirm Password</label>

      </div>

      <input type="submit" value="Sign up" class="submit-btn">
      
<div><a href="Customerlogin.jsp" class="forgot-pw">Already have an account?</a></div>
<div>.</div>
<div><a href="Home1.jsp" class="forgot-pw">Home-></a></div>


    </form>



   

    </div>



<%
String user1=request.getParameter("user1");
String phone=request.getParameter("phone");


String address=request.getParameter("address");
String loginPassword=request.getParameter("loginPassword");
out.println(user1);
out.println(address);
out.println(phone);
out.println(loginPassword);
if(user1!=null && phone!=null && address!=null && loginPassword!=null)
{
try
{
	  Class.forName("org.postgresql.Driver");
	  Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","4144");

		  Statement stmt = con.createStatement();
		  stmt.executeUpdate("insert into customer values('"+user1+"','"+phone+"','"+address+"','"+loginPassword+"')");
			out.println("Success!");
			
			 %>
			 
			 <a href="Customerlogin.jsp">Login</a>
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