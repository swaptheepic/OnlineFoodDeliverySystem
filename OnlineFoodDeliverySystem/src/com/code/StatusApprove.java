package com.code;


import java.io.IOException; 
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import connection.DB_Connection;



@WebServlet("/UserActivation")
public class StatusApprove extends HttpServlet {

	


	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("doget");
		loginRequest(request,response);
	}
	
	private void loginRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
		
		
		response.setContentType("text/html;charset=UTF-8");
		
		try{
			String lid=request.getParameter("val");
			
			
			System.out.println("u id is "+lid);
			
			Connection con = DB_Connection.get_connection();
			
			PreparedStatement ps = con.prepareStatement("select order_id from orders where order_id="+lid+"");
			ResultSet rs = ps.executeQuery();
			while (rs.getString("order_id").equals(lid)) {
				ps.executeUpdate("UPDATE orders SET status = replace ("+rs.getString("order_id")+",'false','true') WHERE order_id="+rs.getString("order_id"));
				
				
			}
				
			System.out.println("Update Succefully");
			response.sendRedirect("CustRequest.jsp?update=yes");
		}
			
		catch(Exception e){
			System.out.println("Exception"+e);
		}
	}


}
