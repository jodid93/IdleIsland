<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

    <head>
        <title>LogIn</title>
    </head>
    <body>

    <h1>Please enter your username and password</h1>
    <form action="/login/login" method="post">
		<p>User name: <input type="text" name="UserName" /></p>
		
		<p>Password: <input type="text" name="PW" /></p>
		<p><input type="submit" value="Submit" /></p>
	</form>
    
    </body>
    <footer>Class HBV501G, University of Iceland, Fall 2015</footer>
</html>
