<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">
	<head>
		<title>Handling Form Submission</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	</head>
	<body>
		<h1>Form</h1>
		<form action="#" th:action="@{/info}" th:object="${userinfo}" method="post">
			<p>Id: <input type="text" th:field="*{id}" /></p>
			<p>e-Mail: <input type="text" th:field="*{email}" /></p>
			<p><input type="submit" value="Submit" /> <input type="reset" value="Reset" /></p>
		</form>
	</body>
</html>