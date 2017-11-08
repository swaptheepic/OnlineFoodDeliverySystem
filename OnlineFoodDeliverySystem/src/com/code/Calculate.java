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

@WebServlet("/Calculate")
public class Calculate extends HttpServlet {

	Connection con = null;
	PreparedStatement ps;
	ResultSet rs;

	String menu_item;
	String price;

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
			String quantity [] = null ;
			for(int i=0;i<10;i++) {
			quantity[i] = request.getParameter("qty"+i);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
