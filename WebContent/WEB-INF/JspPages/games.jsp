<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
     <meta http-equiv="refresh" content="600">
  <title>Forunms-G​RAND​ R​UNETERRA​ T​AVERN​</title>
  	<link rel="apple-touch-icon" href="images/icon.png">
  	<link rel="icon" href="images/icon.png">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/index.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
  <style type="text/css">
    .panel-primarys {border-color: #fd7b5d; }
    .panel-titles {margin-top: 0; margin-bottom: 0; font-size: 16px; color: #004975; text-shadow: 1px 2px 1px; }
    .panel-headings {padding: 10px 15px; border-bottom: 1px solid transparent; border-top-left-radius: 3px; border-top-right-radius: 3px; font-size: 16px;font-weight: 700;background-color: #fd7b5d;}
    .total {text-align: center;border: 1px solid #fd7b5d;border-radius: 5px;margin-bottom: 30px;display: block;background-color: #fcf8e3}
    .total div p em {display: block; font-size: 40px; line-height: 80px; font-weight: 400; } 
    .total div p span {display: block; font-size: 14px; } 
  </style>

</head>
<body>
<jsp:include page="top.jsp" flush="true"></jsp:include>

<script type="text/javascript">
window.onload = function() {
    location.href = "https://www.esportsgrandstand.com/event/tundra-vs-ez1d-2020-09-28/";
}
	 
  
</script>

<!-- 主体 -->
<div class="container">
<div class="login_top">
          <h4 class="score_title">SCORES</h4>
</div>

 <body >

    <div id="cont"></div>   <!--the container to add the table.-->
</body>
</div>

<!-- /主体 -->

<jsp:include page="bottom.jsp" flush="true"></jsp:include>
</body>
</html> 