<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

    <head>
        <title>LogIn</title>
    </head>
    <body>
	
	<h1>${skilabod}</h1>
	
	<p>${notandi.getUserName()} er skadur inn </p>
	
	<form action="/settings" method="post">
		<p><input type="submit" value="Settings" /></p>
	</form>
	
	<form action="/highScores" method="post">
		<p><input type="submit" value="Highscores" /></p>
	</form>
	
	<form action="/play" method="post">
		<p><input type="submit" value="Play" /></p>
	</form>
    
    </body>
    <footer>Class HBV501G, University of Iceland, Fall 2015</footer>
</html>
