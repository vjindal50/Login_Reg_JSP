<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
		String user= request.getParameter("uname");
		String pwd= request.getParameter("pass");
		String mail= request.getParameter("mail");
		String cono= request.getParameter("cono");
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/CAS", "root", "137115");
		Statement st = con.createStatement();
	 int i= st.executeUpdate("insert into info(Username, Password, Email, ContactNO) values('"+user+"','"+pwd+"','"+ mail + "','" + cono + "')");
	 if(i>0){
		 response.sendRedirect("welcome.jsp");
		 
	 }
	 else{
		 response.sendRedirect("Index.jsp");
	 }
%>
</body>
</html>