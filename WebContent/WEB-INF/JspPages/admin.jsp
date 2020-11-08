<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%response.setContentType("text/html");response.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
	 <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE-edge">
  <meta name="renderer" content="webkit">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="keywords" content="ELEC5619 GROUP_10"/>
    <meta name="description" content="SSM"/>
  <title>Admin-G​RAND​ R​UNETERRA​ T​AVERN​</title>
  	<link rel="apple-touch-icon" href="images/icon.png">
  	<link rel="icon" href="images/icon.png">
  	<link rel="stylesheet" href="css/bootstrap.min.css">
  	<link rel="stylesheet" href="css/index.css">
  	<link rel="stylesheet" href="css/login.css">
  	<script src="js/jquery.min.js"></script>
  	<script src="js/bootstrap.min.js"></script>
</head>
<body>
  <div class="container main">
    <div id="adminlogin">
      <div class="login_top">
         <img src="images/logo.jpg" width="100px;" height="100px;">
          <h4 class="login_title">Admin-G​RAND​ R​UNETERRA​ T​AVERN</h4>
      </div>
      <div class="login_body">
        <form action="${pageContext.request.contextPath }/adminlogin" method="post" role="adminlogin">
         <div class="logo_input">
          <label class="labelbox">
           <input type="text" name="admin" autocomplete="off" placeholder="Admin Username">
          </label>
          <label class="labelbox">
           <input type="password" name="password" autocomplete="off" placeholder="Password">
          </label>
         
          <div class="err_tip" style="display: block;">
           <em class="glyphicon glyphicon-info-sign"></em>
           <span class="err_content">Not Connected！</span>
          </div>
         </div>
         <div class="btn-bg">
           <input type="submit" value="Login">
           <input type="hidden" class="form-control" name="loginIp" id="loginIp" />
           <input type="hidden" class="form-control" name="loginTime" id="loginTime"/>
         </div>
        </form>
        <h3 style="color: red;text-align: center;">${message }</h3>
        	
		<script src="http://pv.sohu.com/cityjson?ie=utf-8" ></script>
		<script type="text/javascript">
			$("#loginIp").val(returnCitySN.cip+'--'+returnCitySN.cname); 
			$("#loginTime").val(new Date().toUTCString());
		</script>
      </div>
    </div>
  </div> <!-- /main -->
</body>
</html>