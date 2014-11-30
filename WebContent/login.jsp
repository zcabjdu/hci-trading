<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <meta charset="utf-8" http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>ShoreTrade - Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Ubuntu">
    <link rel="stylesheet" href="css/bootstrap.css" media="screen">
    <link rel="stylesheet" href="css/main.css">
    <script src="js/bootstrap.min.js"></script>
</head>

<body>

    <!--NAVBAR START-->
    <div id="main_myNav" class="navbar navbar-default">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">ShoreTrade</a>
        </div>

        <div class="navbar-collapse collapse navbar-responsive-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="index.html">Home</a></li>
                <li class="active"><a href="login.html">Login</a></li>
                <li><a href="basket.html">Your Basket</a></li>
                <!--<li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">A</a></li>
                        <li><a href="#">B</a></li>
                        <li class="divider"></li>
                        <li><a href="#">C</a></li>
                    </ul>
                </li>-->
            </ul>
        </div>
    </div>
    <!-- NAVBAR END-->


    <!-- OPTIONS START -->
    <div id="loginSection" class="pageBlock jumbotron">
        <!-- <h1>Get started</h1> -->
        <div class="outline col-md-6">
            <h2 class="textRecolour">Existing user? Login here</h2>
<% if ( session.getAttribute("login") == "failed" )
{
%>            
            <div>Login unsuccessful - Wrong username or password</div>
<%
} 
%>           
            <br>
            <form class="centrehalf form-horizontal" action="LoginController" method="post">
              <fieldset>
                <h4><strong>Username</strong></h4>
                <div class="form-group">
                  <div class="col-lg-10">
                    <input class="form-control" id="inputUsername" placeholder="Username" type="text" name="username">
                  </div>
                </div>
                <h4><strong>Password</strong></h4>
                <div class="form-group">
                  <div class="col-lg-10">
                    <input class="form-control" id="inputPassword" placeholder="Password" type="password" name="password">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-lg-10">
                    <button type="submit" class="btn btn-primary">Login</button>
                  </div>
                </div>
                <h5 class="whiteText">Forgot your password?<br><a class="blackText" href="#"><strong>Contact the Admin</strong></a> for more help!</h5>
              </fieldset>
            </form>

        </div>

    	<div class="outline col-md-6">
            <h2 class="textRecolour">New user? Register</h2>
            <br>
            <form class="centrehalf form-horizontal">
              <fieldset>
                <legend>All information is required</legend>
                <h4><strong>Full Name</strong></h4>
                <div class="form-group">
                  <div class="col-lg-10">
                    <input class="form-control" id="inputName" placeholder="Name" type="text">
                  </div>
                </div>
                <h4><strong>Username</strong></h4>
                <div class="form-group">
                  <div class="col-lg-10">
                    <input class="form-control" id="inputUsername" placeholder="Username" type="text">
                  </div>
                </div>
                <h4><strong>Email</strong></h4>
                <div class="form-group">
                  <div class="col-lg-10">
                    <input class="form-control" id="inputEmail" placeholder="Email" type="text">
                  </div>
                </div>
                <h4><strong>Password</strong></h4>
                <div class="form-group">
                  <div class="col-lg-10">
                    <input class="form-control" id="inputPassword" placeholder="Password" type="password">
                  </div>
                </div>
                <h4><strong>Confirm Password</strong></h4>
                <div class="form-group">
                  <div class="col-lg-10">
                    <input class="form-control" id="inputConfirmPassword" placeholder="Confirm Password" type="password">
                  </div>
                </div>
                <h4><strong>Full Home Address</strong></h4>
                <div class="form-group">
                  <div class="col-lg-10">
                    <textarea class="form-control" rows="3" id="textArea"></textarea>
                  </div>
                </div>
                <h4><strong>Gender</strong></h4>
                <div class="form-group">
                  <div class="col-lg-10">
                    <div class="radio">
                      <label>
                        <input name="optionsRadios" id="optionsRadios1" value="option1" checked="" type="radio">
                        Male
                      </label>
                    </div>
                    <div class="radio">
                      <label>
                        <input name="optionsRadios" id="optionsRadios2" value="option2" type="radio">
                        Female
                      </label>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-lg-10">
                    <button type="submit" class="btn btn-primary">Register</button>
                  </div>
                </div>
              </fieldset>
            </form>
        </div>
    </div>
    <!-- OPTIONS END -->

    <!-- FOOTER START -->
    <div id="footerDiv">
        <p class="center textRecolour">ADD MORE STUFF HERE</p>
    	<p class="center textRecolour">Rohan Kopparapu. 2014. Built with <a class="textRecolour" href="http://www.bootswatch.com/united/">Bootswatch United</a></p>
    </div>
    <!-- FOOTER END -->

</body>


</html>
