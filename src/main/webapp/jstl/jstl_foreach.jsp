<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/estilo.css"/>
        <title>JSTL - Ejemplo &lt;c:foreach&gt;</title>
    </head>

    <body>
        <h1>Ejemplo de funcionamiento de la etiqueta &lt;c:foreach&gt; de JSTL</h1>
        <h2>Páginas 21 y 22 de la PPT <a href="https://charlycimino.com/recursos/ppt/Java/Java%20Web%20JSP" target="_blank">"Java Web: JSP"</a></h2>
        <hr/>
        <h2>Caso de uso 1: Un for</h2>
        <p>Hola ${persona.nombreCompleto}</p>
        <c:forEach var="cont" begin="1" end="${persona.nroHijos}" step="1">
            <p>Saludos a tu hijo nº ${cont}</p>
        </c:forEach>
        <hr/>
        <h2>Caso de uso 2: Un foreach</h2>
        <c:forEach items="${listaDePersonas}" var="per" varStatus="estado">
            <p>Persona nº ${estado.count}: ${per.nombreCompleto} </p>
        </c:forEach>
    </body>
</html>
