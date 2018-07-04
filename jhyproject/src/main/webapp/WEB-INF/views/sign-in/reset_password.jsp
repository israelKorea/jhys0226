<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Reset password</title>
	<link rel="icon" href="${pageContext.request.contextPath}/resources/image/favicon.ico">
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/signin.css" rel="stylesheet">
</head>
<body class="text-center">
	<form class="form-signin" action="/sendEmail.mvc">
	    <img class="mb-4" src="https://getbootstrap.com/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
	    <h1 class="h3 mb-3 font-weight-normal">Developer</h1>
	    <input type="email" id="inputEmail" class="form-control" placeholder="Enter your email" required autofocus>
	    <button class="btn btn-lg btn-primary btn-block" type="submit">Send</button>
  </form>
</body>
</html>