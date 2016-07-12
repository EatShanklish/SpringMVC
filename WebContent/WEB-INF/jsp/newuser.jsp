<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MVC Form</title>
</head>
<body>

<h1>Hello?</h1>
	<form:form action="submitUser.html" method="POST">
	        <table>
	            <tbody>
	                <tr>
	                    <td><form:label path="name">Name :</form:label></td>
	                    <td><form:input path="name"></form:input></td>
	                    <td><form:errors path="name"/></td>
	                </tr>
	                <tr>
	                    <td><form:label path="age">Age:</form:label></td>
	                    <td><form:input path="age"></form:input></td>
	                    <td><form:errors path="age"/></td>
	                </tr>
	                <tr>
	                    <td colspan="2"><input type="submit" value="Submit"></td>
	                </tr>
	            </tbody>
	        </table>
	 </form:form>

</body>
</html>