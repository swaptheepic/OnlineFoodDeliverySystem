<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Food Delivery System</title>
<meta name="keywords" content="free css layout, old blog template, CSS, HTML" />
<meta name="description" content="Old Blog Template - free website template provided by TemplateMo.com" />

<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="tabcontent.css" />
<script type="text/javascript" src="tabcontent.js">

</script>
</head>
<body>
	<div id="templatemo_header_panel">
		<div id="templatemo_title_section">
			<h2>Online Food Delivery System</h2>
		</div>
	</div>
	<!-- end of templatemo header panel -->

	<div id="templatemo_menu_panel">
		<div id="templatemo_menu_section">
			<ul>
				<li><a href="index.jsp" class="active">Home</a></li>
				<form action="llogout" method="post">
					<input type="submit" value="Logout" />
				</form>

				<li><a href="about.jsp">About</a></li>
			</ul>
		</div>
	</div>
	<!-- end of menu -->

	<%
    String user = (String)session.getAttribute("username");
    %>

	<div id="templatemo_content_container">
		<div id="templatemo_content">
			<div id="templatemo_content_left">

				<div class="templatemo_post_wrapper">
					<div class="templatemo_post">

						<div class="post_info">
							<!-- Posted by <a href="http://www.templatemo.com" target="_blank">templatemo.com</a>, December 7, 2048 at 10:12 am, in <a href="#">Player.</a> -->
						</div>
						<div class="post_body">
							<center>
								<a href="res_1.jsp"><img src="images/res1.jpg"
									style="padding-left: 20px;"></a> <a href="res_2.jsp"><img
									src="images/res2.jpg" style="padding-left: 20px;"></a> <a
									href="res_3.jsp"><img src="images/res3.jpg"
									style="padding-left: 20px;"></a> <a href="res_4.jsp"><img
									src="images/res4.jpg" style="padding-left: 20px;"></a> <a
									href="res_5.jsp"><img src="images/res5.jpg"
									style="padding-left: 20px;"></a> <a href="res_6.jsp"><img
									src="images/res6.jpg" style="padding-left: 20px;"></a>
							</center>


						</div>

					</div>
				</div>
</html>
