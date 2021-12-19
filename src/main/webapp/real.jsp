<%@ page import="java.sql.Connection" %>

<%@ page import="by.prohor.connections.MyConnection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="by.prohor.entities.Message" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Today Event</title>
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
    <div class="col-md-10">
        <h3>Today Events Listed here</h3>

        <% Connection con = MyConnection.getConnection();
            String query = "select * from events where evDate=curdate()";
            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery(query);

            Message message = (Message) session.getAttribute("msg");
            if(message!=null){%>
        <div class="alert alert-<%= message.getCssClass()%>>" role="alert">
            <%= message.getContent()%>
        </div>
        <%}
        %>

        <%session.removeAttribute("msg");%>

        <table class="table">
            <thead>
            <tr>
                <th scope="col">Date</th>
                <th scope="col">Event</th>
                <th scope="col">Edit</th>
                <th scope="col">Delete</th>
            </tr>
            </thead>
            <tbody>
            <% while(resultSet.next()){%>
            <tr>
                <td><%= resultSet.getString("evDate")%></td>
                <td><a href="event.jsp" class="btn btn-primary"><%=resultSet.getString("evName")%></a></td>

                <td>
                    <a href="editev.jsp" class="btn btn-primary">Edit</a>
                </td>
                <td>
                    <a href="delete?ev_id=<%=resultSet.getInt("eventId")%>" class="btn btn-primary">Delete</a>

                </td>
            </tr>
            <% }%>

            </tbody>
        </table>
    </div>
</div>

</body>

</html>
