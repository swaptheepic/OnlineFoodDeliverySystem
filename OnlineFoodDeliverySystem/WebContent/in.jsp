<%@page import="connection.DB_Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>



<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%
	String user = (String) session.getAttribute("username");
	if (user != null) {
		HttpSession s = request.getSession();
%>
<style>
body {
	display: flex;
	flex-direction: column;
	margin: 0px;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	position: absolute;
}

h1 {
	color: black;
	font-family: Times New Roman;
	font-size: 80%;
}

p {
	color: Red;
	font-family: Times New Roman;
	font-size: 150%;
}

p1 {
	color: black;
	font-family: Times New Roman;
	font-size: 150%;
}

p2 {
	color: black;
	font-family: Times New Roman;
	font-size: 100%;
}

#header {
	height: 150px;
	color: #ccc;
	background-color: Gray;
	padding-left: 15px;
	padding-top: 15px;
	text-align: center;
}

#footer {
	height: 20px;
	color: #ccc;
	background-color: Gray;
	padding-left: 15px;
	padding-top: 15px;
	text-align: center;
}

#main-content {
	flex: 1;
	display: flex;
	flex-direction: row;
}

#sidebar {
	width: 10%;
	padding: 5px;
	background-color: LightGray;
	float: left;
}

#sidebar1 {
	width: 10%;
	padding: 5px;
	background-color: LightGray;
	float: right;
}

#main-container {
	flex: 1;
	display: flex;
	flex-direction: column;
}

.tabcontent {
	background-color: white;
	flex: 1;
	padding: 10px;
}
</style>
</head>
<body>
	<div id="header">
		<center>
			<img
				src="http://myplace.frontier.com/~mealsonwheelsjc/images/logo.gif"
				alt="Ericsson" style="width: 304px; height: 100px;">
		</center>
		<p1>ONLINE FOOD DELIVERY SYSTEM</p1>
		<align="right">
		<form action="llogout" method="post">
			<input type="submit" value="Logout" />
		</form>
		</align>
		<hr>
		<hr>



	</div>
	<div id="main-content">
		<div id="sidebar"></div>
		<div class="tabcontent">
			<center>
				<p>INVOICE</p>
			</center>

			<text align="left"> <p2>Order ID</p2></text>
			<br>
			<text align="left"> <p2>Address </p2></text>
			<br>
			<table align="center" cellpadding="5" border="1" cellspacing="5"
				bgcolor="white">
				<tr>
					<th>SR No.</th>
					<th>Menu Item</th>

					<th>Quantity</th>

				</tr>
				<%
					Connection con = DB_Connection.get_connection();

						PreparedStatement ps = con
								.prepareStatement("select * from orders where order_id ='" + String.valueOf(s.getId()) + "'");
						PreparedStatement total = con.prepareStatement(
								"select * from total_bill where order_id = '" + String.valueOf(s.getId()) + "'");
						ResultSet rs = ps.executeQuery();
						ResultSet total_amount = total.executeQuery();
						String order_id;
						String m_item = null, price = null, qty = null, tot = null;
						int res1_orders = 0;
						int res2_orders = 0;
						int res3_orders = 0;
						int res4_orders = 0;
						int res5_orders = 0;
						int res6_orders = 0;
						int sr = 0;

						while (rs.next()) {
							sr++;
							order_id = rs.getString("order_id");
							m_item = rs.getString("menu");
							qty = rs.getString("qty");
							while (total_amount.next()) {

								tot = total_amount.getString("total");
							}

							System.out.println(m_item + " "/*+price*/);
				%>
				<tr align="center">
					<td><%=sr%></td>
					<td><%=m_item%></td>
					<td><%=qty%></td>
				</tr>
				<%
						}				
						
						PreparedStatement timer = con.prepareStatement("select * from orders");
						ResultSet timetod = timer.executeQuery();
						while (timetod.next()) {
							if (timetod.getString("rest_id").equals("rest1")) {
								if (timetod.getString("status").equals("false")) {
									res1_orders++;
								} else {
									
								}
							}

							else if (timetod.getString("rest_id").equals("rest2")) {
								if (timetod.getString("status").equals("false")) {
									res2_orders++;
								} else {
									
								}
							}

							else if (timetod.getString("rest_id").equals("rest3")) {
								if (timetod.getString("status").equals("false")) {
									res3_orders++;
								} else {
									
								}
							}

							else if (timetod.getString("rest_id").equals("rest4")) {
								if (timetod.getString("status").equals("false")) {
									res4_orders++;
								} else {
									
								}
							}

							else if (timetod.getString("rest_id").equals("rest5")) {
								if (timetod.getString("status").equals("false")) {
									res5_orders++;
								} else {
									
								}
							}

							else if (timetod.getString("rest_id").equals("rest6")) {
								if (timetod.getString("status").equals("false")) {
									res6_orders++;
								} else {
									
								}
							}

						}
						
							
						
							
						
				%>
			</table>
			<br>
			<text align="right"> <p2>TOTAL COST: <%=tot%></p2></text>

			<p2>Time to deliver is: <%=res1_orders%></p2>
			<input type="hidden" value=<%=res1_orders%> name="bloop" id="bloop"></input>


			</text>
			<%
	}	
			%>
			<div id="changeText"></div>
		</div>


	</div>
	<script>
function nextMsg() {
	var x = document.getElementById("bloop").value;
	x = x * 1000;
	console.log(x);
    if (messages.length == 0) {
        alert("YOUR ORDER HAS BEEN DELIVERED");
    } else {
        $('#changeText').html(messages.pop()).fadeIn(500).delay(x).fadeOut(500, nextMsg);
    }
};

var messages = [
    "Order Confirmed",
    "In Kitchen!",
    "Order ready",
    "Delicious food On the WAY!!",
    "Delivered"
].reverse();

$('#message').hide();
nextMsg();
</script>


</body>

</html>
