<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
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
  	<link rel="apple-touch-icon" href="${pageContext.request.contextPath }/images/icon.png">
  	<link rel="icon" href="${pageContext.request.contextPath }/images/icon.png">
  	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
  	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/index.css">
  	<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
  	<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
  <link href="${pageContext.request.contextPath }/umeditor1.2.3/themes/default/css/umeditor.css" type="text/css" rel="stylesheet">
  <script type="text/javascript" src="${pageContext.request.contextPath }/umeditor1.2.3/third-party/jquery.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/umeditor1.2.3/third-party/template.min.js"></script>
  <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/umeditor1.2.3/umeditor.config.js"></script>
  <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/umeditor1.2.3/umeditor.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/umeditor1.2.3/lang/zh-cn/zh-cn.js"></script>
  <style type="text/css">
    .pgs {margin-bottom: 10px !important;zoom: 1;}
    .pgs .pgts {margin-top: 5px;line-height: 26px;font-size: 12px;float: right;}
    .pagination {margin: 0;}
    .list-unstyled span {width: 75px;color: #909090;word-break: break-all;} 
    .sub-infos span.pipe {margin: 0 5px; color: #CCC; } 
    .sub-infos, .sub-infos a, .sub-infos a:visited {color: #c7c7c7; font-size: 12px; margin-left: 10px; } 
    .sub-infos span {margin: 0 2px; } 
    .thumbnails {
        display: block;
        margin-bottom: 20px;
        line-height: 1.42857143;
        padding: 20px 5px 20px;
        background-color: whitesmoke;
        border: 0px;
        border-radius: 0px;
        -webkit-transition: border .2s ease-in-out;
        -o-transition: border .2s ease-in-out;
        transition: border .2s ease-in-out;
    }
    #lifeuser:hover {color: red;cursor: pointer;}
    .floorer{display: inline-block; float: right; height: 20px; min-width: 34px; background: #ff6927; border-radius: 5px; line-height: 20px; text-align: center; color: white; } 
    .floorer:hover {background: #f84c00; color: white; cursor: pointer; }
    .floors{display: inline-block; float: right; height: 20px; min-width: 34px; background: #909090; border-radius: 5px; line-height: 20px; text-align: center; color: white; } 
    .floors:hover {background: #797979; color: white; cursor: pointer; }
    .b_sfh{line-height: 24px;padding: 3em 0; width:100%; text-align: center;} 
  </style>
</head>
<body>
<jsp:include page="top.jsp" flush="true"></jsp:include>

<div class="container">
  <ol class="breadcrumb" style="margin-bottom: 5px;">
	<li><a href="${pageContext.request.contextPath }/forums" title="Forums"><span class="glyphicon glyphicon-home"></span></a></li>
	<li><a href="${pageContext.request.contextPath }/posts${tf.getId()}">${tf.getTitle()}</a></li>
    <li class="active">${tp.getTitle()}</li>
  </ol>

  <div id="pgt" class="pgs">
    <div class="pgts">
      <ul class="pagination">
    <li><a href="${pageContext.request.contextPath }/reply${tp.getId() }/<c:if test="${id-1>0 }">${id-1}</c:if>">«</a></li>
    <li id="page1" class="active"><a href="${pageContext.request.contextPath }/reply${tp.getId() }/1">1</a></li>
    <c:forEach items="${listtr }" varStatus="ov" begin="0" end="8">
    <li id="page${ov.index+2 }"><a href="${pageContext.request.contextPath }/reply${tp.getId() }/${ov.index+2 }">${ov.index+2 }</a></li>
    </c:forEach>
    <li><a href="${pageContext.request.contextPath }/reply${tp.getId() }/${id+1}">»</a></li>
       </ul>
    </div>
	<c:choose>
		<c:when test="${user!=null || not empty user }">
	<a href="${pageContext.request.contextPath }/newspost" type="button" class="btn btn-like btn-warning" title=" New Post">
      <span class="glyphicon glyphicon glyphicon-edit"></span>&nbsp;New Post
    </a>
    <a href="#reply" type="button" class="btn btn-warning" title="Reply">
      <span class="glyphicon glyphicon glyphicon glyphicon-dashboard"></span>&nbsp;Reply
    </a>
		</c:when>
		<c:otherwise>
	<button type="button" class="btn btn-like btn-warning" title="Post" onclick="alert('Please Login！');">
      <span class="glyphicon glyphicon glyphicon-edit"></span>&nbsp;Post
    </button>
    <button type="button" class="btn btn-warning" title="Reply" onclick="alert('Please Login！');">
      <span class="glyphicon glyphicon glyphicon glyphicon-dashboard"></span>&nbsp;Reply
    </button>
		</c:otherwise>
	</c:choose>
  </div>
</div>


<div class="container" style="background-color: whitesmoke;
    border: 1px solid #ddd;
    border-radius: 4px;">
  <!-- 楼主发布的信息 -->
  <div class="row clearfix">
    <div id="userinfo" class="col-md-2 column">
      <div class="thumbnails">
        <img alt="120x120" src="${tu.getAvatar()}" style="width: 120px; height: 120px; border-radius: 5px;" />
        <div class="caption">
          <h4> <b> <a href="${pageContext.request.contextPath}/otherinfo${tu.getId()}/${tf.getId()}">${tu.getUsername()}</a> </b></h4>
          <h6> <a href="">${tu.getPositi()}</a> </h6>
          <ul class="list-unstyled">
            <li>Experience：<span>${tu.getExp()}</span></li>
            <li>Sign In：<span>${tu.getSigninNum()}</span></li>
            <li>Credits：<span>${tu.getSigninPoints()}</span></li>
            <li>Last Login Time：<br/><span><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${tu.getLoginOldTime()}" /></span></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="col-md-10 column" style="background-color: #fff;min-height: 560px;">
      <!-- 输入信息的头部 -->
      <h3 class="ts"><a id="thread_subject" href="1">${tp.getTitle()}</a></h3>
      <div class="sub-infos">
        <span class="glyphicon glyphicon-eye-open" title="View">&nbsp;${tp.getViews()}</span><span class="pipe">|</span>
        <span class="glyphicon glyphicon-comment" title="Reply">&nbsp;${tp.getRegens()}</span><span class="pipe">|</span>
        <span class="glyphicon glyphicon-time" title="Post Time">&nbsp;<fmt:formatDate type="both" value="${tp.getTime()}" /></span><span class="pipe">|</span>
        <span id="lifeuser" class="glyphicon glyphicon-user" title="Just Author"><a href="${pageContext.request.contextPath }/userinfo${tu.getId()}/${tf.getId()}">${tu.getUsername()}</a></span>
        <span class="floorer">Owner</span>
      </div>
      <!-- 输入信息内容 -->
      <div style="width: 100%;padding-top: 20px;min-height: 350px;">
      ${tp.getContent()}
      </div>
      

  <!-- 水友发布的信息 -->
  <c:forEach items="${listtr}" var="tr" varStatus="is" begin="${pageover+0 }" end="${pageover+9 }">
  <div class="row clearfix" style="border-top: 2px solid #ccc;">
    <div id="userinfo" class="col-md-2 column">
      <div class="thumbnails">
        <img alt="120x120" src="${listtu[is.index].getAvatar()}" style="width: 120px; height: 120px; border-radius: 5px;" />
        <div class="caption">
          <h4> <b> <a href="${pageContext.request.contextPath}/otherinfo${listtu[is.index].getId() }/${tf.getId()}">${listtu[is.index].getUsername()}</a> </b></h4>
          <h6> <a href="">${listtu[is.index].getPositi()}</a> </h6>
          <ul class="list-unstyled">
            <li>Experience：<span>${listtu[is.index].getExp()}</span></li>
            <li>Sign in：<span>${listtu[is.index].getSigninPoints()}</span></li>
            <li>Credits：<span>${listtu[is.index].getSigninNum()}</span></li>
            <li>Last Login Time：<br/><span><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${listtu[is.index].getLoginOldTime()}" /></span></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="col-md-10 column" style="background-color: #fff;min-height: 390px;padding-top: 15px;">
      <div class="sub-infos">
        <span class="glyphicon glyphicon-time" title="Reply Time">&nbsp;<fmt:formatDate type="both" value="${tr.getTime()}"/></span><span class="pipe">|</span>
        <span id="lifeuser" class="glyphicon glyphicon-user" title="Just author"><a href="${pageContext.request.contextPath }/userinfo${listtu[is.index].getId() }/${tf.getId() }">${listtu[is.index].getUsername() }</a></span>
        <span class="floors">${tr.getFloor()}#</span>
      </div>
      <!-- 输入信息内容 -->
      <div style="width: 100%;padding-top: 20px;">
      ${tr.getContent() }
      </div>
    </div> <!-- /col-md-9 -->
  </div>
  </c:forEach>
  <!-- /水友发布的信息 -->


</div> <!-- /container -->

<!-- 分页 -->
<div class="container" style="padding: 15px 0px;">
  <ul class="pagination" style="float: right;">
    <li><a href="${pageContext.request.contextPath}/reply${tp.getId()}/<c:if test="${id-1>0 }">${id-1}</c:if>">«</a></li>
    <li id="pagen1" class="active"><a href="${pageContext.request.contextPath}/reply${tp.getId()}/1">1</a></li>
    <c:forEach items="${listtr }" varStatus="ov" begin="0" end="8">
    <li id="pagen${ov.index+2 }"><a href="${pageContext.request.contextPath}/reply${tp.getId()}/${ov.index+2 }">${ov.index+2 }</a></li>
    </c:forEach>
    <li><a href="${pageContext.request.contextPath}/reply${tp.getId()}/${id+1}">»</a></li>
  </ul>
</div>
<script type="text/javascript">
$(function(){
	$("<c:if test="${id>1 }">#page1</c:if>").removeClass("active");
	$("<c:if test="${id>1 }">#page${id }</c:if>").addClass("active");
	$("<c:if test="${id>1 }">#pagen1</c:if>").removeClass("active");
	$("<c:if test="${id>1 }">#pagen${id }</c:if>").addClass("active");
});
</script>

<div id="reply"></div>
<c:if test="${user!=null || not empty user }">
<!--用户评论-->
<div class="container">
    <div class="row clearfix" style="border: 1px solid #ddd;">
    <div id="userinfo" class="col-md-2 column">
      <div class="thumbnails">
		<img alt="120x120" src="${user.getAvatar()}" style="width: 120px; height: 120px; border-radius: 5px;" />
      </div>
    </div>
    <div class="col-md-10 column" style="background-color: #fff;min-height: 240px;">
      <form class="form-horizontal" action="${pageContext.request.contextPath }/replypost" method="post" role="replypost">
	      <!-- 输入信息内容 -->
	      <div style="width: 100%;padding-top: 20px;padding-bottom: 20px;">
	          <!--style给定宽度可以影响编辑器的最终宽度-->
	          <script type="text/plain" id="myEditor" name="content" style="width:100%;height:120px;">
            	<p></p>
          	  </script>
          	  <input type="hidden" name="time" id="replytime"/>
          	  <input type="hidden" name="userId" value="${user.getId()}">
          	  <input type="hidden" name="postId" value="${tp.getId()}">
          	  <input type="hidden" name="floor" value="${fn:length(listtr)+1 }">
	          <script type="text/javascript">
	            //实例化编辑器
	            var um = UM.getEditor('myEditor',{toolbar:['bold italic underline strikethrough |  removeformat |','link emotion','| horizontal '],autoClearinitialContent:true,wordCount:false});
	          </script>
	      </div>
	      <button type="submit" class="btn btn-warning" title="Post">
	       <span class="glyphicon glyphicon glyphicon-edit"></span>&nbsp;Post
	      </button>
      </form>
      <script type="text/javascript">
		$("#replytime").val(new Date().toUTCString());
	 </script>
    </div> <!-- /col-md-10 -->
  </div>
</div>
</c:if>

<jsp:include page="bottom.jsp" flush="true"></jsp:include>
</body>
</html>