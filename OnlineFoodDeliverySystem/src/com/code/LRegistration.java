package com.code;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.io.*;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import connection.DB_Connection;

/**
 * Servlet implementation class FRegistration
 */
@WebServlet("/LRegistration")
public class LRegistration extends HttpServlet {
	private static final HttpSession HttpSession = null;
	Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String fname, address, mbno, email, uname, passwd;

	public void init(ServletConfig config) throws ServletException {
		try {
			con = DB_Connection.get_connection();
			System.out.println("Connection==" + con);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		fname = request.getParameter("fname");
		address = request.getParameter("address");
		mbno = request.getParameter("mbnumber");
		email = request.getParameter("email");
		System.out.println("FIRST NAME====" + fname);
		HttpSession session = request.getSession();
		String appdate = request.getParameter("appdate");

		try {
			String user = "";
			Connection con1 = DB_Connection.get_connection();
			PreparedStatement ps2 = con1.prepareStatement("SELECT * FROM  user ");
			ResultSet rs2 = ps2.executeQuery();
			String uname = request.getParameter("uname");
			String pwd = request.getParameter("pwd");
			System.out.println("Password====" + pwd);
			while (rs2.next()) {
				user = rs2.getString("uname");
				System.out.println("user====" + user);
				System.out.println("uname====" + uname);
				if (user.equals(uname)) {
					response.sendRedirect("CustReg.jsp?same");
					// response.sendRedirect("learner.jsp");
					System.out.println("Username Already Exist");
				}
			}
			try {
				Statement st = con.createStatement();
				int r = st.executeUpdate(
						"INSERT INTO `ofd_db`.`user` (`u_id`, `name`, `username`, `password`, `address`, `ph_no`, `reg_date`) VALUES (NULL, '"
								+ fname + "', '" + uname + "', '" + pwd + "', '" + address + "', '" + mbno + "','"
								+ appdate + "')");
				System.out.println("insert done");
				if (r > 0) {
					response.sendRedirect("CustReg.jsp?success");
					System.out.println("Registration Successful");
				} else {
					response.sendRedirect("CustReg.jsp?fail=yes");
					System.out.println("Registration Failed");
				}
			} catch (Exception e) {
			}
		} catch (Exception e) {
		}
	}
}
