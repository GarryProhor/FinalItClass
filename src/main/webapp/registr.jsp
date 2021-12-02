<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Register</title>
</head>
  <body>
  <%@include file="navbar.jsp"%>
  <%@include file="base.jsp"%><br><br><br>
  <div class="row justify-content-center">
    <div class="col-md-6">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title text-center">Register Here</h5>
          <p class="card-text">
            <form>
              <label for="name" class="form-label">Your Name</label>
              <input type="text" class="form-control" placeholder=" Enter Your Name">
              <label for="email" class="form-label">Your Email</label>
              <input type="text" class="form-control" placeholder=" Enter Your Email">
              <label for="bdate" class="form-label">Your BirthDate</label>
              <input type="date" class="form-control">

              <label class="form-label" for="gender">Gender : </label><br>
              <input class="form-check-input" type="radio" name="gender" value="Male">Male<br>
              <input class="form-check-input" type="radio" name="gender" value="Female">Female<br>

              <label for="password"> Enter Your Password :</label>
              <input type="password" class="form-control" placeholder=" Enter Password">

              <button class="mt-4 btn btn-primary" type="submit">Register</button>
            </form>
          </p>
        </div>
      </div>
    </div>
  </div>
  </body>
</html>
