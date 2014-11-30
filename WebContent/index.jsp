<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <meta charset="utf-8" http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>ShoreTrade - Home</title>
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
                <li class="active"><a href="index.jsp">Home</a></li>
<%                 
System.out.println(session.getAttribute("user"));
if ( session.getAttribute("user") == null )
{
%>
               	<li><a href="login.jsp">Login</a></li>
<%               
} 
else
{
%>
				<li><a href="logout.jsp">Logout</a></li>
<%				
}
%>               
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

    <!-- HEAD JUMBOTRON START -->
    <div id="main" class="pageBlock jumbotron">
        <br>
        <h1 class="textRecolour">ShoreTrade</h1>
        <h2 class="textRecolour">Buy, Sell and Trade</h2>
        <p class="textRecolour text-intro">Exclusive to Shoreditch</p>
        <p class="textRecolour text-intro">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        <p><a class="btn btn-primary btn-lg" href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" target="_blank">Learn more</a></p>
    </div>
    <!-- HEAD JUMBOTRON END -->

    <!-- INTRO SECTION START -->
    <div id="introSection" class="pageBlock jumbotron">
        <h1>Intro</h1>
        <div class="col-md-12">
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
		</div>
    </div>
    <!-- INTRO SECTION END -->

    <!-- OPTIONS START -->
    <div id="optionSection" class="pageBlock jumbotron">
        <h1>Get started</h1>
        <div class="outline col-md-6">
            <h2 class="textRecolour center">Buy/Trade</h2>
            <div class="form-group">
                <div class="centerBox input-group">
                    <input type="text" class="form-control" placeholder="Search for items">
                    <span class="input-group-btn">
                        <button onclick="search()" class="btn btn-default" type="button">Go</button>
                    </span>
                </div>
                <p class="textRecolour">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                <a href="#" class="centerBox btn btn-primary btn-lg">Start Here</a>
            </div>
        </div>
    	<div class="outline col-md-6">
            <h2 class="textRecolour center">Sell</h2>   
            <p class="textRecolour">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            <a href="#" class="centerBox btn btn-primary btn-lg">Get Selling</a>
        </div>
    </div>
    <!-- OPTIONS END -->

    <!-- FOOTER START -->
    <div id="footerDiv">
        <p class="center textRecolour">ADD MORE STUFF HERE</p>
    	<p class="center textRecolour">Rohan Kopparapu. 2014. Built with <a class="textRecolour" href="http://www.bootswatch.com/united/">Bootswatch United</a></p>
    </div>
    <!-- FOOTER END -->

    <script type="text/javascript">
        function search(){
            window.location.replace("results.html");
        }
    </script>
</body>


</html>
