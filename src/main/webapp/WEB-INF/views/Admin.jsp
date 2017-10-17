<%--
  Created by IntelliJ IDEA.
  User: Katie Kourtakis
  Date: 10/16/2017
  Time: 6:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container">
    <h2>VIP Members</h2>
    <table class="table">
        <thead>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Address Line 1</th>
            <th>Address Line 2</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>City</th>
            <th>State</th>
            <th>Zip Code</th>
            <th>Country</th>
            <th>Date</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${mdata}" var="item">
            <tr>
                <td>${item.firstname}</td>
                <td>${item.lastname}</td>
                <td>${item.addressone}</td>
                <td>${item.addresstwo}</td>
                <td>${item.email}</td>
                <td>${item.phone}</td>
                <td>${item.city}</td>
                <td>${item.state}</td>
                <td>${item.country}</td>
                <td>${item.zipcode}</td>
                <td>${item.date}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>