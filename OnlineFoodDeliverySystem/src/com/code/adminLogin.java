package com.code;


import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import connection.DB_Connection;


@WebServlet("/adminLogin")
public class adminLogin extends HttpServlet {
	Connection con = null;
	PreparedStatement ps;
	ResultSet rs;

	String username;
	String password;

	
	public void init(ServletConfig config) throws ServletException 
	{
		try {

			con = DB_Connection.get_connection();
			
			System.out.println("connection is " + con);
		} catch (Exception e1) {
			e1.printStackTrace();
		}


	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try {

			username = request.getParameter("uname");
			password = request.getParameter("pwd");

			System.out.println("username value. . . .. " + username);
			System.out.println("password value. . . .. " + password);
			

			ps = con.prepareStatement("SELECT * FROM cook where uname='"+username+"' and pwd='"+password+"'");

			rs = ps.executeQuery();
			HttpSession session = request.getSession();

			if (rs.next()) {
				System.out.println("Success login");
				String username = rs.getString("uname");

				System.out.println("Login successfully");

				session.setAttribute("username", username);
				request.setAttribute("u_name", username);
				request.getRequestDispatcher("CustRequest.jsp").forward(request, response);
				
			}

			else {
				System.out.println("Login failed");

				response.sendRedirect("admin.jsp");
			}
			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}



	}

}
