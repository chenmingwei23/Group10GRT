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
  <title>G​RAND​ R​UNETERRA​ T​AVERN​</title>
  <link rel="apple-touch-icon" href="images/icon.png">
  <link rel="icon" href="images/icon.png">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/index.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <style type="text/css">
    .thumbnails {display: block; margin-bottom: 20px; line-height: 1.42857143; padding: 20px 5px 20px; background-color: whitesmoke; border: 0px; border-radius: 0px; -webkit-transition: border .2s ease-in-out; -o-transition: border .2s ease-in-out; transition: border .2s ease-in-out; }
  </style>
</head>
<body>
<jsp:include page="top.jsp" flush="true"></jsp:include>

<div class="container" style="background-color: whitesmoke;border: 1px solid #ddd;border-radius: 4px;">
  <div class="row clearfix">
    <div id="userinfo" class="col-md-2 column">
      <div class="thumbnails">
        <img alt="120x120" src="${user.getAvatar()}" style="width: 120px; height: 120px; border-radius: 5px;" />
        <div class="caption">
          <h5><b><a href="${pageContext.request.contextPath }/userdata">Update</a></b></h5>
        </div>
      </div>
    </div><!-- /col-md-2 -->
    <div class="col-md-10 column" style="background-color: #fff;min-height: 560px;">
      <div class="page-header"><h1>Profile</h1></div>
       <div class="table-responsive">
        <h4><b>Personal Info UID：${user.getId()}</b></h4>
         <table class="table table-bordered">
          <tr>
            <td width="100px">Phone Number</td>
            <td width="150px">${user.getPhone()}</td>
            </tr>
          <tr>
            <td>Birthday</td>
            <td>${user.getBirthday()}</td>
            <td>E-mail</td>
            <td>${user.getEmail()}</td>
          </tr>
          <tr>
            <td>The Sign in Number</td>
            <td>${user.getSigninNum()}</td>
            <td>Credits</td>
            <td>${user.getSigninPoints()}</td>
          </tr>
          <tr>
            <td>User Name</td>
            <td>${user.getUsername()}</td>
            <td>Level</td>
            <td>${user.getGrade()}</td>
          </tr>
          <tr>
            <td>Experience</td>
            <td>${user.getExp()}</td>
            <td>Occupation</td>
            <td>${user.getPositi()}</td>
          </tr>
          <tr>
            <td>Address</td>
            <td>${user.getAddress()}</td>
            </tr>
         </table>
      </div>
      <div class="table-responsive">
        <h4><b>Active situation</b></h4>
         <table class="table table-bordered table-condensed table-striped">
          <tr>
            <td width="120px">Register IP</td>
            <td width="300px">${user.getRegistrIp() }</td>
            <td width="120px">Register Time</td>
            <td width="300px"><fmt:formatDate type="both" value="${user.getRegistrTime()}" /></td>
          </tr>
          <tr>
            <td>Last Login Time </td>
            <td><fmt:formatDate type="both" value="${user.getLoginOldTime()}" /></td>
            <td>Login Time</td>
            <td><fmt:formatDate type="both" value="${user.getLoginTime()}" /></td>
          </tr>
          <tr>
            <td>Last Login IP</td>
            <td>${user.getLoginIp()}</td>
            <td>Login IP</td>
            <td><p id="ipaddr"></p></td>
          </tr>
         </table>
        </div>
    </div> <!-- /col-md-10 -->
  </div>
</div> <!-- container -->

<!-- 新浪ip地址api -->
<script src="http://pv.sohu.com/cityjson?ie=utf-8" ></script>
<script type="text/javascript">
	var x =returnCitySN.cip+'--'+returnCitySN.cname;
	document.getElementById("ipaddr").innerHTML=x;
</script>
	
<jsp:include page="bottom.jsp" flush="true"></jsp:include>
</body>
</html>