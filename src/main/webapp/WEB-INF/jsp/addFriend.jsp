<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

    <head>
        <title>Add Friends</title>
        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css'></link>
    </head>
    <body>
		<h2> Enter a username of a user you know</h2>
	    <form action="/addFriend" method="post">
    	<h3>${skilabod}</h3>
		<p>Username: <input type="text" name="UserName" /></p>
		<p><input type="submit" value="Add +" /></p>
		
	</form>
	
    </body>
    <footer>Class HBV501G, University of Iceland, Fall 2015</footer>
</html>