<Html>  
<head>   
<title>  
Registration Page  
</title> 

<style>
body { 
	background-image:url('slidingimage3.jpg');
	
	}</style>

<style background>
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}
img.avatar {
  width: 20%;
  border-radius: 40%;
}
span.psw {
  float: right;
  padding-top: 6px;
}

</style>
</head>  

<body  >  <form action="Home.jsp">
  <input type="image" src="logo-shoe-3.jpg" alt="Submit" width="50" height="50">
</form>



<br>  
<br>
<form action="/action_page.php" method="post">
  <div class="imgcontainer">
    <img src="login.png" alt="Avatar" class="avatar">
  </div>  
<h2  style= font-size:20px; ><i> <b>Create account.</b></i></h2>
<form>  
  
<label> <b>Firstname </label>         
<input type="text" name="firstname" size="15"/> <t>   
<label> Middlename: </label>     
<input type="text" name="middlename" size="15"/>   
<label> Lastname: </b></label>         
<input type="text" name="lastname" size="15"/> <br>   
    
<br>  

<label>   
<b>Gender :</b>  
</label>   
<select>  
<option value="Select"><b>Select</b></option>  
<option value="Male"><b>Male</b></option>  
<option value="Female"><b>Female</b></option>  
<option value="Other"><b>Other</b></option>  
</select>    
<center><label>   
<b>Phone :</b> 
</label>  
<input type="text" name="country code"  value="+91" size="2"/>   
<input type="text" name="phone" size="10"/> <br> <br></center>   
<b>Address:</b>  
<br>  
<textarea cols="80" rows="5" value="address">  
</textarea>  
<br> <br>  
<b>Email:</b>  
<input type="email" id="email" name="email"/> <t> 
<b>Password:</b>  
<input type="Password" id="pass" name="pass"> <t>    
  
<b>Re-type password:</b>  
<input type="Password" id="repass" name="repass"> <br> <br>  
 <a href="login.jsp"><input type="button" value="Submit" /> </a>
 
 <span class="psw">Already a account?<a href="login.jsp"><input type="button" value="Login" /> </a></span>
</form>  
</body>  
</html>