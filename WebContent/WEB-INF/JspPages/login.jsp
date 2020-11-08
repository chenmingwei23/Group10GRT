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
  <title>G​RAND​ R​UNETERRA​ T​AVERN​</title>
  	<link rel="apple-touch-icon" href="images/icon.png">
  	<link rel="icon" href="images/icon.png">
  	<link rel="stylesheet" href="css/bootstrap.min.css">
  	<link rel="stylesheet" href="css/index.css">
  	<link rel="stylesheet" href="css/login.css">
  	<script src="js/jquery.min.js"></script>
  	<script src="js/bootstrap.min.js"></script>
  	<script type="text/javascript">
	    $(document).ready(function(){
	     $(".btn_register").click(function(){
	        $("#login").hide();
	        $("#register").show();
	      });
	      $(".btn_forget").click(function(){
	        $("#login").hide();
	        $("#forget").show();
	      });
	     $(".btn_back").click(function(){
	        $("#forget").hide();
	        $("#register").hide();
	        $("#login").show();
	      });
	    });
	  </script>
</head>
<body>
  <div class="container main">

    <!-- 登录 -->
    <div id="login" style="display: block;">
      <div class="login_top">
          <a class="btn_index" href="${pageContext.request.contextPath }/forums" title="Home Page"><strong>Home Page</strong></a>
          <a class="btn_register" href="javascript:void(0)" title="Register"><strong>Register</strong></a>
          <a class="btn_forget" href="javascript:void(0)" title="Forget Password"><strong>Forget</strong></a>
         <!--  <img src="images/logo.jpg" width="100px;" height="100px;"> -->
          <h4 class="login_title">G​RAND​ R​UNETERRA​ T​AVERN-Login</h4>
      </div>
      <div class="login_body">
        <form action="${pageContext.request.contextPath }/userlogin" method="post" role="login">
         <div class="logo_input">
          <label class="labelbox">
           <input type="text" name="username" autocomplete="off" placeholder="Username">
          </label>
          <label class="labelbox">
           <input type="password" name="password" autocomplete="off" placeholder="Password">
          </label>
          <!-- 多选 -->
          <div class="checkbox" style="text-align: end;">
             <label>
              <input type="checkbox" value="">Remember Password
             </label> 
          </div>
          <!-- 错误提示 -->
          <div class="err_tip" style="display: none;">
           <em class="glyphicon glyphicon-info-sign"></em>
           <span class="err_content">Not Connected</span>
          </div>
         </div>
         <div class="btn-bg">
           <input type="submit" value="Login">
           <input type="hidden" class="form-control" name="loginIp" id="loginip" />
           <input type="hidden" class="form-control" name="loginTime" id="logintime"/>
         </div>
        </form>
        <h3 style="color: red;text-align: center;">${message }</h3>
      </div>
    </div>
    
    <!-- 注册 -->
    <div id="register" style="display: none;">
      <div class="login_top">
          <a class="btn_back" href="javascript:void(0)" title="Return"><strong>Login</strong></a>
          <img src="images/logo.png" width="100px;" height="100px;">
          <h4 class="login_title">G​RAND​ R​UNETERRA​ T​AVERN-Register</h4>
      </div>
      <div class="register_body">
        <div class="row clearfix">
          <div class="col-md-12 column">
            <form class="form-horizontal" action="${pageContext.request.contextPath }/userregister" method="post" role="register">
              <div class="form-group">
                 <label for="userName" class="col-sm-4 control-label">User Name：</label>
                <div class="col-sm-6">
                  <input type="text" class="form-control" name="username" placeholder="3-10 characters" maxlength="10" />
                </div>
              </div>
              <div class="form-group">
                 <label for="password" class="col-sm-4 control-label">Pass Word：</label>
                <div class="col-sm-6">
                  <input type="password" class="form-control" name="password" placeholder="3-16 characters" maxlength="16" />
                </div>
              </div>
              <div class="form-group">
                 <label for="repassword" class="col-sm-4 control-label">Confirm Password：</label>
                <div class="col-sm-6">
                  <input type="password" class="form-control" name="repassword" placeholder="3-16 characters" maxlength="16" />
                </div>
              </div>
              <div class="form-group">
                 <label for="email" class="col-sm-4 control-label">E-mail：</label>
                <div class="col-sm-6">
                  <input type="email" class="form-control" name="email" />
                  <input type="hidden" class="form-control" name="registrTime" id="registrtime"/>
                  <input type="hidden" class="form-control" name="registrIp" id="registrip"/>
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-offset-4 col-sm-6">
                   <button type="submit" class="btn btn-info">Register</button>
                   <button type="reset" class="btn btn-danger">Cancel</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    
	<!-- ip address api -->
	<script src="http://pv.sohu.com/cityjson?ie=utf-8" ></script>
	<script type="text/javascript">
		var x =returnCitySN.cip+'--'+returnCitySN.cname;
		$("#loginip").val(x); 
		$("#registrip").val(x); 
		$("#registrtime").val(new Date().toUTCString());
		$("#logintime").val(new Date().toUTCString());
	</script>
	
    <!-- 忘记密码 -->
    <div id="forget" style="display: none;">
      <div class="login_top">
          <a class="btn_back" href="javascript:void(0)" title="Return"><strong>Return</strong></a>
          <img src="images/logo.jpg" width="100px;" height="100px;">
          <h4 class="login_title">G​RAND​ R​UNETERRA​ T​AVERN-Change Password</h4>
      </div>
      <div class="register_body">
        <div class="row clearfix">
          <div class="col-md-12 column">
            <form class="form-horizontal" action="${pageContext.request.contextPath }/userforget" method="post" role="forget">
              <div class="form-group">
                 <label for="userName" class="col-sm-4 control-label">User Name：</label>
                <div class="col-sm-6">
                  <input type="text" class="form-control" name="username" placeholder="3-10 characters" maxlength="10" />
                </div>
              </div>
              <div class="form-group">
                 <label for="password" class="col-sm-4 control-label">Password：</label>
                <div class="col-sm-6">
                  <input type="password" class="form-control" name="password" placeholder="3-16 characters" maxlength="16" />
                </div>
              </div>
              <div class="form-group">
                 <label for="repassword" class="col-sm-4 control-label">Confirm Password ：</label>
                <div class="col-sm-6">
                  <input type="password" class="form-control" name="oldpwd" placeholder="3-16 characters" maxlength="16" />
                </div>
              </div>
              <div class="form-group">
                 <label for="repassword" class="col-sm-4 control-label">New Password：</label>
                <div class="col-sm-6">
                  <input type="password" class="form-control" name="newpwd" placeholder="3-16个 characters" maxlength="16" />
                </div>
              </div>
              <div class="form-group">
                 <label for="email" class="col-sm-4 control-label">E-mail：</label>
                <div class="col-sm-6">
                  <input type="email" class="form-control" name="email" />
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-offset-4 col-sm-6">
                   <button type="submit" class="btn btn-info">Submit</button>
                   <button type="reset" class="btn btn-danger">Cancel</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

  </div> <!-- /main -->
</body>
</html>