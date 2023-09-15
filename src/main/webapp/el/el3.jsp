<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/estilo.css"/>
        <title>Expression Language - Ejemplo 3</title>
    </head>
    
    <body>
        <h1>Archivo JSP el3.jsp</h1>
        <h2>Prueba de los objetos implícitos de EL</h2>
        <h2>Página 11 de la PPT <a href="https://charlycimino.com/recursos/ppt/Java/Java%20Web%20JSP" target="_blank">"Java Web: JSP"</a></h2>
        <hr/>
        <hr/>
        <h3>Cookies del cliente</h3>
        <p><strong>cookie.color.name: </strong> ${ cookie.color.name }</p>
        <p><strong>cookie.color.value: </strong> ${ cookie.color.value }</p>
        <hr/>
        <h3>Datos de la petición (request)</h3>
        <p><strong>pageContext.request.method: </strong> ${ pageContext.request.method }</p>
        <p><strong>pageContext.request.contextPath: </strong> ${ pageContext.request.contextPath }</p>
        <hr/>
        <h3>Datos de la respuesta (response)</h3>
        <p><strong>pageContext.response.status: </strong> ${ pageContext.response.status }</p>
        <hr/>
        <h3>Datos de la sesión (session)</h3>
        <p><strong>pageContext.session.maxInactiveInterval </strong> ${ pageContext.session.maxInactiveInterval }</p>
        <hr/>
        <h3>Parámetros de inicio de la aplicación web (etiqueta &lt;context-param&gt; en el archivo web.xml)</h3>
        <p><strong>pageContext.servletContext.motorBD: </strong> ${ pageContext.servletContext.getInitParameter("motorBD") }</p>
    </body>
</html>
