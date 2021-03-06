<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </head>
    <body>
        <h1 class="text-center">User Management System</h1> 
        <div class="container">
            <div class="row">
                <div class="col-2">
                    <h2 class="text-center">Add User</h2>
                    <form method="post" action="user">
                        <table class="table">
                            <input type="text" name="email" class="form-control" placeholder="Email">
                            <input type="text" name="firstName" class="form-control" placeholder="First Name">
                            <input type="text" name="lastName" class="form-control" placeholder="Last Name">
                            <input type="password" name="password"  class="form-control" placeholder="Password">
                            <select name="role" class="form-select" >
                                <option value="1" selected>system admin</option>
                                <option value="2">regular user</option>
                                <option value="3">company admin</option>
                            </select>
                            <input type="submit" value="Save" class="form-control btn btn-primary">   
                            <input type="hidden" name="postAction" value="add">

                        </table>

                    </form>
                </div>
                <div class="col-8">
                    <h2 class="text-center">Manager Users</h2>
                    <table class="table">
                        <thead>
                        <th>E-mail</th>
                        <th>First name</th>
                        <th>Last name</th>
                        <th>Active</th>
                        <th>Actions</th>

                        </thead>
                        <tbody>
                            <c:forEach var="user" items="${users}">
                                <tr>
                                    <td>${user.email}</td>
                                    <td>${user.firstName}</td>
                                    <td>${user.lastName}</td>
                                    <td>${user.active ? "Y" : "N"}</td>

                                    <c:url value="user" var="editURL">
                                        <c:param name="action" value="edit"/>
                                        <c:param name="selectedEmail" value="${user.email}"/>
                                    </c:url>
                                    <c:url value="user" var="deleteURL">
                                        <c:param name="action" value="delete"/>
                                        <c:param name="selectedEmail" value="${user.email}"/>
                                    </c:url>


                                    <td>
                                        <a href="${editURL}">Edit</a>
                                        <a href="${deleteURL}">Delete</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="col-2">
                    <h2 class="text-center">Edit User</h2>
                    <form method="post">
                        <table class="table">
                            <input type="" class="form-control" name="email" placeholder="Email" value="${selectedUser.email}" readonly>
                            <input class="form-control" name="firstName" placeholder="First Name" value="${selectedUser.firstName}">
                            <input class="form-control" name="lastName" placeholder="Last Name" value="${selectedUser.lastName}">
                            <select class="form-select" name="role" value="${selectedUser.role.id}">
                                <option value="1">system admin</option>
                                <option value="2">regular user</option>
                                <option value="3">company admin</option>
                            </select>

                            <input type="submit" class="form-control btn btn-primary" value="Update">
                            <input type="hidden" name="selectedEmail" value="${selectedUser.email}">
                            <input type="hidden" name="postAction" value="update">
                        </table>

                    </form>
                    <form>
                        <input type="submit" class="form-control tn btn-secondary" value="Cancel">   
                        <input type="hidden" name="selectedEmail" value="${selectedUser.email}">
                        <input type="hidden" name="postAction" value="cancel">
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
