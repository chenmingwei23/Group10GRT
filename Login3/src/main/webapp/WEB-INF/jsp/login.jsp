<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
 <title>HomePage</title>
</head>
<body>
${error}
<form action="<c:url value="/login"/>" method="post">
UserName:<input type="text" name="username"><br>
Password:<input type="password" name="password"><br>
 <input type="submit" value="Login">
</form>
<a href="${pageContext.request.contextPath}/insertPage" rel="external nofollow" >Register</a>
</body>
</html>