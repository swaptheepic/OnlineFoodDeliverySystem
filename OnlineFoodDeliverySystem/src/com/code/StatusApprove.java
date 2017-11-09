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
			PreparedStatement ps=con.prepareStatement("select * from orders");
			ResultSet rs=ps.executeQuery();
			String order_id;
			while(rs.next())
			{
				order_id=rs.getString("order_id");
				if(rs.getString("order_id").equals(order_id))
				{
					Statement st1=con.createStatement();
					st1.executeUpdate("update orders set status = 'true'");
					
				}
			}
			System.out.println("Update Succefully");
			response.sendRedirect("CustRequest.jsp?update=yes");
			
		}catch(Exception e){
			System.out.println("ccc "+e);
		}
	}


}
