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
	String fname, mname, lname, dob, gender, address, mbno, email, branch;

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
		mname = request.getParameter("mname");
		lname = request.getParameter("lname");
		dob = request.getParameter("dob");
		gender = request.getParameter("gender");
		address = request.getParameter("address");
		mbno = request.getParameter("mbnumber");
		email = request.getParameter("email");
		branch = request.getParameter("branch");
		String ssc = request.getParameter("ssc");
		String hsce = request.getParameter("hsc");
		String agree = request.getParameter("agree");
		String backlog = request.getParameter("Backlog");
		System.out.println("FIRST NAME====" + fname);
		System.out.println("branch====" + branch);
		System.out.println("backlog====" + backlog);
		HttpSession session = request.getSession();

		Float a = Float.parseFloat(ssc);
		Float b = Float.parseFloat(hsce);
		Float c = Float.parseFloat(agree);
		Float avg = (a + b + c) / 3;

		session.setAttribute("branch", branch);
		session.setAttribute("Backlog", backlog);
		String appdate = request.getParameter("appdate");

		String status = "NotApproved";

		try {

			String user = "";
			Connection con1 = DB_Connection.get_connection();
			PreparedStatement ps2 = con1.prepareStatement("SELECT * FROM  learnerreg ");
			ResultSet rs2 = ps2.executeQuery();
			String uname = request.getParameter("uname");
			String pwd = request.getParameter("pwd");
			System.out.println("Password====" + pwd);
			while (rs2.next()) {
				user = rs2.getString("uname");
				System.out.println("user====" + user);
				System.out.println("uname====" + uname);
				if (user.equals(uname)) {
					response.sendRedirect("learnerReg.jsp?same");
					// response.sendRedirect("learner.jsp");
					System.out.println("Username Already Exist");
				}
			}

			try {
				Statement st = con.createStatement();
				int r = st.executeUpdate(
						"INSERT INTO `placement`.`learnerreg` (`id`, `fname`, `mname`, `lname`, `dob`, `gender`, `address`, `mobile`, `email`, `branch`, `appdate`, `status`, `uname`, `pwd`,`SSC`,`HSC`,`agree`,`average`,`Backlog`) VALUES (NULL, '"
								+ fname + "', '" + mname + "', '" + lname + "', '" + dob + "', '" + gender + "','"
								+ address + "', '" + mbno + "','" + email + "','" + branch + "', '" + appdate + "', '"
								+ status + "', '" + uname + "', '" + pwd + "', '" + ssc + "', '" + hsce + "', '" + agree
								+ "', '" + avg + "', '" + backlog + "')");
				System.out.println("insert done");

				if (r > 0) {

					response.sendRedirect("learner.jsp?success");
					// response.sendRedirect("learner.jsp");
					System.out.println("Registration Successful");
					// response.sendRedirect("learner.jsp");

				} else {
					response.sendRedirect("learnerReg.jsp?fail=yes");
					System.out.println("Registration Failed");
				}
			} catch (Exception e) {
			}

		} catch (Exception e) {
		}

	}

}
