<%-- 
    Document   : error_java
    Created on : Apr 2, 2019, 6:56:55 PM
    Author     : lawrencewilson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TOBA - Titan Online Banking Application</title>
        <link rel="stylesheet" type="text/css" href="style/stylesheet.css">
    </head>
    <body>
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="Login.html">Login</a>
            </li>
            <li><a href="#">Services</a>
                <ul>
                    <li><a href="">Checking</a></li>
                    <li><a href="">Savings</a></li>
                    <li><a href="">Loans</a></li>
                </ul>
            </li>
            <li><a href="#">Contact</a>
                <ul>
                    <li><a href="">Map</a></li>
                    <li><a href="">Directions</a></li>
                </ul>
            </li>
            <li><a href="#">News</a></li>
        </ul>
        <br><br>
        <h1>Java Error</h1>
        <p>Sorry, Java has thrown an exception.</p>
        <p>To continue, click the Back button.</p>

        <h2>Details</h2>
        <p>Type: ${pageContext.exception["class"]}</p>
        <p>Message: ${pageContext.exception.message}</p>
    </body>
</html>
