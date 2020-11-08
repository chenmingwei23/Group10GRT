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
  <title>${tf.getTitle()}-G​RAND​ R​UNETERRA​ T​AVERN</title>
    <link rel="apple-touch-icon" href="${pageContext.request.contextPath }/images/icon_base/icon.png">
    <link rel="icon" href="${pageContext.request.contextPath}/images/icon_base/icon.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
  	<style type="text/css">
	    .panel-primarys {border-color: #fd7b5d; }
	    .panel-headings {padding: 10px 15px; border-bottom: 1px solid transparent; border-top-left-radius: 3px; border-top-right-radius: 3px; font-size: 16px;font-weight: 700;background-color: #fd7b5d;}
	    .media {margin-top: 0px;padding: 18px 15px;border-bottom: 1px solid #dadada; }
	    .media:hover {background-color: #fafafa; border-radius: 5px;} 
	    .media-object {display: block; border-radius: 8px; }
	    .pipe {margin: 0 5px; color: #CCC; } 
	    .sub-infos, .sub-infos a, .sub-infos a:visited {color: #8a8a8a; font-size: 12px; margin-left: 5px; margin-left: 5px;margin-top: 10px} 
	    .sub-infos span {margin: 0 2px; } 
  	</style>
</head>
<body>
<jsp:include page="top.jsp" flush="true"></jsp:include>

<div class="container">
  <div class="row clearfix">
    <div class="col-md-8 column" style="background-color: #ffffff;border: 1px solid #f2f2f2; border-radius: 5px;padding-top: 15px;">

	    <ol class="breadcrumb" style="margin-bottom: 5px;">
	      <li><a href="${pageContext.request.contextPath }/forums" title="Forums"><span class="glyphicon glyphicon-home"></span></a></li>
	      <li class="active"><a href="posts${tf.getId()}">${tf.getTitle()}</a></li>
	    </ol>
    
		<c:forEach items="${listPost }" var="tp" varStatus="is" begin="${pageover+0 }" end="${pageover+9 }">
	    <div class="media">
	      <a class="media-left" href="${pageContext.request.contextPath }/otherinfo${listUser[is.index].getId() }/${tf.getId() }">
	        <img class="media-object" alt="50x50" src="${listUser[is.index].getAvatar() }" style="width: 50px; height: 50px;">
	      </a>
	      <div class="media-body">
	        <h4 class="media-heading"><a href="reply${tp.getId() }">${tp.getTitle() }</a></h4>
	      <div class="sub-infos">
	        <a href="${pageContext.request.contextPath }/otherinfo${listUser[is.index].getId() }/${tf.getId() }">${listUser[is.index].getUsername() }</a>
	        <span class="pipe">|</span>View：<span>${tp.getViews() }</span>
	        <span class="pipe">|</span>Reply：<span>${tp.getRegens() }</span>
	        <span></span>
	        <span title="Post Time"><fmt:formatDate type="both" value="${tp.getTime() }" /></span>
	      </div>
	      </div>
	    </div>         
		</c:forEach>
           
	      <div style="text-align: center;">
	         <ul class="pagination">
                <li><a href="${pageContext.request.contextPath }/posts${tf.getId()}/<c:if test="${id-1>0 }">${id-1}</c:if>">«</a></li>
   				<li id="page1" class="active"><a href="${pageContext.request.contextPath }/posts${tf.getId()}/1">1</a></li>
   				<c:forEach items="${listPost }" varStatus="ov" begin="0" end="15">
  					<li id="page${ov.index+2 }"><a href="${pageContext.request.contextPath }/posts${tf.getId()}/${ov.index+2 }">${ov.index+2 }</a></li>
   				</c:forEach>
   				<li><a href="${pageContext.request.contextPath }/posts${tf.getId()}/${id+1}">»</a></li>
	         </ul>
	       </div>
           <script type="text/javascript">
          	$(function(){
				$("<c:if test="${id>1 }">#page1</c:if>").removeClass("active");
          		$("<c:if test="${id>1 }">#page${id }</c:if>").addClass("active");
          	});
          </script>
    </div>
    <div class="col-md-4 column visible">
		<jsp:include page="right.jsp" flush="true"></jsp:include>
    </div>
  </div>
</div>

<jsp:include page="bottom.jsp" flush="true"></jsp:include>
</body>
</html>