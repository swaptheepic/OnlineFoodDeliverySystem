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
<link rel="stylesheet" href="assests/css/main.css" />
<title>Insert title here</title>
<%
	String user = (String) session.getAttribute("username");
	if (user != null) {
		HttpSession s = request.getSession();
%>
<style>
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
.img{
	opacity:0.1;
}
p2{
	font-size : 30px;
}
</style>
</head>
<body id=top>
	<section id="banner" data-video="images/banner">
					<div class="inner">
						<header>
							<h1>INVOICE!!</h1>
							<p>
							<h1> 
							ORDER UPDATE:
							<u><div id="changeText"></div></u>
							</h1>
						
						</header>
					</div>
				</section>
	
		
		<form action="llogout" method="post">
			<input type="submit" value="Logout" />
		</form>
		
	<div id="main-content">
		<div id="sidebar"></div>
		<div class="tabcontent">
			<center>
				
			</center>

			<table align="center"  border="1" id="customers" cellspacing="10"
										 bgcolor="black" name="menu" width="20%" style="font-size:18px;">
				
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
						String m_item = null, price = null, qty = null, tot = null,rest_id = null;
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
							rest_id = rs.getString("rest_id");
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
			<div class="inner" style="font-size: 30px;">
			<h1><b float="middle">TOTAL COST: <u><%=tot%></u>/-</h1></div>
			<%
			if(rest_id.equals("rest1")){
				%>
				<p2>Time to deliver is: <%=res1_orders%> sec</p2>
				<input type="hidden" value=<%=res1_orders%> name="bloop" id="bloop"></input>
				<%
			}
			
			
			else if(rest_id.equals("rest2")){
				%>
				<p2>Time to deliver is: <%=res2_orders%>sec</p2>
			<input type="hidden" value=<%=res2_orders%> name="bloop" id="bloop"></input>
				<%
			}
			
			else if(rest_id.equals("rest3")){
				%>
				<p2>Time to deliver is: <%=res3_orders%>sec</p2>
			<input type="hidden" value=<%=res3_orders%> name="bloop" id="bloop"></input>
				<%
			}
				else if(rest_id.equals("rest4")){
					%>
					<p2>Time to deliver is: <%=res4_orders%>sec</p2>
				<input type="hidden" value=<%=res4_orders%> name="bloop" id="bloop"></input>
					<%
				}
				
				else if(rest_id.equals("rest5")){
					%>
					<p2>Time to deliver is: <%=res5_orders%>sec</p2>
				<input type="hidden" value=<%=res5_orders%> name="bloop" id="bloop"></input>
					<%
				}
				
				else if(rest_id.equals("rest6")){
					%>
					<p2>Time to deliver is: <%=res6_orders%> sec</p2>
				<input type="hidden" value=<%=res6_orders%> name="bloop" id="bloop"></input>
					<%
				}
			
			%>
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
<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.poptrox.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>


</body>

</html>
