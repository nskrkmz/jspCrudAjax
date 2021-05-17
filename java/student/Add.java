package student;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.JSONArray;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;




/**
 * Servlet implementation class Add
 */
@WebServlet("/Add")
public class Add extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		JSONArray list = new JSONArray();
		String studname = request.getParameter("stname");
		String course = request.getParameter("course");
		String fee = request.getParameter("fee");
		
		Connection con ;
		PreparedStatement pst;
		ResultSet rs;
		
		JSONObject obj = new JSONObject();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Class : Add.java class for name yapısı sorunlu");
		}
		try {
			con = DriverManager.getConnection("jdbc:mysql://localhost/jspstudent","phpmyadmin","82099");
			pst = con.prepareStatement("insert into reecords (stname,course,fee)values(?,?,?)");
			pst.setString(1, studname);
			pst.setString(2, course);
			pst.setString(3, fee);
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Class : Add.java driver manager hatalı");
		}
		
		obj.put("name", "succes");
		list.add(obj);
		
		PrintWriter out = response.getWriter();
		out.println(list.toJSONString());
		out.flush();
		
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
