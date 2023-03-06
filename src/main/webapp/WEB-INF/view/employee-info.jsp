<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Z
  Date: 05.03.2023
  Time: 21:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<body>
<h2>Employee info</h2>
<br>
<form:form action="saveemp" modelAttribute="employee">
  <form:hidden path="id"/>
  Name <form:input path="name"/>
  <br>
  Surname <form:input path="surname"/>
  <br>
  Department <form:input path="department"/>
  <br>
  Salary <form:input path="salary"/>
  <br>
  <input type="submit" value="OK">

</form:form>
</body>
</html>
