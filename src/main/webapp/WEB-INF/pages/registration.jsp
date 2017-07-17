<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Create an account</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/registration.css">

    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

</head>

<body class="align">

<div class="container">

    <form:form method="POST" modelAttribute="userForm" class="form-signin">
        <h2 class="form-signin-heading">Create your account</h2>
        <spring:bind path="username">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:errors path="username"></form:errors>
                <form:input type="text" path="username" class="form-control" placeholder="Username" autofocus="true" required="required"></form:input>
            </div>
        </spring:bind>
        <spring:bind path="username">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:errors path="email"></form:errors>
                <form:input type="text" path="email" class="form-control" placeholder="Email" autofocus="true" required="required"></form:input>
            </div>
        </spring:bind>

        <spring:bind path="password">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:errors path="password"></form:errors>

                <form:input type="password" path="password" class="form-control" placeholder="Password" required="required"></form:input>
            </div>
        </spring:bind>

        <spring:bind path="confirmPassword">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:errors path="confirmPassword"></form:errors>

                <form:input type="password" path="confirmPassword" class="form-control"
                            placeholder="Confirm your password" required="required"></form:input>
            </div>
        </spring:bind>

        <button class="btn" type="submit">Submit</button>
    </form:form>

</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>