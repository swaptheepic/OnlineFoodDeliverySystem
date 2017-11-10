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

@WebServlet("/LLogin")
public class LLogin extends HttpServlet {

	Connection con = null;
	PreparedStatement ps;
	ResultSet rs;

	String username;
	String password;

	public void init(ServletConfig config) throws ServletException {
		try {

			con = DB_Connection.get_connection();

			System.out.println("connection is " + con);
		} catch (Exception e1) {
			e1.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			username = request.getParameter("uname");
			password = request.getParameter("pwd");

			System.out.println("username value. . . .. " + username);
			System.out.println("password value. . . .. " + password);

			ps = con.prepareStatement(
					"SELECT * FROM `user` where username='" + username + "' and password='" + password + "'");

			rs = ps.executeQuery();
			HttpSession s = request.getSession();

			if (rs.next()) {
				System.out.println("LOGIN SUCCESSFUL");
				String MyUser = rs.getString("username");
				s.setAttribute("username", MyUser);
				response.sendRedirect("restaurants.jsp?success");
			}

			else {
				System.out.println("Login failed");
				response.sendRedirect("login.jsp?fail");
			}
			ps.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
