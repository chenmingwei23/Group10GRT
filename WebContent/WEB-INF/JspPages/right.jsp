<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%response.setContentType("text/html");response.setCharacterEncoding("utf-8"); %>

	<h5>${message}</h5>
    <c:choose>
		<c:when test="${user!=null || not empty user }">
	<a href="${pageContext.request.contextPath }/newspost" type="button" class="btn btn-block btn-lg btn-warning" title="Post">
      <span class="glyphicon glyphicon glyphicon glyphicon-edit"></span>&nbsp;&nbsp;&nbsp;&nbsp;Post
    </a>
    <a href="${pageContext.request.contextPath }/signin${user.getId() }" type="button" class="btn btn-block btn-lg btn-info" title="Sign In">
      <span class="glyphicon glyphicon glyphicon-flag"></span>&nbsp;&nbsp;&nbsp;&nbsp;Sign In
    </a>
		</c:when>
		<c:otherwise>
	<button type="button" class="btn btn-block btn-lg btn-warning" title="Post" onclick="alert('Please Login！');">
       <span class="glyphicon glyphicon glyphicon glyphicon-edit"></span>&nbsp;&nbsp;&nbsp;&nbsp;Post
    </button>
    <button type="button" class="btn btn-block btn-lg btn-info" title="Sign In" onclick="alert('Please Login!');">
       <span class="glyphicon glyphicon glyphicon-flag"></span>&nbsp;&nbsp;&nbsp;&nbsp;Sign In
    </button>
		</c:otherwise>
	</c:choose>
      <c:if test="${user!=null && not empty user }">
      <div class="panel panel-primarys">
        <div class="panel-headings">User Name:${user.getUsername() }</div>
        <div class="list-group">
          <ul style="list-style: none;">
            <li>Login Time:<fmt:formatDate type="both" value="${user.getLoginTime() }" /></li>
            <li>Last Login Time:<fmt:formatDate type="both" value="${user.getLoginOldTime() }" /></li>
            <li>Signed in the number:${user.getSigninNum() }</li>
            <li>Experience:${user.getExp() }</li>
          </ul>
        </div>
      </div>
	  </c:if>
    
      

     