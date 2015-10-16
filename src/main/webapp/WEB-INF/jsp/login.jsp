<!DOCTYPE html>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

    <head>
        <title>LogIn</title>
    </head>
    <body>

	<form:errors path="notandi.*"/>

    <h1>Please enter your username and password</h1>
    <form action="/" method="post">
		<p>User name: <input type="text" name="UserName" /></p>
		
		<p>Password: <input type="text" name="PW" /></p>
		
		<p><input type="submit" value="Submit" /></p>
		
	</form>
	
	<button>New User</button>
    
    </body>
    <footer>Class HBV501G, University of Iceland, Fall 2015</footer>
</html>
