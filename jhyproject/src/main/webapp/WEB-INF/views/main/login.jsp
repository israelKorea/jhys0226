<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html> 
<head>
	<title>Login page</title>
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<h1>
		Welcome to J.Hae-Yoon's world!
	</h1>
	<fieldset>
		<legend>Sign in</legend>
		<form name="login" action="/login_in.do" accept-charset="utf-8" method="POST">
			<div>
				<label for="user-id">User ID : </label>
				<input type="text" id="user-id" name="user-id" required />
			</div>
			<div>
				<label for="password">Password : </label>
				<input type="password" id="user-pw" name="user-pw" required placeholder="4 characters minimum" />
			</div>
			<input type="submit" id="sign-in" name="sign-in" value="submit"/>
		</form>
	</fieldset>
</body>
</html>
