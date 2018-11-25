<%@ page language="java" contentType="text/html" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<t:wrapper2>

<div class="container">
<div class="row">
<h3 class="pb-3 mb-4 font-italic border-bottom">Welcome, <b style="color:blue">${username}</b></h3>
</div>
  	<div class="card" style="width: 100%">
  		<div class="card-header" id="headingTwo">
	    </div>
	       <div class="card-body">
	      	 <div align="center">
		            <form class="mt-2 mt-md-0"  action="/search" method="get">
		            <br>
		            <input type="text" name="query" value="${fn:escapeXml(param.query)}">
		            <button class="btn btn-success my-2 my-sm-0" type="submit" value="">Search</button>
    			 </form >
			</div>
			<div align="center">
				<h3>List users</h3>
				<div style="overflow-y: scroll; height: 100px;">
				<c:if test="${searchquery != null}">
			    <div class="alert alert-info" role="alert">
			    		Searching result for <strong><c:out value="${fn:escapeXml(searchquery) }"/></strong> 
				</div>
				<c:forEach items="${users}" var="user">
			          Last name: <c:out value="${user.lastname}"/> - Username: <c:out value="${user.username}"/><br>
         		 </c:forEach>
				</div>	
		  </c:if>  
				
			</div>
				</div>
			    <label for="post-title">How do you feel now?</label>
			    <input type="text" class="form-control" name="post-title" id="post-title" placeholder="Very happy">
			  </div>
			  <div class="form-group">
			    <label for="post-content">What make you feel that?</label>
			    <textarea class="form-control" id="post-content" name="post-content" rows="4" placeholder="Today, I meet my crush. It make me happy, etc."></textarea>
			  </div>
			  <button type="submit" class="btn btn-primary" onClick="alert("Ok")">Submit</button>
			  <c:if test="${isSuccess != null}">
			    <c:choose>
			  		<c:when test="${isSuccess}">
					<p style="color:green">Adding succeeded</p>
					</c:when>
					<c:otherwise>
					<p style="color:red">Something went wrong</p>
					</c:otherwise>
				</c:choose>
			</c:if>
			</form> 
	    </div>
	</div>
</div>
</t:wrapper2>