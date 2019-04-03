<%-- 
    Document   : New_customer
    Created on : Apr 2, 2019, 6:28:35 PM
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
        <br><br><br>
        <form action="NewCustomerServlet" method="POST">
            <input type="hidden" name="action" value="add" />
            <label class="pad_top">First Name:</label>
            <input type="text" name="firstName" value="$(user.firstName)" /><br>
            <label class="pad_top">Last Name:</label>
            <input type="text" name="lastName" value="$(user.lastName)" /><br>
            <label class="pad_top">Phone:</label>
            <input type="text" name="phone" value="$(user.phone)" /><br>
            <label class="pad_top">Address:</label>
            <input type="text" name="address" value="$(user.address)" /><br>
            <label class="pad_top">City:</label>
            <input type="text" name="city" value="$(user.city)" /><br>
            <label class="pad_top">State:</label>
            <input type="text" name="state" value="$(user.state)" /><br>
            <label class="pad_top">Zip Code:</label>
            <input type="text" name="zip" value="$(user.zip)" /><br>
            <label class="pad_top">Email Address:</label>
            <input type="text" name="email" value="$(user.email)" /><br>
        </form>
    </body>
</html>
