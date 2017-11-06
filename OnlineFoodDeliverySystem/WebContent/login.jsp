<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<%
	if (request.getParameter("insert") != null) {
		out.print("<script>alert('Insertion failed..!')</script>");
		out.print("<script>alert('Please try again..!')</script>");
	}
%>
<head>
<%
if(request.getParameter("success")!=null)
{
	out.println("<script>alert('Registration Successful..Please wait for ADMIN to accept your request')</script>");
	
}
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Predicting the Eligibility for Placement
of Students Using Data Mining Technique</title>
<meta name="keywords" content="free css layout, old blog template, CSS, HTML" />
<meta name="description" content="Old Blog Template - free website template provided by TemplateMo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<!--  Designed by w w w . t e m p l a t e m o . c o m  -->
<link rel="stylesheet" type="text/css" href="tabcontent.css" />
<script type="text/javascript" src="tabcontent.js">
/***********************************************
* Tab Content script v2.2- © Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/
</script>
</head>
<body>

	<div id="templatemo_header_panel">
    	<div id="templatemo_title_section">
				<h2>Online Food Delivery System</h2>
	  </div>
    </div> <!-- end of templatemo header panel -->
    
    <div id="templatemo_menu_panel">
    	<div id="templatemo_menu_section">
            <ul>
                <li><a href="index.jsp" class="active">Home</a></li>
				               
            </ul> 
		</div>
    </div> <!-- end of menu -->
    
	<div id="templatemo_content_container">
        <div id="templatemo_content">
            <div id="templatemo_content_left">
				
                <div class="templatemo_post_wrapper">
                <div class="templatemo_post">
                    <div align="center">
						<h3>User Login</h3>
						<br />

						<form action="llog" method="post">

							<table border="0" cellpadding="5" cellspacing="8">
								<tr>
									<td>Username</td>
									<td><input type="text" name="uname" style="height: 25px"; id="uname" /></td>

								</tr>
																<tr>
									<td>Password</td>
									<td><input type="password" name="pwd" style="height: 25px"; id="pwd" /></td>

								</tr>
								<tr/>
								<tr>
									<td align="center"><input type="submit" value="Login" style="height: 35px; width: 90px;"></td>
									<td align="center"><u>
									<a href="CustReg.jsp" style="color: blue;">New Registration</a></u></td>
								</tr>
							</table>
						</form>
					</div>
                    
                    
                    
                </div>
                </div>
</html>