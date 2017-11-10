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
			String o_id=request.getParameter("val1");
			String m_id=request.getParameter("val2");
			String username=request.getParameter("val3");
			
			
			System.out.println("Order is  "+o_id); 
			System.out.println("Menu is  "+m_id);
			
			Connection con = DB_Connection.get_connection();
			
			/*PreparedStatement ps = con.prepareStatement("select order_id from orders where order_id="+lid+"");
			ResultSet rs = ps.executeQuery();
			
				ps.executeUpdate("UPDATE orders SET status = replace ("+rs.getString("order_id")+",'false','true') WHERE order_id = '"+rs.getString("order_id")+"'");
*/
			//PreparedStatement ps = con.prepareStatement("select * from orders");
			//ResultSet rs = ps.executeQuery();
            String order_id,res_id,menu;
            
            	
            		/*Statement st1=con.createStatement();
            		st1.executeUpdate("update orders set status='false' where order_id="+lid);
            		System.out.println("Update Succesfully");*/
            		String query = "update orders set status = ? where order_id = ? and menu = ?";
            	     PreparedStatement preparedStmt = con.prepareStatement(query);
            	      preparedStmt.setString  (1, "true");
            	      preparedStmt.setString(2, o_id);
            	      preparedStmt.setString(3, m_id);
            	      preparedStmt.executeUpdate();
            	      System.out.println("Update Succesfully");
            		
			//System.out.println("Update Succefully");
			//response.sendRedirect("CustRequest.jsp?update=yes");
            		request.setAttribute("u_name", username);
    				request.getRequestDispatcher("CustRequest.jsp").forward(request, response);
		}
			
		catch(Exception e){
			System.out.println("Exception"+e);
		}
	}


}
