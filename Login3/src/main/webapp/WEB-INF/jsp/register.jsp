<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
 <title>Title</title>
</head>
<body>
 <form method="post" action="${pageContext.request.contextPath}/insert">
  UserName:<input type="text" name="username"><br>
  Password:<input type="password" name="password"><br>
  <input type="submit" value="Register">
 </form>
</body>
</html>