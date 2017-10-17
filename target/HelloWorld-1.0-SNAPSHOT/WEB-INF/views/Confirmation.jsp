<%--
  Created by IntelliJ IDEA.
  User: Katie Kourtakis
  Date: 10/16/2017
  Time: 6:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Confirmation</title>

    <style>
        @import url('https://fonts.googleapis.com/css?family=Cinzel|Yeseva+One|Montserrat|Source+Sans+Pro');
    </style>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link href="/resources/css/confirmationstyle.css" rel="stylesheet" >

</head>
<body>
<div class="fluid-container">
    <div class="row">
        <div class="col-lg-4 col-md-4 hidden-sm hidden-xs">
        </div>
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 confirmBox">
            <h2>Congratulations ${firstname} ${lastname}!</h2>
            You are now a VIP member.<br><br>
            <iframe src="https://giphy.com/embed/u23zXEvNsIbfO" width="343" height="480" frameBorder="0" class="giphy-embed" allowFullScreen>
            </iframe><p><a href="https://giphy.com/gifs/u23zXEvNsIbfO">via GIPHY</a></p>
        </div>
        <div class="col-lg-4 col-md-4 hidden-sm hidden-xs">
        </div>
    </div>
</div>
</body>
</html>