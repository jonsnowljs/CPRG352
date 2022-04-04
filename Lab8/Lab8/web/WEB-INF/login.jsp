<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Login</h1>
        <p>${message}</p>
        <form action="login" method="post">
            <label for="email">E-mail:</label>
            <input type="text" name="email" id="email" />
            <label for="password">Password:</label>
            <input type="password" name="password" id="password" />
            <button type="submit">Submit</button>
        </form>
    </body>
</html>
