<%@ page import="java.sql.Connection" %>

<%@ page import="by.prohor.connections.MyConnection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="by.prohor.entities.Message" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Home</title>
    <!--CSS-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
   <!-- <link href="css/style.css" rel="stylesheet"> -->
    <!--JS-->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</head>
  <body>
   <%@include file="navbar.jsp"%>
   <div class="row justify-content-center">
       <div class="col-md-6">
           <% if(user==null){
                response.sendRedirect("login.jsp");
           }else{%>
           <h1>Welcome in My Notebook</h1>
           <br>
           <br>

           <div class="row">
               <div class="col-sm-6">
                   <div class="card">
                       <div class="card-body">
                           <h5 class="card-title">Past events</h5>
                           <p class="card-text">This section contains events that have <span style="color: red">passed</span>.</p>
                           <a href="past.jsp" class="btn btn-primary">Click here</a>
                       </div>
                   </div>
               </div>

               <div class="col-sm-6">
                   <div class="card">
                       <div class="card-body">
                           <h5 class="card-title">Real events</h5>
                           <p class="card-text">This section contains the events that are taking place <span style="color: red">today</span>.</p>
                           <a href="real.jsp" class="btn btn-primary">Click here</a>
                       </div>
                   </div>
               </div>
           </div>
           <br>
           <br>
           <div class="row">
               <div class="col-sm-6">
                   <div class="card">
                       <div class="card-body">
                           <h5 class="card-title">Future events</h5>
                           <p class="card-text">This section contains events that will take place in the <span style="color: red">future</span>.</p>
                           <a href="future.jsp" class="btn btn-primary">Click here</a>
                       </div>
                   </div>
               </div>
               <div class="col-sm-6">
                   <div class="card">
                       <div class="card-body">
                           <h5 class="card-title">All events</h5>
                           <p class="card-text">This section contains <span style="color: red">all</span> events.</p>
                           <a href="home.jsp" class="btn btn-primary">Click here</a>
                       </div>
                   </div>
               </div>
           </div>
           <% }%>
      </div>
  </div>
  </body>

</html>
