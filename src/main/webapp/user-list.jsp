<%@ page contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Management Web App</title>

    <link rel="icon" href="favi1.jpg" type="image/gif" sizes="16x16">
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
</head>

<body>
<header>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <div>
            <a href="#" class="navbar-brand">User Management API</a>
        </div>

        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="btn btn-success" href="<%= request.getContextPath () %>/list">Users</a>
            </li>
            &nbsp;
            <li class="nav-item">
                <a class="btn btn-success" href="<%= request.getContextPath () %>/new">Create User</a>
            </li>
        </ul>
    </nav>
</header>

<br><br>
<div class="container text-center">
    <div class="d-flex table-data">
        <table class="table table-stripped table-dark">
            <thead class="thead-dark">
            <tr>
                <th>ID</th>
                <th>Username</th>
                <th>Email</th>
                <th>Country</th>
                <th>Action</th>
            </tr>
            </thead>

            <tbody>
                <c:forEach var="user" items="${listUser}">
                    <tr>
                        <td><c:out value="${user.getID ()}"/></td>
                        <td><c:out value="${user.getName ()}"/></td>
                        <td><c:out value="${user.getEmail ()}"/></td>
                        <td><c:out value="${user.getCountry ()}"/></td>
                        <td>
                            <a href="edit?id=<c:out value='${user.getID ()}' />">Edit</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="delete?id=<c:out value='${user.getID ()}' />">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>