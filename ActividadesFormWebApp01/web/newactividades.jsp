<%-- 
    Document   : newactividades
    Created on : 03-10-2020, 08:25:07 PM
    Author     : Diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>new actividades</title>
    </head>
    <body>
        <h1>new actividades</h1>
        <br><br>
        <form action="ActividadesServlet" method="get">
            nombre:<input type="text" name="nombre" />
            <br><br>
            apellidos:<input type="text" name="apellidos" />
            <br><br>
            correo:<input type="text" name="correo" />
            <br><br>
            <input type="submit" value="create" />
            <input type="hidden" name="formid" value="2" />
        </form>
    </body>
</html>
