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
                                <option selected>system admin</option>
                                <option value="">regular user</option>
                                <option value="">company admin</option>
                            </select>
                            <input type="submit" value="Save" class="form-control btn btn-primary">   

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

                                    <td>
                                        <a href="notes?action=edit">Edit</a>
                                        <a href="notes?action=delete">Delete</a>
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
                            <input type="" class="form-control" placeholder="Email">
                            <input class="form-control" placeholder="First Name">
                            <input class="form-control" placeholder="Last Name">
                            <select class="form-select" aria-label="Default select example">
                                <option value="system admin" selected>system admin</option>
                                <option value="regular user">regular user</option>
                                <option value="company admin">company admin</option>
                            </select>
                            <input type="submit" class="form-control btn btn-primary" value="Save">
                            <input type="submit" class="form-control tn btn-secondary" value="Cancel">   

                        </table>

                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
