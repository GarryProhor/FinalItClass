<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Info</title>
</head>
<body>
<%@include file="navbar.jsp"%>
<%@include file="base.jsp"%><br><br><br>

<div class="row justify-content-center">
    <div class="col-md-6">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title text-center">User Info</h5>
                <p class="card-text">
                    <div>Your Name : <%= user.getUsername()%></div>

                    <div>Your Email : <%= user.getUseremail()%></div>

                    <div>Your BirthDate : <%= user.getBdate()%></div>

                    <div>Gender : <%= user.getGender()%></div><br>
                </p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
