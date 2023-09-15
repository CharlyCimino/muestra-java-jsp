<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/estilo.css"/>
        <title>JSTL - Ejemplo &lt;c:forTokens&gt;</title>
    </head>

    <body>
        <h1>Ejemplo de funcionamiento de la etiqueta &lt;c:forTokens&gt; de JSTL</h1>
        <h2>Página 23 de la PPT <a href="https://charlycimino.com/recursos/ppt/Java/Java%20Web%20JSP" target="_blank">"Java Web: JSP"</a></h2>
        <hr/>
        <p>Listado de colores que llegaron separados por comas:</p>
        <ul>
            <c:forTokens items="${coloresCSV}" var="color" delims=",">
                <li>${color}</li>
            </c:forTokens>
              
        </ul>
    </body>
</html>
