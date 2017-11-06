<%@page import="javax.swing.text.html.parser.Parser"%>
<%@page import="CRUD.Insert_Values"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%
 		String setName=request.getParameter("Name");
 
 		Insert_Values obj = new Insert_Values();
 		
 		obj.insert_values(setName);
 		
 %>
 <script type="text/javascript" >
 window.location.href="http://localhost:8080/MySQL_Task/insert_values.jsp";
 </script>
</body>
</html>