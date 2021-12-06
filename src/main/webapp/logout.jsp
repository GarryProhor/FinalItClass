<%@ page import="by.prohor.entities.Message" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
</head>
  <body>
  <% session.getAttribute("currentUser");
     session.removeAttribute("currentUser");
     Message message = new Message("Logout Successfully!", "success", "success");
     session.setAttribute("msg", message);
     response.sendRedirect("login.jsp");
  %>
  </body>
</html>
