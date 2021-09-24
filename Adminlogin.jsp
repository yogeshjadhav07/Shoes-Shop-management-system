<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>

<html lang="en">

<head>

  <meta charset="UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1.0">


 

  <title>Login Form </title>

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

    <form action="" class="form">

      <img src="avatar.png" alt="">

      <h2>Admin Login</h2>

      <div class="input-group">

        <input type="text" name="user1" id="loginUser" required>

        <label for="loginUser">User Name</label>

      </div>

      <div class="input-group">

        <input type="password" name="password" id="loginPassword" required>

        <label for="loginPassword">Password</label>

      </div>

      <input type="submit" value="Login" class="submit-btn">

      <a href="#forgot-pw" class="forgot-pw">Forgot Password?</a>
      <div>.</div>
<div><a href="Home1.jsp" class="forgot-pw">Home-></a></div>

      

    </form>



    <div id="forgot-pw">

      <form action="" class="form">

        <a href="#" class="close">&times;</a>

        <h2>Reset Password</h2>

        <div class="input-group">

          <input type="email" name="email" id="email" required>

          <label for="email">Email</label>

        </div>

        <input type="submit" value="Submit" class="submit-btn">

      </form>

    </div>

  </div>
  
  
  
  <%
String user1=request.getParameter("user1");
String password=request.getParameter("password");
session.setAttribute("a", user1);
try
{
	  Class.forName("org.postgresql.Driver");
	  Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","4144");
	  Statement stmt = con.createStatement();
      ResultSet rs=stmt.executeQuery("select * from Admin11 where username='"+user1+"'");
	  rs.next();
	  String p=rs.getString("password");
	  if(password.equals(p))
	  {%>
	  <jsp:forward page="Dashboard.jsp"/>
		  
	 <% }
	  else
		{
		 %><script type="text/javascript" language="javascript">
			  alert("Your ID and Password do not match.Enter a valid Login Id and Password.");
			  </script>
		 <%}
		
}
catch(Exception e)
{
	e.printStackTrace();
	System.out.print(e);
}

%>

  
  

</body>

</html>