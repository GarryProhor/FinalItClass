<%@ page import="by.prohor.entities.Event" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Event Info</title>
</head>
<body>

<%@include file="navbar.jsp"%>
<%@include file="base.jsp"%><br><br><br>

<div class="row justify-content-center">
    <div class="col-md-6">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title text-center">Event Info</h5>
                <p class="card-text">
                <div>Event : <%= event.getEvName()%></div>

                <div>Date : <%= event.getEvDate()%></div>

                <div>Categories : <%= event.getEvCategoryes()%></div>

                <div>Monday : <%= event.getEvMorning()%></div><br>
                <div>Day : <%= event.getEvDay()%></div><br>
                <div>Evening : <%= event.getEvEvening()%></div><br>

                </p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
