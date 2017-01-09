<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Form</title>
</head>
<body>

	<center>

		<div style="color: teal; font-size: 30px">Register Details</div>
	</center>
	<br>
	<br>
	<br>
	<c:if test="${!empty registerList}">
		<table border="1" bgcolor="black" width="600px">
			<tr style="background-color: teal; color: white; text-align: center;"
				height="40px">
				
				<td>Id</td>
				<td>Name</td>
				<td>MailID</td>
				<td>Password</td>
				<td>ConfirmPassword</td>

			</tr>
			<c:forEach items="${registerList}" var="user">
				<tr
					style="background-color: white; color: black; text-align: center;"
					height="30px">
					
					<td><c:out value="${user.id}" /></td>
                    <td><c:out value="${user.name}" /></td>
					<td><c:out value="${user.mailid}" /></td>
					<td><c:out value="${user.password}" /></td>
					<td><c:out value="${user.repassword}" /></td>

					
				</tr>
			</c:forEach>
		</table>
	</c:if>

</body>
</html>