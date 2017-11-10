<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>ONLINE FOOD DELIVERY SYSTEM</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assests/css/main.css" />
		<style>
			body {margin:0;}

.topnav {
	margin-left:520px;
  overflow: hidden;
  background-color: #333;
  width:15%;
}

.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}


		</style>
	</head>
	<body id="top">
	
	
	
		
						<%
					    String user = (String)session.getAttribute("username");
					    %>
				<section id="banner" data-video="images/banner">
					<div class="inner">
						<header>
							<h1>ONLINE FOOD DELIVERY SYSTEM</h1>
							<p>Order food on the go anytime and get it delivered in no time at your door step.	<br />

						</header>
						<a href="#main" class="more">Order Now</a>
					</div>
				</section>
				<div class="topnav">
  					
  					<a href="#news">
  						<form action="llogout" method="post">
							<input type="submit" value="Logout" />
						</form>
  					</a>
  					
  					<a href="about.jsp">About</a>
</div>

			<!-- Main -->
				<div id="main">
					<div class="inner">

					<!-- Boxes -->
						<div class="thumbnails">

							<div class="box">
								<a href="res_1.jsp"><img src="images/res1.jpg" style="padding-left: 20px;"></a>
								<div class="inner">
									<h3>RESTAURANT 1</h3>

									<a href="res_1.jsp" class="button fit" >ORDER NOW</a>
								</div>
							</div>

							<div class="box">
								<a href="res_2.jsp"><img src="images/res2.jpg" style="padding-left: 20px;"></a>
								<div class="inner">
									<h3>RESTAURANT 2</h3>
									<a href="res_2.jsp" class="button style2 fit" >ORDER NOW</a>
								</div>
							</div>

							<div class="box">
								<a href="res_3.jsp"><img src="images/res3.jpg" style="padding-left: 20px;"></a>
								<div class="inner">
									<h3>RESTAURANT 3</h3>
									<a href="res_3.jsp" class="button style2 fit" >ORDER NOW</a>
								</div>
							</div>

							<div class="box">
								<a href="res_4.jsp"><img src="images/res4.jpg" style="padding-left: 20px;"></a>
								<div class="inner">
									<h3>RESTAURANT 4</h3>
									<a href="res_4.jsp" class="button style2 fit" >ORDER NOW</a>
								</div>
							</div>

							<div class="box">
								<a href="res_5.jsp"><img src="images/res5.jpg" style="padding-left: 20px;"></a>
								<div class="inner">
									<h3>RESTAURANT 5</h3>
									<a href="res_5.jsp" class="button style2 fit" >ORDER NOW</a>
								</div>
							</div>
							<div class="box">
								<a href="res_6.jsp"><img src="images/res6.jpg" style="padding-left: 20px;"></a>
								<div class="inner">
									<h3>RESTAURANT 6</h3>
									<a href="res_6.jsp" class="button style2 fit" >ORDER NOW</a>
								</div>
							</div>



						</div>

					</div>
				</div>

			<!-- Footer -->


		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.poptrox.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>
