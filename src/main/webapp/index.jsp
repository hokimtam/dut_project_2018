<%@ page language="java" contentType="text/html" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ page import="java.util.List"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:wrapper>
	<main role="main" class="container">
			<div class="box">
			   <div class="div1">1st</div>
			   <div class="div2">2nd</div>
			   <div class="clear">
			</div>




		<div class="split left">
			  <div class="centered">
			    <div class="text-center">
			    <form class="form-login" action="/login" method="post">
			        <h1 class="h3 mb-3 font-weight-normal">Login</h1>
			        <label for="username" class="sr-only">Username</label>
			        <input type="text" name="username" class="form-control" placeholder="username" required="">
			        <label for="password" class="sr-only">Password</label>
			        <input type="password" name="password" class="form-control" placeholder="password" required="">
			        <p>Don't have an account ? Register <a href="/signup"> here </a></p>
			        <br>
			        <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
			    </form>
			</div>
		  </div>
		</div>

		<div class="split right">
		  <div class="centered">
		    <div class="centered">
			    <div class="text-center">
			    <form class="form-login" action="/login" method="post">
			        <h1 class="h3 mb-3 font-weight-normal">Login</h1>
			        <label for="username" class="sr-only">Username</label>
			        <input type="text" name="username" class="form-control" placeholder="username" required="">
			        <label for="password" class="sr-only">Password</label>
			        <input type="password" name="password" class="form-control" placeholder="password" required="">
			        <p>Don't have an account ? Register <a href="/signup"> here </a></p>
			        <br>
			        <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
			    </form>
			</div>
		  </div>
		</div>


				
    </main><!-- /.container -->
</t:wrapper>