<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html >
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<title>Urgan Gear</title>
	<link rel="stylesheet" href="welcome.css" type="text/css" media="all" />
<style type="text/css" media="screen">
			.tabbed { height:420px; }
		</style>
	
	<script src="jquery-1.4.1.min.js" type="text/javascript"></script>
	<script src="jquery.jcarousel.pack.js" type="text/javascript"></script>
	<script src="jquery.slide.js" type="text/javascript"></script>
	<script src="jquery-func.js" type="text/javascript"></script>
</head>
<body>
<%
String user1=(String)session.getAttribute("a");
out.println(user1);
%>
<!-- Top -->
<div id="top">
	
	<div class="shell">
		
		<!-- Header -->
		<div id="header">
			<h1 id="logo"><a href="#">Urgan Gear</a></h1>
			<div id="navigation">
				<ul>
				    <li><a href="#">Home</a></li>
					
					<li><a href="logout.jsp">Logout</a></li>
					
					<li class="last"><a href="Contact1.jsp">Contact</a></li>
				</ul>
			</div>
		</div>
		<!-- End Header -->
		
		<!-- Slider -->
		<div id="slider">
			<div id="slider-holder">
				<ul>
				    <li><a href="#"><img src="slide1.jpg" alt="" /></a></li>
				    <li><a href="#"><img src="slide2.jpg" alt="" /></a></li>
				    <li><a href="#"><img src="slide1.jpg" alt="" /></a></li>
				    <li><a href="#"><img src="slide2.jpg" alt="" /></a></li>
				    <li><a href="#"><img src="slide1.jpg" alt="" /></a></li>
				    <li><a href="#"><img src="slide2.jpg" alt="" /></a></li>
				</ul>
			</div>
			<div id="slider-nav">
				<a href="#" class="prev">Previous</a>
				<a href="#" class="next">Next</a>
			</div>
		</div>
		<!-- End Slider -->
		
	</div>
</div>
<!-- Top -->

<!-- Main -->
<div id="main">
	<div class="shell">
		
		<!-- Search, etc -->
		<div class="options">
			<div class="search">
				<form action="" method="post">
					<span class="field"><input type="text" class="blink" value="SEARCH" title="SEARCH"  /></span>
					<input type="text" class="search-submit" value="GO" />
				</form>
			</div>
			<span class="left"><a href="#">Advanced Search</a></span>
			
			<div class="right">
				<span class="cart">
					<a href="CartController" class="cart-ico">&nbsp;</a>
					<strong>RS 0.00</strong>
				</span>
				<span class="left more-links">
					<a href="#">Checkout</a>
					<a href="#">Details</a>
				</span>
			</div>
		</div>
		<!-- End Search, etc -->
		
		<!-- Content -->
		<div id="content">
			
			<!-- Tabs -->
			<div class="tabs">
				<ul>
				    <li><a href="#" class="active"><span>Safety Shoes</span></a></li>
				    <li><a href="#"><span>Sport Shoes</span></a></li>
				    <li><a href="#" class="red"><span>More Shoes</span></a></li>
				</ul>
			</div>
			<!-- Tabs -->
		
			<!-- Container -->
			<div id="container">
				
				<div class="tabbed">
					
					<!-- First Tab Content -->
					<div class="tab-content" style="display:block;">
						<div class="items">
							<div class="cl">&nbsp;</div>
							<ul>
							    <form action="CartController" method="post">
							    <li>
							    	<div class="image">
							    		<a href="http://localhost:8081/web_pro/product.jsp"><img src="image1.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    	<input type="hidden" name="name" id="name" value="Adidas Shoes1">
							    	<input type="hidden" name="price" id="price" value="3500">
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes1</a>
							    	</p>
							    <p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding: 5px 10px"><input type="submit" value="Add to Cart"  ></td>
							    </li>
							    </form>
							    
							    <form action="CartController" method="post">
							    <li>
							    	<div class="image">
							    		<a href="http://localhost:8081/web_pro/product1.jsp"><img src="image2.jpg" alt="" /></a>
							    	</div>
							    	
							    	<p>
							    	<input type="hidden" name="name" id="name" value="Adidas Shoes2">
							    	<input type="hidden" name="price" id="price" value="3000">
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes2</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3000 RS</strong></p>
							    	<td style="padding: 5px 10px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							    </form>
							    
							    <form action="CartController" method="post">
							    <li>
							    	<div class="image">
							    		<a href="http://localhost:8081/web_pro/product2.jsp"><img src="image3.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    	<input type="hidden" name="name" id="name" value="Adidas Shoes3">
							    	<input type="hidden" name="price" id="price" value="3500">
							            Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes3</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding: 5px 10px"><input type="submit" value="Add to Cart" target="CartCotroller.addToCart&product=Adidas Shoes&price=3000"></td>
							    </li>
							    </form>
							    
							    <form action="CartController" method="post">
							    <li>
							    	<div class="image">
							    		<a href="http://localhost:8081/web_pro/product3.jsp"><img src="image4.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    	<input type="hidden" name="name" id="name" value="Adidas Shoes4">
							    	<input type="hidden" name="price" id="price" value="3200">
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes4</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3200 RS</strong></p>
							    	<td style="padding: 5px 10px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							    </form>
							    
							    <li>
							    	<div class="image">
							    		<a href="http://localhost:8081/web_pro/product3.jsp"><img src="image4.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding: 5px 10px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="http://localhost:8081/web_pro/product2.jsp"><img src="image3.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding: 5px 10px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="http://localhost:8081/web_pro/product1.jsp"><img src="image2.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding: 5px 10px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="http://localhost:8081/web_pro/product.jsp"><img src="image1.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding: 5px 10px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							</ul>
							<div class="cl">&nbsp;</div>
						</div>
					</div>
					<!-- End First Tab Content -->
					
					<!-- Second Tab Content -->
					<div class="tab-content">
						<div class="items">
							<div class="cl">&nbsp;</div>
							<ul>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="css/images/image2.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding-left:28px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="css/images/image2.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding-left:28px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="css/images/image2.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding-left:28px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="css/images/image2.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding-left:28px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="css/images/image1.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding-left:28px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="css/images/image1.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding-left:28px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="css/images/image1.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding-left:28px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="css/images/image1.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding-left:28px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							</ul>
							<div class="cl">&nbsp;</div>
						</div>
					</div>
					<!-- End Second Tab Content -->
					
					<!-- Third Tab Content -->
					<div class="tab-content">
						<div class="items">
							<div class="cl">&nbsp;</div>
							<ul>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="css/images/image3.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding-left:28px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="css/images/image3.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding-left:28px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="css/images/image3.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding-left:28px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="css/images/image3.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding-left:28px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="css/images/image4.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding-left:28px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="css/images/image4.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding-left:28px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="image4.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding-left:28px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="image4.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding-left:28px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="image2.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding-left:28px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="image2.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding-left:28px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="image2.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding-left:28px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="image2.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding-left:28px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="image1.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding-left:28px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="image1.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding-left:28px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="image1.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		Brand Name: <a href="#">Adidas Shoes</a>
							    	</p>
							    	<p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding-left:28px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
							    <li>
							    	<div class="image">
							    		<a href="#"><img src="image1.jpg" alt="" /></a>
							    	</div>
							    	<p>
							    		Item Number: <span>125515</span><br />
							    		Size List : <span>8/8.5/9.5/10/11</span><br />
							    		<p class="product">Brand Name: <a href="#">Adidas Shoes</a></p>
							    	</p>
							    	 <p class="price">Wholesale Price: <strong>3500 RS</strong></p>
							    	<td style="padding-left:28px"><input type="submit" value="Add to Cart" target="myframe1"></td>
							    </li>
						    </ul>
							<div class="cl">&nbsp;</div>
						</div>
					</div>
					<!-- End Third Tab Content -->
					
				</div>
			
				
				<!-- Brands -->
				<div class="brands">
					<h3>Brands</h3>
					<div class="logos">
						<a href="#"><img src="logo1.gif" alt="" /></a>
						<a href="#"><img src="logo2.gif" alt="" /></a>
						<a href="#"><img src="logo3.gif" alt="" /></a>
						<a href="#"><img src="logo4.gif" alt="" /></a>
						<a href="#"><img src="logo5.gif" alt="" /></a>
					</div>
				</div>
				<!-- End Brands -->
				
				<!-- Footer -->
				<div id="footer">
					<div class="left">
						<a href="#">Home</a>
						<span>|</span>
						<a href="Aboutus.html">About Us</a>
						<span>|</span>
						<a href="Contactus.jsp">Contact Us</a>
					</div>
					<div class="right">
						&copy; Design by <a href="#" target="_blank" title="Templates">Yogesh jadhav</a>
					</div>
				</div>
				<!-- End Footer -->
				
			</div>
			<!-- End Container -->
			
		</div>
		<!-- End Content -->
		
	</div>
</div>
<!-- End Main -->
	
	
	
</body>
</html>