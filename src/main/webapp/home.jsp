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
    <div class="col-md-10">
        <h3>All Employees In Our Company Are Listed here</h3>
        <% Connection con = MyConnection.getConnection();
            String query = "select * from employees";
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
                <th scope="col">Name</th>
                <th scope="col">Email</th>
                <th scope="col">Gender</th>
                <th scope="col">Mobile</th>
                <th scope="col">Address</th>
                <th scope="col">Qualification</th>
                <th scope="col">Show</th>
                <th scope="col">Edit</th>
                <th scope="col">Delete</th>
            </tr>
            </thead>
            <tbody>
            <% while(resultSet.next()){%>
            <tr>
                <td><%= resultSet.getString("empName")%></td>
                <td><%= resultSet.getString("empEmail")%></td>
                <td><%= resultSet.getString("Gender")%></td>
                <td><%= resultSet.getString("empMobile")%></td>
                <td><%= resultSet.getString("empAddress")%></td>
                <td><%= resultSet.getString("empQualification")%></td>

                <td>
                    <button type="button" class="btn btn-primary">Show</button>
                </td>

                <td>
                    <button type="button" class="btn btn-primary">Edit</button>
                </td>
                <td>
                    <button type="button" class="btn btn-primary">Delete</button>
                </td>
            </tr>
            <% }%>

            </tbody>
        </table>
    </div>
</div>
</body>
</html>
