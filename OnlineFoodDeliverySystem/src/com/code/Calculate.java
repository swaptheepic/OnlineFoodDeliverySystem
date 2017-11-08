package com.code;

import java.io.IOException;
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

		HttpSession s = request.getSession();
		String user = (String) s.getAttribute("username");
		String SessionID = String.valueOf(s.getCreationTime());
		boolean status = false;

		try {

			System.out.println("User is " + user);
			System.out.println("SessionID is " + SessionID);

			int total = 0;
			int counter = 0;

			for (int i = 1; i < 5; i++) {
				System.out.print(" " + request.getParameter("m_item" + i));
				String menu = request.getParameter("m_item" + i);
				System.out.print(" " + request.getParameter("m_price" + i));
				System.out.println(" " + request.getParameter("qty" + i));
				String quantity = request.getParameter("qty" + i);

				if (Integer.parseInt(request.getParameter("qty" + i)) >= 1) {
					total += Integer.parseInt(request.getParameter("m_price" + i))
							* Integer.parseInt(request.getParameter("qty" + i));
				}
				
				try {

					Statement st = con.createStatement();

					int r = st.executeUpdate(
							"INSERT INTO `orders` (`order_id`, `user_id`, `status`, `menu`, `qty`) VALUES ('"
									+ SessionID + "' , '" + user + "', '" + status + "', '" + menu + "', '" + quantity
									+ "' )");
					System.out.println("Insert done");

					if (r > 0) {
						System.out.println("Insertion Successful");
					} else {
						System.out.println("Insertion Failed");
					}
				} catch (Exception e) {
					System.out.println(e);
				}
			}

			
			System.out.println("Total is: " + total);

			try {

				Statement st = con.createStatement();

				int r = st.executeUpdate("INSERT INTO `total_bill` (`order_id`, `total`) VALUES ('" + SessionID + "' ,'"
						+ total + "' )");
				System.out.println("Total Inserted done");

				if (r > 0) {
					System.out.println("Successful");
				} else {
					System.out.println("Failed");
				}
			} catch (Exception e) {
				System.out.println(e);
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		
		response.sendRedirect("in.jsp");
		
	}
}