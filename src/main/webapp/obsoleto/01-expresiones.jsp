<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/estilo.css"/>
        <title>JSP con expresiones</title>
    </head>
    <body>
        <!-- Este es un comentario de HTML: No es evaluado. Se ve tanto aquí como en el cliente (abrí la consola del browser para verlo) -->
        <%-- Este es un comentario de JSP: No es evaluado. Solo se ve en el servidor, no le llega al cliente --%>
        
        <h1>JSP con expresiones</h1>
        <p>Las expresiones permiten imprimir contenido dinámico (como si se hiciera uso de <code>out.println()</code>).
            Observá el código fuente (del servidor) para conocer la sintaxis. </p>
        
        <p><strong>Mostrando datos concatenados:</strong>
            <%= "Hola mundo " + "de las expresiones " + " en JSPs" %>
        </p>
        <p><strong>2 + 2 es </strong>
            <%= 2 + 2 %>
        </p>
        <p>Variables globales disponibles en un JSP:</p>
        <ul>
            <li><code>request</code></li>
            <li><code>response</code></li>
            <li><code>out</code></li>
            <li><code>session</code></li>
            <li><code>application</code></li>
        </ul>
        <p><strong>Mostrando la URL del objeto 'request': </strong>
            <%= request.getRequestURL() %>
        </p>
        <p><a href="index.html">Volver...</a></p>        
    </body>
</html>
