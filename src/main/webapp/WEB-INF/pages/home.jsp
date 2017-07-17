<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>Search</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css">

</head>

<body>
<a href="${pageContext.request.contextPath}/login"><i class="user"></i>Sign In</a>

<form action="${pageContext.request.contextPath}/search">
    <div class="search">

        <input type="search" class="search-box" name="search_query" />
        <span class="search-button"/>
        <span class="search-icon"></span>
        <a href="search.jsp"/>
        </span>
    </div>

    <input type="submit" value="search">
</form>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

<script src="/static/js/index.js"></script>

</body>
</html>
