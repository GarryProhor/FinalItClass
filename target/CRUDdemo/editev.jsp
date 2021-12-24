<%@ page import="by.prohor.dao.EventDAO" %>
<%@ page import="by.prohor.connections.MyConnection" %>
<%@ page import="by.prohor.entities.Event" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Event</title>
</head>
<body>
<%@include file="base.jsp"%>
<%@include file="navbar.jsp"%>
<%
    int id = Integer.parseInt(request.getParameter("ev_id"));
    EventDAO eventDAO = new EventDAO(MyConnection.getConnection());
    Event event = eventDAO.getEventById(id);
%>
<div class="row justify-content-center">
    <div class="col-md-8">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title text-center">Edit Event</h5>
                <p class="card-text">
                <form method="post" action="editev" class="form-group">
                    <input class="form-control" type="hidden" value="<%=event.getEventId()%> name="ev_id">
                    <label class="form-label">Enter EventName</label>
                    <input value="<%=event.getEvName()%>" type="text" name="txtevName" class="form-control" placeholder=" Enter Your Name">
                    <label class="form-label">Enter Event Categories</label>
                    <input value="<%=event.getEvCategoryes()%>" type="text" name="txtevCategoryes" class="form-control" placeholder=" Enter Your Categories">

                    <label  class="form-label">Event Date: </label><br>
                    <input value="<%=event.getEvDate()%>" type="date" name="txtevDate" class="form-control">

                    <label  class="form-label">Enter Event Morning</label>
                    <input value="<%=event.getEvMorning()%>" type="text" name="txtevMorning" class="form-control" placeholder=" Enter Your Mobile">

                    <label class="form-label">Enter Event Day</label>
                    <input value="<%=event.getEvDay()%>" type="text" name="txtevDay" class="form-control" placeholder=" Enter Your Address">

                    <label class="form-label">Enter Event Evening</label>
                    <input value="<%=event.getEvEvening()%>" type="text" name="txtevEvening" class="form-control" placeholder=" Enter Your Qualification">

                    <button class="mt-4 btn btn-primary" type="submit">Edit&Save</button>
                </form>
                </p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
