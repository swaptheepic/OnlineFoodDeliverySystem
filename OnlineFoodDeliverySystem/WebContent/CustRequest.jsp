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
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<!--  Designed by w w w . t e m p l a t e m o . c o m  -->
<link rel="stylesheet" type="text/css" href="tabcontent.css" />
<script type="text/javascript" src="tabcontent.js">
/***********************************************
* Tab Content script v2.2- � Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/
</script>
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
				<h2>Online Food Delivery System</h2>
	  </div>
    </div> <!-- end of templatemo header panel -->
    
    <div id="templatemo_menu_panel">
    	<div id="templatemo_menu_section">
            <ul>
                <li><a href="Home.jsp">Home</a></li>
						
						<li><a href="index.jsp">Logout</a></li>                    
            </ul> 
		</div>
    </div> <!-- end of menu -->
    
	<div id="templatemo_content_container">
        <div id="templatemo_content">
            <div id="templatemo_content_left">
				
                <div class="templatemo_post_wrapper">
                <div class="templatemo_post">
                    <div align="center">
						<h3>Learner Application</h3>
						<br />
						<table align="center" border="0" cellpadding="10" cellspacing="15">
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
											.prepareStatement("SELECT * FROM orders where status='false'");
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
								
								
								<td><a href="useract?val1=<%=order_id%>&val2=<%=item%>">Accept</a></td>
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