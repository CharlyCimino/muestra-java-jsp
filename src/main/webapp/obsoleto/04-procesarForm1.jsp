<%-- Así es como se se establece una página de error usando una directiva.
     Los archivos guardados en la carpeta WEB-INF no le llegan al cliente (son privados)--%>
<%@ page errorPage="errorHandler.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/estilo.css"/>
        <title>Form procesado con JSP</title>
    </head>
    <body>
        <h1>Form procesado con JSP</h1>
        <p>Es una mala práctica procesar el form directamente usando JSPs (debería aplicarse el patrón MVC), pero nos sirve para ver la sintaxis de expresiones en JSP</p>
        <h2>Datos recibidos</h2>
        <ul>
            <li><strong>Nombre: </strong> <%= request.getParameter("fname") %> </li>
            <li><strong>Cantidad de hijos: </strong> <%= Integer.parseInt(request.getParameter("cantHijos")) %> </li>
            <li><strong>Mensaje: </strong> <%= request.getParameter("message") %> </li>
        </ul>
        <p><a href="index.html">Volver...</a></p>
    </body>
</html>
