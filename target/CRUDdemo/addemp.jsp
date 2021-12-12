
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Add Employee</title>
</head>
  <body>
    <%@include file="base.jsp"%>
    <%@include file="navbar.jsp"%>
  <div class="row justify-content-center">
    <div class="col-md-8">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title text-center">Add Employee</h5>
          <p class="card-text">
            <form method="post" action="addemp" class="form-group">
              <label for="name" class="form-label">Enter EmployeeName</label>
              <input type="text" name="txtname" class="form-control" placeholder=" Enter Your Name">
              <label for="email" class="form-label">Enter Employee Email</label>
              <input type="text" name="txtemail" class="form-control" placeholder=" Enter Your Email">

              <label class="form-label" for="gender">Gender : </label><br>
              <input class="form-check-input" type="radio" name="gender" value="Male">Male<br>
              <input class="form-check-input" type="radio" name="gender" value="Female">Female<br>

              <label for="email" class="form-label">Enter Employee Mobile</label>
             <input type="text" name="txtmobile" class="form-control" placeholder=" Enter Your Mobile">

             <label for="email" class="form-label">Enter Employee Address</label>
              <input type="text" name="txtaddress" class="form-control" placeholder=" Enter Your Address">

              <label for="email" class="form-label">Enter Employee Qualification</label>
              <input type="text" name="txtquali" class="form-control" placeholder=" Enter Your Qualification">

               <button class="mt-4 btn btn-primary" type="submit">Save</button>
            </form>
          </p>
        </div>
      </div>
    </div>
  </div>
  </body>
</html>
