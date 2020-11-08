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
  <link rel="apple-touch-icon" href="${pageContext.request.contextPath }/images/icon.png">
  <link rel="icon" href="${pageContext.request.contextPath}/images/icon.png">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/index.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="WEB-INF/JspPages/top.jsp" flush="true"></jsp:include>

<!-- 主体 -->
<div class="container">
  <div class="row clearfix">
    <div class="col-md-8 column" style="border: 1px #eaeaea solid; background-color: #fff;">
   <!-- 主体  -->
 		<c:forEach items="${tpB }" var="tpb" varStatus="isb" begin="${pageover+3 }" end="${pageover+6 }">
           <div class="thumbnails">
            <h3 style="display: block;white-space: nowrap;overflow: hidden;text-overflow: ellipsis;"> 
            <a href="${pageContext.request.contextPath }/reply${tpb.getId()}" title="${tpb.getTitle()}">${tpb.getTitle()}</a></h3>
            <a href="${pageContext.request.contextPath }/reply${tpb.getId()}"><img src="${tpb.getPic()}" alt="${tpb.getTitle()}" style="height: 200px; width: 100%; display: block;border-radius: 6px;"></a>
            <p>&nbsp;</p>
            <div class="capttion">
             <div class="article_info clearfix">
                  <p class="article_info_left">
                  	  <a href="${pageContext.request.contextPath }/otherinfo${ltutpb[isb.index].getId() }/${tpb.getForumId() }">
                      <img src="${ltutpb[isb.index].getAvatar()}">
                      <span class="author">${ltutpb[isb.index].getUsername() }</span></a> 
                      <span>Post Time <fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${tpb.getTime() }" /></span>
                  </p>
                  <p class="article_info_right">
                      <span class="article_info_right_0">View:${tpb.getViews() }</span>
                      <span class="article_info_right_1">Reply:${tpb.getRegens() }</span>
                  </p>
              </div>
            </div>
           </div>
		</c:forEach>
		 
          <div style="text-align: center;">
             <ul class="pagination">
                <li><a href="${pageContext.request.contextPath }/<c:if test="${id-1>0 }">index${id-1 }</c:if>">«</a></li>
                <li id="page1" class="active"><a href="${pageContext.request.contextPath }/index1">1</a></li>
                <c:forEach items="${tpB }" varStatus="ov" begin="0" end="4">
                <li id="page${ov.index+2 }"><a href="${pageContext.request.contextPath }/index${ov.index+2 }">${ov.index+2 }</a></li>
                </c:forEach>
                <li><a href="${pageContext.request.contextPath }/index${id+1 }">»</a></li>
             </ul>
          </div>
          <script type="text/javascript">
          	$(function(){
			   $("<c:if test="${id>1 }">#page1</c:if>").removeClass("active");
          	   $("<c:if test="${id>1}">#page${id }</c:if>").addClass("active");
          	});
          </script>

    </div>
    <div id="tf" class="col-md-4 column visible">
      <jsp:include page="WEB-INF/JspPages/right.jsp" flush="true"></jsp:include>
    </div><!-- /col-md-4 column -->
  </div>
</div>

<jsp:include page="WEB-INF/JspPages/bottom.jsp" flush="true"></jsp:include>
</body>
</html>