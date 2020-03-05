<%-- 
    Document   : employeepage.jsp
    Created on : Aug 24, 2017, 6:31:57 AM
    Author     : kasper
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee home page</title>
    </head>
    <body>
        

        <h1>Hello ${sessionScope.email} </h1>

        You are now logged in as a EMPLOYEE of our wonderful site.

        <h2> TRYK PÅ KNAPPEN FOR EN OVERSIGT OVER ALLE KUNDER </h2>
        <form action="FrontController" method="post">
            <input type="hidden" name="taget" value="customerlist">
            <input type="submit" value="Se oversigt over kunder">
        </form>

        <h2>Her kan du oprette en ny medarbejder</h2>
        <form action="FrontController" method="POST">
            <input type="hidden" name="taget" value="newemployee">
            Email:<br>
            <input type="text" name="email" placeholder="someone@nowhere.com">
            <br>
            Password:<br>
            <input type="password" name="password1" placeholder="sesam">
            <br>
            Retype Password:<br>
            <input type="password" name="password2" placeholder="sesam">
            <br>
            <input type="submit" value="Opret medarbejder">
        </form>

    </body>
</html>
