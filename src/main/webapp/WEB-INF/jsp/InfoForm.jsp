<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">
	<head>
		<title>Handling Form Submission</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	</head>
	<body>
		<h1>Result</h1>
		<p th:text="'Id: ' + ${userinfo.id}" />
		<p th:text="'e-Mail: ' + ${userinfo.email}" />
		<a href="/info">Return to form</a>
	</body>
</html>