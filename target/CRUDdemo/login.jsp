<%--
  Created by IntelliJ IDEA.
  User: Garry
  Date: 01.12.2021
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Login</title>
</head>
  <body>
  <%@include file="navbar.jsp"%>
  <%@include file="base.jsp"%><br><br><br>
  <div class="row justify-content-center">
    <div class="col-md-6">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title text-center">Login</h5>
          <p class="card-text">
          <form>

            <label for="email" class="form-label">Your Email</label>
            <input type="text" class="form-control" placeholder=" Enter Your Email">

            <label for="password"> Enter Your Password :</label>
            <input type="password" class="form-control" placeholder=" Enter Password">

            <button class="mt-4 btn btn-primary" type="submit">Login</button>
          </form>
          </p>
        </div>
      </div>
    </div>
  </div>
  </body>
</html>
