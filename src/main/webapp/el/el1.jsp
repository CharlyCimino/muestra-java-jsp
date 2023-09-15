<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/estilo.css"/>
        <title>Expression Language - Ejemplo 1</title>
    </head>
    
    <body>
        <h1>Archivo JSP el1.jsp</h1>
        <h2>Página 9 de la PPT <a href="https://charlycimino.com/recursos/ppt/Java/Java%20Web%20JSP" target="_blank">"Java Web: JSP"</a></h2>
        <hr/>
        <p>Observemos el parámetro recibido desde el cliente</p>
        <p><strong>nombreCli: </strong> ${ param.nombreCli }</p> 
    </body>
</html>
