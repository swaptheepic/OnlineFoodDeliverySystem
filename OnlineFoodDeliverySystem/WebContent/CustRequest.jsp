<%@page import="connection.DB_Connection"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Food Delivery System</title>
<meta name="keywords" content="free css layout, old blog template, CSS, HTML" />
<meta name="description" content="Old Blog Template - free website template provided by TemplateMo.com" />
<link rel="stylesheet" href="assests/css/main.css" />
		<script src="https://code.jquery.com/jquery-3.2.1.js"
			integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
			crossorigin="anonymous"></script>

<script type="text/javascript" src="tabcontent.js">

</script>
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
<style>
body {
	margin:0;
	color=#black;
}
			

.topnav {
margin-left:620px;
  overflow: hidden;
  background-color: #333;
  width:07%;
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
<body>
<%
if(request.getParameter("update")!=null)
{
	out.println("<script>alert('Request Update successfully...!')</script>");
}

%>
	<div id="templatemo_header_panel">
    	<div id="templatemo_title_section">
				<h2 align=center> ONLINE &nbsp;FOOD&nbsp;DELIVERY&nbsp;SYSTEM</h2>
	  </div>
    </div> <!-- end of templatemo header panel -->
   
						
    	<div class="topnav">
  					<a href="index.jsp">HOME</a>
		</div>
    
    
	<div id="templatemo_content_container">
        <div id="templatemo_content">
            <div id="templatemo_content_left">
				
                <div class="templatemo_post_wrapper">
                <div class="templatemo_post">
                    <div align="center">
						<h3>COOK DASHBOARD</h3>
						<% String user = (String)request.getAttribute("u_name");
						   System.out.println("user="+user);
						   %>
						<br />
					<table align="center"  border="1" id="customers" cellspacing="10"
										 bgcolor="black" name="menu" width="20%" style="font-size:18px;">
							<tr>
								<th>Sr.No</th>
								<th>Order ID</th>
								<th>Menu Item</th>
								<th>Status</th>
								
								
								<th>Action</th>
							</tr>
							<%
								try {
									Connection con = DB_Connection.get_connection();
									PreparedStatement ps = con
											.prepareStatement("SELECT * FROM orders where status='false' and rest_id= ?");
									
									 ps.setString  (1, user);
									
									ResultSet rs = ps.executeQuery();
									String order_id, status,user_id,item;
									int srno = 0;
									String id;
									while (rs.next()) {
										srno++;
										order_id=rs.getString("order_id");
										user_id=rs.getString("user_id");
										item=rs.getString("menu");
										status=rs.getString("status");
										

										
							%>

							<tr align="center">
								<td><%=srno%></td>
								<td><%=order_id%></td>
								<td><%=item%></td>
								<td><%=status%></td>
								
								
								<td ><a href="useract?val1=<%=order_id%>&val2=<%=item%>&val3=<%=user%>"><font color="red">Accept </font></a></td>
							</tr>


							<%
								}

								} catch (Exception e) {
									System.out.print("catcht" + e);

								}
							%>


<tr/>
							<tr/>
							<tr/>
							<tr/>
							<tr/>
							<tr/>
							<tr align="center">
							<td/>
							<td/>
							
							
							<td/>
							
							<td/>
							</tr>
						</table>

					</div>
                </div>
                </div>
                </div>
                </div>
                </div>
</html>