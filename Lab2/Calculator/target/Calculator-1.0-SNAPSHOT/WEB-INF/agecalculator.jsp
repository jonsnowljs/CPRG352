<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Age Calculator</title>
        <link href="css/style.css" type="text/css" rel="stylesheet">
    </head>
    <body>
        <h1>Age Calculator</h1>
        
        <form action="age" method="post">
            <label for="age">Enter you age:</label>
            <input id="age" name="age" type="number">
            <button type="submit">Age next birthday</button>
        </form>
        
        <p>${message}</p>
        <a href="./arithmetic">Arithmetic Calculator</a>
    </body>
</html>
