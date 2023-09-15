<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/estilo.css"/>
        <title>JSTL - Ejemplo &lt;c:if&gt;</title>
    </head>
    
    <body>
        <h1>Ejemplo de funcionamiento de la etiqueta &lt;c:if&gt; de JSTL</h1>
        <h2>Página 19 de la PPT <a href="https://charlycimino.com/recursos/ppt/Java/Java%20Web%20JSP" target="_blank">"Java Web: JSP"</a></h2>
        <hr/>
        <p>Hola ${persona.nombreCompleto}</p>
        <c:if test="${persona.nroHijos > 0}">
            <p>¡Saludos a tus hijos!</p>
        </c:if>
        <hr/>
        <p>(Ahora probá cambiar el atributo 'interesada' de la persona)</p>
    </body>
</html>
