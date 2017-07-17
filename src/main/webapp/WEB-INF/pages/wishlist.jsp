<%--
  Created by IntelliJ IDEA.
  User: intel
  Date: 6/23/17
  Time: 10:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<h1>Persons</h1>

<%--/krams/main/persons/add--%>

<c:url var="addUrl" value="//wishlist/add" />
<table style="border: 1px solid; width: 500px; text-align:center">
    <thead style="background:#fcf">
    <tr>
        <th>No</th>
        <th>Name</th>
        <th>Price</th>
        <th colspan="3"></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${wishList}" var="person">
        <c:url var="editUrl" value="//wishlist/edit?id=${wishList.id}" />
        <c:url var="deleteUrl" value="//wishlist/delete?id=${wishList.id}" />
        <tr>
            <td><c:out value="${wishList.id}" /></td>
            <td><c:out value="${wishList.iteamName}" /></td>
            <td><c:out value="${wishList.itemPrice}" /></td>
            <td><a href="${editUrl}">Edit</a></td>
            <td><a href="${deleteUrl}">Delete</a></td>
            <td><a href="${addUrl}">Add</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<c:if test="${empty wishList}">
    There are currently no persons in the list. <a href="${addUrl}">Add</a> a person.
</c:if>

</body>
</html>