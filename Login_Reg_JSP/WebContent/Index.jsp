<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index</title>
</head>
<body>
<center>	
	<form method="post" action="login.jsp">
		<table>
			<thead>
				<tr>
					<th colspan="3">Login</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>UserName</td>
					<td><input type="text" name="uname"></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="pass" ></td>
				</tr>
				<tr>
					<td><input type="submit" value="Login"></td>
					<td><input type="reset" value="Reset"></td>
				</tr>
				<tr>
					<td colspan="3">If you are not registered <a href="reg.jsp"> Click here </a></td>
				</tr>
			</tbody>
		</table>
	</form>
</center>
</body>
</html>