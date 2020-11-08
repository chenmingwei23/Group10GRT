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
  <title>${other.getUsername()}Profile-G​RAND​ R​UNETERRA​ T​AVERN</title>
  <link rel="apple-touch-icon" href="${pageContext.request.contextPath }/images/icon.png">
  <link rel="icon" href="${pageContext.request.contextPath}/images/icon.png">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
  <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
  <style type="text/css">
    .thumbnails {display: block; margin-bottom: 20px; line-height: 1.42857143; padding: 20px 5px 20px; background-color: whitesmoke; border: 0px; border-radius: 0px; -webkit-transition: border .2s ease-in-out; -o-transition: border .2s ease-in-out; transition: border .2s ease-in-out; }
  </style>
</head>
<body>
<jsp:include page="top.jsp" flush="true"></jsp:include>
	<div class="container">
	  <ol class="breadcrumb" style="margin-bottom: 5px;">
		<li><a href="${pageContext.request.contextPath}/forums" title="Forums"><span class="glyphicon glyphicon-home"></span></a></li>
		<li><a href="${pageContext.request.contextPath}/posts${forumid }">Back</a></li>
	    <li class="active">${other.getUsername()}Personal Info</li>
	  </ol>
	</div>
<div class="container" style="background-color: whitesmoke;border: 1px solid #ddd;border-radius: 4px;">
  <div class="row clearfix">
    <div id="userinfo" class="col-md-2 column">
      <div class="thumbnails">
        <img alt="120x120" src="${other.getAvatar()}" style="width: 120px; height: 120px; border-radius: 5px;" />
      </div>
    </div><!-- /col-md-2 -->
    <div class="col-md-10 column" style="background-color: #fff;min-height: 560px;">
      <div class="page-header"><h1>${other.getUsername()}Personal </h1></div>
       <div class="table-responsive">
         <table class="table table-bordered">
          <tr>
            <td width="100px">Signin Number</td>
            <td width="150px">${other.getSigninNum()}</td>
            <td width="100px"></td>
            <td width="400px">${other.getSigninPoints()}</td>
          </tr>
          <tr>
            <td>Sex</td>
            <td>${other.getSex()}</td>
            <td>Level</td>
            <td>${other.getGrade()}</td>
          </tr>
          <tr>
            <td>Experience</td>
            <td>${other.getExp()}</td>
            <td>Occupation</td>
            <td>${other.getPositi()}</td>
          </tr>
          <tr>
            <td>Address</td>
            <td>${other.getAddress()}</td>
          </tr>
         </table>
      </div>
      <div class="table-responsive">
        <h4><b>Activity Situation</b></h4>
         <table class="table table-bordered table-condensed table-striped">
          <tr>
            <td width="120px">Register IP</td>
            <td width="300px">${other.getRegistrIp() }</td>
            <td width="120px">Last Login IP</td>
            <td width="300px">${other.getLoginIp() }</td>
          </tr>
          <tr>
            <td>Last Login Time</td>
            <td><fmt:formatDate type="both" value="${other.getLoginOldTime()}" /></td>
            <td>Login Time</td>
            <td><fmt:formatDate type="both" value="${other.getLoginTime()}" /></td>
          </tr>
         </table>
        </div>
    </div> <!-- /col-md-10 -->
  </div>
</div> <!-- container -->

<jsp:include page="bottom.jsp" flush="true"></jsp:include>
</body>
</html>