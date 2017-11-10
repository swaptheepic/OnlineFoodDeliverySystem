<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>ONLINE FOOD DELIVERY SYSTEM</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assests/css/main.css" />
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

			<!-- Main -->
				<div id="main">
					<div class="inner">

					<!-- Boxes -->
						<div class="thumbnails">

							<div class="box">

								<div class="inner">
									<h3>LOGIN</h3>

									<a href="login.jsp" class="button fit" >LOGIN</a>
								</div>
							</div>

							<div class="box">

								<div class="inner">
									<h3>REGISTRATION</h3>
									<a href="CustReg.jsp" class="button style2 fit" >REGISTRATION</a>
								</div>
							</div>

							<div class="box">

								<div class="inner">
									<h3>COOK LOGIN</h3>
									<a href="admin.jsp" class="button style2 fit" >COOK LOGIN</a>
								</div>
							</div>

							<div class="box">
								<div class="inner">
									<h3>ABOUT</h3>
									<a href="about.jsp" class="button style2 fit" >ABOUT</a>
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
