<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

	<%@page import="TestCases.Restaurant_Testing"%>

	<%@page import="connection.DB_Connection"%>

	


	<%@page import="java.text.DateFormat"%>
	<%@page import="java.text.SimpleDateFormat"%>
	<%@page import="java.util.Date"%>
	<%@page import="java.util.Calendar"%>
	<%@page import="java.sql.Connection"%>
	<%@page import="java.sql.PreparedStatement"%>
	<%@page import="java.sql.ResultSet"%>

<!DOCTYPE HTML>

<html>
	<head>
		<title>ONLINE FOOD DELIVERY SYSTEM</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assests/css/main.css" />
		<script src="https://code.jquery.com/jquery-3.2.1.js"
			integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
			crossorigin="anonymous"></script>

		<style>
			body {
			margin:0;
			color=#black;
			}
			

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
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
    color:black;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    
}

#customers tr{background-color: #f2f2f2;}


#customers tr:hover {background-color: #ddd;}

#customers th {
    
    text-align: center;
    background-color: #4CAF50;
    color: white;
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
						<a href="restaurants.jsp">Back</a>
  					<a href="#news">
  						<form action="llogout" method="post">
							<input type="submit" value="Logout" />
						</form>
  					</a>

</div>

			<!-- Main -->
				<div id="main">
					<div class="inner">

					<!-- Boxes -->
						

							
								<form action="calc" method="post">
									<input type="hidden" name="rest" value="rest1"></input>
									
									<table align="center"  border="1" id="customers" cellspacing="10"
										 bgcolor="black" name="menu" width="20%" style="font-size:18px;">


										<tr>
											<th align="center">SR No.</th>
											<th>MENU ITEM</th>
											<th>PRICE</th>
											<th>QUANTITY</th>
										</tr>
										<%
											Connection con = DB_Connection.get_connection();
											PreparedStatement ps = con.prepareStatement("select * from res4");
											ResultSet rs = ps.executeQuery();
											String m_item, price;
											int sr = 0;
											while (rs.next()) {
												sr++;
												m_item = rs.getString("Name");
												price = rs.getString("Price");



												System.out.println(m_item + " " + price);
										%>

										<tr align="center">
											<td><%=sr%></td>
											<td><input type="hidden" name="m_item<%=sr%>"
												value=<%=m_item %>></input><%=m_item %></td>
											<td><input type="hidden" name="m_price<%=sr%>"
												value=<%=price %>></input><%=price%>/-</td>
											<td>

												<div id="input_div">
													<p>
														<img src="http://i.imgur.com/yOadS1c.png" id="minus1"
															width="20" height="20" class="minus" /> <input
															name="qty<%=sr%>" id="qty<%=sr%>" type="text" value="0"
															class="qty" /> <img id="add1"
															src="http://i.imgur.com/98cvZnj.png" width="20"
															height="20" class="add" />
													</p>
												</div>
											</td>
										</tr>
										<%
											}

										%>

									</table>
																	
							</div>

							</div>

						<input  style="float:right;margin-right:16cm;" type="submit" value="ORDER NOW" id="submit" ></input>
							</form>

					
				</div>

			<!-- Footer -->


		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.poptrox.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script>
				$(function() {
					$('.minus,.add')
							.on(
									'click',
									function() {
										var $qty = $(this).closest('p').find('.qty'), currentVal = parseInt($qty
												.val()), isAdd = $(this).hasClass('add');
										!isNaN(currentVal)
												&& $qty.val(isAdd ? ++currentVal
														: (currentVal > 0 ? --currentVal
																: currentVal));
									});
				});
			</script>
	</body>
</html>
