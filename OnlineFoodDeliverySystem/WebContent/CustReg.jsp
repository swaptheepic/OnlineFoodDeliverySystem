<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page language="java" import="java.sql.*"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<head>
<%
	if (request.getParameter("success") != null) {
		out.println(
				"<script>alert('Registration Successful..')</script>");
		          response.sendRedirect("login.jsp?success");

	} else if (request.getParameter("same") != null) {
		out.println("<script>alert('Registration Unsuccessful..User Already Exists')</script>");
		//response.sendRedirect("learner.jsp");
	}
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Food Delivery System</title>
<meta name="keywords"
	content="free css layout, old blog template, CSS, HTML" />
<meta name="description"
	content="Old Blog Template - free website template provided by TemplateMo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<!--  Designed by w w w . t e m p l a t e m o . c o m  -->
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
			</ul>
		</div>
	</div>
	<!-- end of menu -->

	<div id="templatemo_content_container">
		<div id="templatemo_content">
			<div id="templatemo_content_left">

				<div class="templatemo_post_wrapper">
					<div class="templatemo_post">
						<div align="center">
							<h3>Customer Registration</h3>
							<br />
							<form action="lreg" name="ureg" method="post">

								<table border="0" cellpadding="5" cellspacing="8">
									<tr>
										<td>Customer Name</td>
										<td><input type="text" name="fname"
											pattern="[a-zA-Z]{1,}" id="fname" placeholder=" Name"
											style="height: 28px" onblur="AllowAlphabet()" required /></td>

									</tr>
									<tr>
										<td>Address</td>
										<td><input type="text" name="address" id="address"
											style="height: 28px" placeholder="Address" required /></td>

									</tr>
									<tr>
										<td>Mobile Number</td>
										<td><input type="text" name="mbnumber" pattern="\d{10}"
											maxlength="10" id="mbnumber" style="height: 28px"
											placeholder="Enter only 10 Digit" onblur="return Validate()"
											required /></td>

									</tr>

									<%
										Date current = new Date();
										Calendar cal = Calendar.getInstance();

										SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");

										String formatted = format1.format(cal.getTime());
										System.out.println("Application date " + formatted);
									%>


									<tr>
										<td>Username</td>
										<td><input type="text" name="uname" id="uname"
											style="height: 28px" placeholder="Username" required /></td>
										<td align="center">Password</td>
										<td><input type="password" name="pwd" pattern=".{6,}"
											id="pwd" style="height: 28px" placeholder="password > 6 "
											required /></td>
									</tr>


									<tr />

									<tr>
										<td></td>
										<td align="center"><input type="submit"
											style="height: 45px; width: 120px;" value="Registration"></td>

										<td></td>
										<td align="left"><input type="reset"
											style="height: 45px; width: 120px;" value="Reset"></td>

									</tr>
								</table>
							</form>
						</div>



					</div>
				</div>
</html>