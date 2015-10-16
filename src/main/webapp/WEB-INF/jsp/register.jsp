<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

    <head>
        <title>User Page</title>
    </head>
    <body>

    <h1>New user</h1>
    
    <h1>Please enter a username and password</h1>
    <form action="/registered" method="post">
		<p>User name: <input type="text" name="UserName" /></p>
		
		<p>Password: <input type="text" name="PW" /></p>
		
		<p><input type="submit" value="Submit" /></p>
		
	</form>
    


    </body>

</html>