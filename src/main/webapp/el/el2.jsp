<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <% pageContext.setAttribute("user1", "Pepe"); %> <%-- Liga atributo a nivel página --%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/estilo.css"/>
        <title>Expression Language - Ejemplo 2</title>
    </head>
    
    <body>
        <h1>Archivo JSP el2.jsp</h1>
        <h2>Prueba de los objetos implícitos de EL</h2>
        <h2>Página 10 de la PPT <a href="https://charlycimino.com/recursos/ppt/Java/Java%20Web%20JSP" target="_blank">"Java Web: JSP"</a></h2>
        <hr/>
        <h3>Atributos</h3>
        <p>Este atributo fue ligado a nivel página (ver en JSP). <strong>user1: </strong> ${ user1 }</p>
        <p>Este atributo fue ligado a nivel solicitud (ver en servlet). <strong>user2: </strong> ${ user2 }</p>
        <p>Este atributo fue ligado a nivel sesión (ver en servlet). <strong>user3: </strong> ${ user3 }</p>
        <p>Este atributo fue ligado a nivel aplicación (ver en servlet). <strong>user4: </strong> ${ user4 }</p>
        <hr/>
        <h3>Parámetros del cliente</h3>
        <p><strong>nombreCli: </strong> ${ param.nombreCli }</p>
        <p><strong>edadCli: </strong> ${ param.edadCli }</p>
        <hr/>
        <h3>Cabeceras (headers) del cliente (algunas)</h3>
        <p><strong>host: </strong> ${ header.host }</p>
        <p><strong>user-agent: </strong> ${ header["user-agent"] }</p>             
    </body>
</html>
