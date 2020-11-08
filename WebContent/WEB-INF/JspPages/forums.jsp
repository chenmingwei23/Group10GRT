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

<!-- 主体 -->
<div class="container">

  <div class="panel panel-primarys">
    <div class="panel-headings">
     <h3 class="panel-titles">MOBA Game</h3>
    </div>
    <div class="panel-body">
      <div class="row clearfix">
      	<c:forEach var="tf" items="${tf}" begin="0" end="2" varStatus="is">
        <div class="col-md-4 column">
          <div class="media">
            <a class="media-left" href="${pageContext.request.contextPath }/posts${tf.getId()}">
              <img alt="64x64" src="${tf.getLogo() }" style="width: 64px; height: 64px;">
            </a>
            <div class="media-body">
              <h4 class="media-heading"><a href="${pageContext.request.contextPath }/posts${tf.getId()}"><strong>${tf.getTitle() }</strong></a></h4>
              <p class="text-muted">${tf.getInfo() }</p>
              <span class="text-info">Post Number：${countFPost[is.index] }</span>
            </div>
          </div>
        </div>
		</c:forEach>
      </div>
    </div>
   </div>

   <div class="panel panel-primarys">
    <div class="panel-headings">
     <h3 class="panel-titles">FPS Game</h3>
    </div>
    <div class="panel-body">
      <div class="row clearfix">
      	<c:forEach var="tf" items="${tf}" begin="3" end="5" varStatus="is">
        <div class="col-md-4 column">
          <div class="media">
            <a class="media-left" href="${pageContext.request.contextPath }/posts${tf.getId()}">
              <img alt="64x64" src="${tf.getLogo()}" style="width: 64px; height: 64px;">
            </a>
            <div class="media-body">
              <h4 class="media-heading"><a href="${pageContext.request.contextPath }/posts${tf.getId()}"><strong>${tf.getTitle() }</strong></a></h4>
              <p class="text-muted">${tf.getInfo() }</p>
              <span class="text-info">Post Number：${countFPost[is.index] }</span>
            </div><!-- select Tbl_Forums.forumId,COUNT(*) counts from Tbl_Forums,Tbl_Post where Tbl_Post.forumId=Tbl_Forums.forumId group by Tbl_Forums.forumId -->
          </div>
        </div>
		</c:forEach>
      </div>
    </div>
   </div>

  <div class="panel panel-primarys">
    <div class="panel-headings">
     <h3 class="panel-titles">Mobile Game</h3>
    </div>
    <div class="panel-body">
      <div class="row clearfix">
      	<c:forEach var="tf" items="${tf}" begin="6" end="8" varStatus="is">
        <div class="col-md-4 column">
          <div class="media">
            <a class="media-left" href="${pageContext.request.contextPath }/posts${tf.getId()}">
              <img alt="64x64" src="${tf.getLogo() }" style="width: 64px; height: 64px;">
            </a>
            <div class="media-body">
              <h4 class="media-heading"><a href="${pageContext.request.contextPath }/posts${tf.getId()}"><strong>${tf.getTitle() }</strong></a></h4>
              <p class="text-muted">${tf.getInfo() }</p>
              <span class="text-info">Post Number：${countFPost[is.index] }</span>
            </div><!-- select Tbl_Forums.forumId,COUNT(*) counts from Tbl_Forums,Tbl_Post where Tbl_Post.forumId=Tbl_Forums.forumId group by Tbl_Forums.forumId -->
          </div>
        </div>
		</c:forEach>
      </div>
    </div>
   </div>


   <div class="row clearfix total">
    <div class="col-md-4 column">
      <p>
         <em>${countReply}</em>
         <span>Reply</span> 
      </p>
    </div>
    <div class="col-md-4 column">
      <p>
         <em>${countPost}</em>
         <span>Posts</span> 
      </p>
    </div>
    <div class="col-md-4 column">
      <p>
         <em>${countUser}</em>
         <span>Members</span> 
      </p>
    </div>
  </div><!-- /帖子统计 -->

</div><!-- /主体 -->

<jsp:include page="bottom.jsp" flush="true"></jsp:include>
</body>
</html>