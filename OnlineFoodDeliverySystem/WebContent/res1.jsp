<%@page import="connection.DB_Connection"%>
<%@page import="com.util.DbConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Predicting the Eligibility for Placement
of Students Using Data Mining Technique</title>
<meta name="keywords" content="free css layout, old blog template, CSS, HTML" />
<meta name="description" content="Old Blog Template - free website template provided by TemplateMo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<!--  -->
<link rel="stylesheet" href="css/style.css">
<script src='//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js'></script>
  <script src="js/incrementing.js"></script>
  <!--  -->
<!--  Designed by w w w . t e m p l a t e m o . c o m  -->
<link rel="stylesheet" type="text/css" href="tabcontent.css" />
<script type="text/javascript" src="tabcontent.js">
/***********************************************
* Tab Content script v2.2- � Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/
</script>
<script src="includes/jquery-1.6.2.js" type="text/javascript"></script>
    <script type="text/javascript">

        var counter = 0;
   
        $(document).ready(function() {
   
            $("#addMe").click(function(){
                counter++;
   
                $("#theCount").text(counter);
            });
   
        });
    </script>
</head>
<body>

	<div id="templatemo_header_panel">
    	<div id="templatemo_title_section">
				<h2>Predicting the Eligibility for Placement
of Students Using Data Mining Technique</h2>
	  </div>
    </div> <!-- end of templatemo header panel -->
    
    <div id="templatemo_menu_panel">
    	<div id="templatemo_menu_section">
            <ul>
                
				<!-- <li><a href="updateprofile.jsp">Update Profile</a></li> -->
				<li><a href="details1.jsp">Back</a></li>			                 
            </ul> 
		</div>
    </div> <!-- end of menu -->
    
	<div id="templatemo_content_container">
        <div id="templatemo_content">
            <div id="templatemo_content_left">
				
                <div class="templatemo_post_wrapper">
                <div class="templatemo_post">
                    <div align="center">
					<br />
					<br /><br />
	                <div align="center">
					<h3>
					<h3>MENU FOR RES-1</h3>
					<br></br>
						</h3>
						<br />
					<table align="center" cellpadding="5" border="1" cellspacing="5" bgcolor="white">
					
						<tr>
						        <th>SR No. </th>
								<th> Menu Item </th>
								<th> Price </th>
								<th> Quantity </th>
						</tr>
					<%
					Connection con=DB_Connection.get_connection();
					PreparedStatement ps=con.prepareStatement("select * from company");
					ResultSet rs= ps.executeQuery();
					String m_item,price;
					int sr=0;
					int qty=0;
					while(rs.next())
					{
						sr++;
						m_item = rs.getString("compnay");
						price = rs.getString("SSC");
						
						System.out.println(m_item+" "+price);
					%>
								<tr align="center">
									<td><%=sr%></td>
									<td><%=m_item%></td>
									<td><%=price%></td>
									<td><div id="theCount"></div><br/><button id="addMe">Add 1</button></td>
							    </tr>
					<%} %>
					
					</table>
					
					
					</div>
                    
                    
                    <input type="submit" value="Submit" id="submit">
                </div>
                </div>
					
					
					<br />
					<br />
					<br /><br />
					</div>
                </div>
                </div>
                </div>
                </div>
                </div>
</html>