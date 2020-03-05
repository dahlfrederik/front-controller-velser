<%--
  Created by IntelliJ IDEA.
  User: FrederikDahl
  Date: 04/03/2020
  Time: 08.41
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Kunde oversigt</title>
</head>
<body>
<h1> Kunde oversigt </h1>
<h2> Der er ${sessionScope.antalKunder} kunder i databasen</h2>
<p><c:forEach var="element" items="${sessionScope.customerlist}">
    ${element}
    <br>

</c:forEach></p>

<h2>Her kan du slette en kunde</h2>
<form name="remove" action="FrontController" method="POST">
    <input type="hidden" name="taget" value="RemoveCustomer">
    Email:<br>
    <input type="text" name="remove" placeholder="someone@nowhere.com">
    <br>
    <input type="submit" value="Slet kunde">
</form>

<h2>Her kan du ændre kode for en kunde</h2>
<form name="register" action="FrontController" method="POST">
    <input type="hidden" name="taget" value="EditPassword">
    Email:<br>
    <input type="text" name="email" placeholder="someone@nowhere.com">
    <br>
    Password:<br>
    <input type="password" name="password" placeholder="sesam">
    <br>
    <input type="submit" value="Ændre kundens kode">
</form>


</body>
</html>
