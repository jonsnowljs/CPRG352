<%-- 
    Document   : editnote
    Created on : 31-Jan-2022, 9:13:09 PM
    Author     : Jason
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Note Keeper</title>
    </head>
    <body>
        <h1>Simple Note Keeper</h1>
        <h2>Edit Note</h2>
        <form action="note" method="post">
            <label for="title">Title:</label>
            <input type="text" name="title" id="title" placeholder="${note.title}">
            <br>
            <label for="content">Contents:</label>
            <textarea type="content" rows="10" name="content" id="content">${note.content}</textarea>
            <br>
            <button type="submit">Save</button>
        </form>
        <p>Contents: </p>

    </body>
</html>
