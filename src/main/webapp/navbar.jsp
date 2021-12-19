<%@ page import="by.prohor.entities.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Navbar</title>
</head>
  <body>
<% User user = (User) session.getAttribute("currentUser");%>

  <%@include file="base.jsp"%>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Notebook</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <% if(user==null){%>
          <li class="nav-item">
            <a class="nav-link" href="login.jsp">Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="registr.jsp">Register</a>
          </li>
          <% }else{%>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="addev.jsp">New Event</a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="logout.jsp">LogOut</a>
          </li>
          <li class="nav-item">
            <a style="color: red" class="nav-link" href="user.jsp"><%=user.getUsername()%></a>
          </li>
          <% }%>
          <li class="nav-item">
            <a class="nav-link" href="#">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  </body>
</html>
