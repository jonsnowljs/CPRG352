<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reset New Password</title>
    </head>
    <body>
        <h1>Enter a new password </h1>
        <form action="reset" method="post">
            New Password: <input type="text" name="password" value="${password}"><br>
            <input type="submit" value="Submit">
            <input type="text" name="uuid" value="${uuidjsp}" hidden>
        </form>
    </body>
</html>
