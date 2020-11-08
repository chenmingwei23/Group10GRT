<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%response.setContentType("text/html");response.setCharacterEncoding("utf-8"); %>


<!-- 导航栏 -->
<div id="nav" style="background-color: #3b3b3b;">
    <nav class="my-navbar" role="navigation">  
        <div class="container-fluid">  
            <div class="navbar-header">  
                <a class="navbar-brand" href="${pageContext.request.contextPath }/forums" title="G​RAND​ R​UNETERRA​ T​AVERN​">
                G​RAND​ R​UNETERRA​ T​AVERN
                </a>  
            </div>  
            <div class="collapse navbar-collapse" id="example-navbar-collapse"> 
                <!-- 左边 -->
                <ul class="nav navbar-nav">  

                    <li><a href="${pageContext.request.contextPath }/forums">Forums</a></li>  
                    <li><a href="${pageContext.request.contextPath }/streams">Streams</a></li>  
                    <li><a href="${pageContext.request.contextPath }/forums">Forums</a></li>
                    <li><a href="${pageContext.request.contextPath }/score">Scores</a></li>
                    <li><a href="${pageContext.request.contextPath }/marking">Marking</a></li>

                 </ul> <!-- /左边 -->
                <!-- 右边 -->
                <ul class="nav navbar-nav navbar-right">
                  <!-- 用户信息头像 -->
				<c:choose>  
	   				<c:when test="${user!=null && not empty user }">
	                  <li class="dropdown">
	                   <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
	                   <img src="${user.getAvatar()}" style="width:25px;height:25px; border-radius: 50%;"></a>
	                   <ul class="dropdown-menu" role="menu" style="background-color: rgba(0,0,0,.65);">
	                    <li class="dropdown-header" style="color: red;">User：${user.getUsername() }</li>
	                    <li><a href="javascript:void(0)">Occupation：${user.getPositi() }</a></li>
	                    <li><a href="javascript:void(0)">Credits：${user.getSigninPoints() }</a></li>
	                    <li><a href="${pageContext.request.contextPath }/userinfo">More Info</a></li>
	                    <li class="divider"></li>
	                    <li><a href="${pageContext.request.contextPath }/userlogout${user.getId()}"><button class="btn btn-like btn-block btn-danger">Log out</button></a></li>
	                   </ul>
	                  </li>
	   				</c:when>  
	   				<c:otherwise>
	   				    <li><a href="${pageContext.request.contextPath }/login" title="Please Login"><img src="/bbs/default/default_user_no.jpg" style="width:30px;height:25px; border-radius: 50%;"></a></li>
	   				</c:otherwise>  
				</c:choose> 
                  <li>
                    <!-- 搜索 -->
                    <form class="navbar-form navbar-right" action="#" method="post" role="search">
                      <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search"/>
                      </div>
                      <button type="submit" class="btn btn-default btn-primary">Search</button>
                    </form>
                  </li>
                </ul><!-- /右边 -->
            </div>  
        </div>  
    </nav>
</div>


<div class="container"  style="padding-top: 60px;"></div>