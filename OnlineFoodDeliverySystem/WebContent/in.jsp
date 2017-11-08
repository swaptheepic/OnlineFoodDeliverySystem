<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="comm.util.DbConnection"%>


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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
        <style>
            body
            {
                display: flex;
                flex-direction: column;
                margin: 0px;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                position: absolute;
            }
            h1 
			{
    	  		color: black;
    	  		font-family:Times New Roman;
    	  		font-size:80%;
			}
			p
    		{
    	  		color:Red;
          		font-family:Times New Roman ;
          		font-size: 150%;
        	}
            
            p1
    		{
    	  		color:black;
          		font-family:Times New Roman;
          		font-size: 150%;
        	}
             p2
    		{
    	  		color:black;
          		font-family:Times New Roman;
          		font-size: 100%;
        	}
            #header 
            {
                height: 150px;
                color: #ccc;
                background-color:Gray;
                padding-left: 15px;
                padding-top: 15px;
                text-align: center;
            }

            #footer
            {
                height: 20px;
                color: #ccc;
                background-color: Gray;
                padding-left: 15px;
                padding-top: 15px;
                text-align: center;
            }

            #main-content 
            {
                flex: 1;
                display: flex;
                flex-direction: row;
            }

            #sidebar
            {
                width: 10%;
                padding: 5px;
                background-color:LightGray;
                float:left ;
            }

            #sidebar1
            {
                width:10%;
                padding: 5px;
                background-color:LightGray;
                float:right ;
            }

            #main-container 
            {
                flex: 1;
                display: flex;
                flex-direction: column;
            }
            .tabcontent
            {
                background-color:white;
                flex: 1;
                padding: 10px;
            }
        </style>
    </head>
  <body>
        <div id="header">
        	<center>
	<img src="http://myplace.frontier.com/~mealsonwheelsjc/images/logo.gif" alt="Ericsson" style="width:304px;height:100px;">
   </center>
      <p1>ONLINE FOOD DELIVERY SYSTEM</p1>
      <hr>
      <hr>
     
        </div>
        <div id="main-content">
            <div id="sidebar"></div>
            <div class="tabcontent">
                <center><p>INVOICE</p></center>
                
                 <text align="left"><p2>Order ID</p2></text><br>
                  <text align="left"><p2>Address </p2></text><br>
					<table align="center" cellpadding="5" border="1" cellspacing="5" bgcolor="white">
									<tr>
										<th>SR No.</th>
										<th>Menu Item</th>
										<th>Price</th>
										<th>Quantity</th>
										<th>Total </th>
									</tr>
									<%
									
									Connection con=	DbConnection.getConnection();
									PreparedStatement ps=con.prepareStatement("select * from orders");
									ResultSet rs= ps.executeQuery();
									String order_id;
									String m_item,price,qty,tot;
									int sr=0;

									while(rs.next())
									{
										sr++;
										order_id=rs.getString("order_id");
										m_item = rs.getString("Name");
										price = rs.getString("Price");
										qty = rs.getString("Quantity");
										tot = rs.getString("Tot");
										System.out.println(m_item+" "+price);
									%>
					
					
									<tr align="center">
										<td><%=sr%></td>
										<td><%=m_item%></td>
										<td><%=price%>/-</td>
										<td><%=qty%></td>
										<td><%=tot%></td>
										
									</tr>
									

								</table>
								<br>
								
                    <%} %>
					<text align="right"><p2>TOTAL COST</p2></text>
				
					<%
					
					%>
					
						</div>
		
           
        </div>
       
  </body>
</html>