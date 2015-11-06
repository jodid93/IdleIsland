<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

    <head>
        <title>LogIn</title>
        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css'></link>
    </head>
    <body>
	
	<h1>${skilabod}</h1>
	
	<p>${notandi.getUserName()} er skadur inn </p>
	
	<form action="/settings" method="post">
		<p><input type="submit" value="Settings" /></p>
	</form>
	
	<form action="/highScores" method="get">
		<p><input type="submit" value="Highscores" /></p>
	</form>
	
	<form action="/play" method="post">
		<p><input type="submit" value="Play" /></p>
	</form>
    
    <form action="/addFriend" method="get">
		<p><input type="submit" value="Add Friend" /></p>
	</form>
	
    </body>
    <footer>Class HBV501G, University of Iceland, Fall 2015</footer>
</html>
