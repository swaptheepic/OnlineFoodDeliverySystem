package com.code;


import java.io.IOException; 
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.ha.backend.Sender;

import com.util.DbConnection;



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
			
			//String FileSecretKey = request.getParameter("FileSecretKey");
			//int UserID = Integer.parseInt(request.getParameter("val"));
			System.out.println("u id is "+lid);
			
			Connection con = DbConnection.getConnection();
			//Statement st = con.createStatement();
			Statement st1 = con.createStatement();
			
			/*ResultSet rs = st.executeQuery("select * from user where id="+UserID);
			
			if(rs.next()){
			*/	
				
				//String Usertype = rs.getString("Usertype");
				
				
				st1.executeUpdate("update facultyreg set Status='Approved' where id="+lid);
				System.out.println("Update Succefully");
				response.sendRedirect("CustRequest.jsp?update=yes");
			//}
			
			
			
			
			
		}catch(Exception e){
			System.out.println("ccc "+e);
		}finally{
			
			
		}
		
		
	}


}
