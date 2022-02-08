<%-- 
    Document   : login
    Created on : 8-Feb-2022, 4:44:29 PM
    Author     : Jason
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Login</h1>
        
        <form>
            <p>
                <label for="username">Username: </label>
                <input type="text" name="username" id="username">
            </p>
            <p>
                <label for="password">Password: </label>
                <input type="text" name="password" id="password">
            </p>
            <button type="submit">Submit</button>
        </form>
    </body>
</html>
