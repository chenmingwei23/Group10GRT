<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
  <title>G​RAND​ R​UNETERRA​ T​AVERN​</title>
  <link rel="apple-touch-icon" href="images/icon_base/icon.png">
  <link rel="icon" href="images/icon_base/icon.png">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/index.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="../JspPages/top.jsp" flush="true"></jsp:include>

<h1 style="text-align: center;">${message }</h1>
<div style="width:200px; height:100%; margin:0 auto; color:red;">
	Sorry！
</div>
	
<jsp:include page="../JspPages/bottom.jsp" flush="true"></jsp:include>
</body>
</html>