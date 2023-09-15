<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
    <c:import url="/head.jsp">
        <c:param name="tituloDePagina" value="JSTL - Ejemplo &lt;c:import&gt;" />
    </c:import>

    <body>
        <h1>Ejemplo de funcionamiento de la etiqueta &lt;c:import&gt; de JSTL</h1>
        <h2>Página 18 de la PPT <a href="https://charlycimino.com/recursos/ppt/Java/Java%20Web%20JSP" target="_blank">"Java Web: JSP"</a></h2>
        <hr/>
        <p>El siguiente JSON fue obtenido a través de un import</p>
        <pre><c:import url="https://jsonplaceholder.typicode.com/posts/1" /></pre>        
        <p>El footer de aquí abajo fue obtenido a través de un import, sin necesidad de repetirlo por cada .jsp</p>
        <c:import url="/footer.html" />
    </body>
</html>
