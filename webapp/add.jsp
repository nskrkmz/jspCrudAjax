<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.json.simple.JSONArray" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% 
JSONArray list = new JSONArray();

String studname = request.getParameter("stname");
String course = request.getParameter("course");
String fee = request.getParameter("fee");

Connection con ;
PreparedStatement pst;
ResultSet rs;

JSONObject obj = new JSONObject();

Class.forName("com.mysql.cj.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/jspstudent","phpmyadmin","82099");
pst =con.prepareStatement("insert into reecords (stname,course,fee)values(?,?,?)");
pst.setString(1, studname);
pst.setString(2, course);
pst.setString(3, fee);
pst.executeUpdate();
obj.put("name","success");
list.add(obj);

out.println(list.toJSONString());
out.flush();

%>