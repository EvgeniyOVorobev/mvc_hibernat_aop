<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Z
  Date: 05.03.2023
  Time: 19:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<body>
<h2>All Employees</h2>
<br><br>
<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
    </tr>
    <c:forEach var="emp" items="${allEmps}">
        <tr>
            <td>
                ${emp.name}
            </td>
            <td>
                    ${emp.surname}
            </td>
            <td>
                    ${emp.department}
            </td>
            <td>
                    ${emp.salary}
            </td>
        </tr>

    </c:forEach>

</table>
<br>
<input type="button" value="Add"
onclick="window.location.href='addNewEmployee'"/>
</body>
</html>
