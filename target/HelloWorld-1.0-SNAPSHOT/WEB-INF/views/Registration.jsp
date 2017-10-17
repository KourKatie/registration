<%--
  Created by IntelliJ IDEA.
  User: Katie Kourtakis
  Date: 10/16/2017
  Time: 6:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>

    <style>
        @import url('https://fonts.googleapis.com/css?family=Cinzel|Yeseva+One|Montserrat|Source+Sans+Pro');
    </style>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link href="/resources/css/registrationstyle.css" rel="stylesheet">

    <script language="JavaScript">
        function validate() {

            var phone = document.forms["register"]["phone"].value;
            var email = document.forms["register"]["email"].value;
            var zipcode = document.forms["register"]["zipcode"].value;
            var num = email.length;
            var start = num - 4;
            var sub = email.substr(start, num);

            if(phone.length < 13 || phone.length > 13) {
                alert("Invalid Phone Number: Please enter your phone number in the form (xxx)xxx-xxxx");
                return false;
            }

            if(!((sub === ".com") || (sub === ".net") || (sub === ".org"))) {
                alert("Invalid Email Address: Please use a personal email address ending in '.com', '.net', or '.org'");
                return false;
            }

            if(!((zipcode.length === 5) || (zipcode.length === 9))) {
                alert("Invalid Zipcode Entry: Please enter a 5 or 9 digit zipcode");
                return false;
            }
        }

    </script>

</head>
<body>

<div class="fluid-contanier">
    <div class="row">
        <div class="col-lg-4 col-md-4 hidden-sm hidden-xs">
        </div>
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12" style="background-color: white; border: 2px solid black;">
            <h2>VIP Membership Registration</h2>
            <p>Receive the star treatment when you sign up to become a VIP member today. Every member receives:</p>
            <ul>
                <li>$100 in-store credit</li>
                <li>Extra 25% off every purchase</li>
                <li>2x Reward Points</li>
                <li>After hour shopping</li>
                <li>24/7 access to a personal style expert</li>
                <li>Entry into store VIP parties</li>
            </ul>
            <h3>Personal Information</h3>
            <form name=register id="register" action="/addMember">
                <div class="firstname">
                    <label>First Name:</label>
                    <input type="text" class="form-control" name="firstname" placeholder="Amy" required>
                </div>
                <div class="lastname">
                    <label>Last Name:</label>
                    <input type="text" class="form-control" name="lastname" placeholder="Summer"required>
                </div>
                <div class="AddressOne">
                    <label>Address Line 1:</label>
                    <input type="text" class="form-control" name="addressone" placeholder="102 Main St." required>
                </div>
                <div class="AddressTwo">
                    <label>Address Line 2:</label>
                    <input type="text" class="form-control" name="addresstwo" placeholder="Apt 23">
                </div>
                <div class="Email">
                    <label>Email:</label>
                    <input type="email" class="form-control" name="email" placeholder="amy.summer@gmail.com">
                </div>
                <div class="Phone">
                    <label>Phone Number:</label>
                    <input type="text" class="form-control" name="phone" placeholder="(555)555-5555" required>
                </div>
                <div class="City">
                    <label>City:</label>
                    <input type="text" class="form-control" name="city" placeholder="Dallas" required>
                </div>
                <div class="form-group">
                    <label>State:</label>
                    <select class="form-control" name="state" required>
                        <option>AL</option>
                        <option>AK</option>
                        <option>AZ</option>
                        <option>AR</option>
                        <option>CA</option>
                        <option>CO</option>
                        <option>CT</option>
                        <option>DE</option>
                        <option>FL</option>
                        <option>GA</option>
                        <option>HI</option>
                        <option>ID</option>
                        <option>IL</option>
                        <option>IN</option>
                        <option>IA</option>
                        <option>KS</option>
                        <option>KY</option>
                        <option>LA</option>
                        <option>ME</option>
                        <option>MD</option>
                        <option>MA</option>
                        <option>MI</option>
                        <option>MN</option>
                        <option>MS</option>
                        <option>MO</option>
                        <option>MT</option>
                        <option>NE</option>
                        <option>NV</option>
                        <option>NH</option>
                        <option>NJ</option>
                        <option>NM</option>
                        <option>NY</option>
                        <option>NC</option>
                        <option>ND</option>
                        <option>OH</option>
                        <option>OK</option>
                        <option>OR</option>
                        <option>PA</option>
                        <option>RI</option>
                        <option>SC</option>
                        <option>SD</option>
                        <option>TN</option>
                        <option>TX</option>
                        <option>UT</option>
                        <option>VT</option>
                        <option>VA</option>
                        <option>WA</option>
                        <option>WV</option>
                        <option>WI</option>
                        <option>WY</option>
                    </select>
                </div>
                <div class="Zipcode">
                    <label>Zip:</label>
                    <input type="text" class="form-control" name="zipcode" placeholder="60451" required>
                </div>
                <div class="form-group">
                    <label>Country:</label>
                    <select class="form-control" name="country" required>
                        <option>US</option>
                    </select>
                </div>
                <div class="button">
                    <input type="submit" value="Submit" class="btn-default" onclick="return validate()">
                </div>
            </form>
        </div>
        <div class="col-lg-4 col-md-4 hidden-sm hidden-xs">
        </div>
    </div>
</div>
</body>
</html>