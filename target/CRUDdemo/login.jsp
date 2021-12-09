<%@ page import="by.prohor.entities.Message" %>
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
          <%
            Message message = (Message) session.getAttribute("msg");
            if(message!=null){%>
              <div class="alert alert-<%= message.getCssClass()%>>" role="alert">
                      <%= message.getContent()%>
                      </div>
            <%}
          %>
          <%session.removeAttribute("msg");%>
          <p class="card-text">
          <form method="post" action="login" class="form-group">

          <div class="form-group">
            <label>Email address</label>
            <input type="email" class="form-control" name="Login-email" placeholder="Enter Your Email" required>
          </div>
          <div class="form-group">
            <label>Password</label>
            <input type="password" class="form-control" name="Login-password" placeholder="*********" required>
          </div><br>

          <div class="text-center">
            <button type="submit" class="btn btn-primary">Login</button>
          </div>
          </form>
          </p>
        </div>
      </div>
    </div>
  </div>
  </body>
</html>
