<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/estilo.css"/>
        <title>JSTL - Ejemplo &lt;c:choose&gt;</title>
    </head>

    <body>
        <h1>Ejemplo de funcionamiento de la etiqueta &lt;c:choose&gt; de JSTL</h1>
        <h2>Página 20 de la PPT <a href="https://charlycimino.com/recursos/ppt/Java/Java%20Web%20JSP" target="_blank">"Java Web: JSP"</a></h2>
        <hr/>
        <p>Hola ${persona.nombreCompleto}</p>
        <c:choose>
            <c:when test="${ persona.nroHijos > 1 }">
                <p>¡Saludos a tus hijos!</p>
            </c:when>
            <c:when test="${ persona.nroHijos == 1 }">
                <p>¡Saludos a tu hijo!</p>
            </c:when>
            <c:otherwise>
                <p>¡Saludos a tu familia!</p>
            </c:otherwise>
        </c:choose>
    </body>
</html>
