<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reset Password</title>
    </head>
    <body>
        <h1>Reset Password</h1>
        <h2>Please enter your email address to reset your password.</h2>
        <form action="reset" method="post">
            Email Address: <input type="text" name="email" value="${email}"><br>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
