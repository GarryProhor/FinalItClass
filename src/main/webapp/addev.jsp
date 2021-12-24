
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Add Event</title>
</head>
  <body>
    <%@include file="base.jsp"%>
    <%@include file="navbar.jsp"%>
  <div class="row justify-content-center">
    <div class="col-md-8">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title text-center">Add Event</h5>
          <p class="card-text">
            <form method="post" action="addev" class="form-group">
              <label class="form-label">Enter EventName</label>
              <input type="text" name="txtevName" class="form-control" placeholder=" Enter Your Name">
              <label class="form-label">Enter Event Categories</label>
              <input type="text" name="txtevCategoryes" class="form-control" placeholder=" Enter Your Categories">

              <label class="form-label">Event Date: </label><br>
               <input type="date" name="txtevDate" class="form-control">

              <label class="form-label">Enter Event Morning</label>
             <input type="text" name="txtevMorning" class="form-control" placeholder=" Enter Morning Event">

             <label class="form-label">Enter Event Day</label>
              <input type="text" name="txtevDay" class="form-control" placeholder=" Enter Day Event">

              <label class="form-label">Enter Event Evening</label>
              <input type="text" name="txtevEvening" class="form-control" placeholder=" Enter Evening Event">

               <button class="mt-4 btn btn-primary" type="submit">Save</button>
            </form>
          </p>
        </div>
      </div>
    </div>
  </div>
  </body>
</html>
