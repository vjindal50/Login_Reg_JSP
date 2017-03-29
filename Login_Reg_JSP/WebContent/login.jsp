<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CAS Login</title>
</head>
<body>
	<%@ page import="java.sql.*" %>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		String userid = request.getParameter("uname");
		String pwd = request.getParameter("pass");
		Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/CAS", "root", "137115");
		Statement st = conn.createStatement();
		ResultSet rs;
		rs=st.executeQuery("select * from info where Username='" + userid + "'and Password ='" +pwd+"'");
		if(rs.next()){
			session.setAttribute("Username", userid);
			response.sendRedirect("success.jsp");
		}
		else{
			out.println("Invalid password <a href='Index.jsp'>Try again</a>");
		}
	%>
</body>
</html>