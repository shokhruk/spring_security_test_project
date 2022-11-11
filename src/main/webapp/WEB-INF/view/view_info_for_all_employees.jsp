<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: shokrukh
  Date: 11.11.2022
  Time: 21:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Some title</title>
</head>
<body>

<h3>Some text</h3>
<br>
<security:authorize access="hasAnyRole('ADMIN', 'MANAGER')">
    <input type="button" value="salary" onclick="window.location.href = 'manager_info'">
    only for manager staff
</security:authorize>
<br>
<security:authorize access="hasRole('ADMIN')">
    <input type="button" value="salary" onclick="window.location.href = 'admin_info'">
    only for admin staff
</security:authorize>

</body>
</html>