
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Arithmetic Calculator</title>
    </head>
    <body>
        <h1>Arithmetic Calculator</h1>
        <form action="arithmetic" method="post">
            <div>                
                <label for="first">First:</label>
                <input id="first" name="first" type="number">
            </div>
            <div>
                <label for="second">Second:</label>
                <input id="second" name="second" type="number">
            </div>
            <div>
                <button type="submit" name="btn" value="add">+</button>
                <button type="submit" name="btn" value="sub">-</button>
                <button type="submit" name="btn" value="mul">*</button>
                <button type="submit" name="btn" value="mod">%</button>    
            </div>


        </form>
        <p>Result:${result}</p>
        <a href="./age">Age Calculator</a>

    </body>
</html>
