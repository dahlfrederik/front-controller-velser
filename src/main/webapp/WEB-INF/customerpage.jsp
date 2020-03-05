<%-- 
    Document   : customerpage
    Created on : Aug 22, 2017, 2:33:37 PM
    Author     : kasper
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer home page</title>
    </head>
    <body>


        <h1>Hello ${sessionScope.email} </h1>

        <h2>You are now logged in as a customer of our wonderful site.</h2>

        <h3>Den her side kan ikke rigtig noget, men den er næsten flot</h3>

        <h2>LOGOUT</h2>
        <form action="FrontController" method="POST">
            <input type="hidden" name="taget" value="logout">
            <input type="submit" value="Logout">
        </form>
    </body>
</html>
