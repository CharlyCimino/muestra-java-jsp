<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/estilo.css"/>
        <title>Form procesado con JSP</title>
    </head>
    <body>
        <h1>Form procesado con JSP y <em>JavaBean</em></h1>
        <p>Es una mala pr�ctica procesar el form directamente usando JSPs (deber�a aplicarse el patr�n MVC), pero nos sirve para ver la sintaxis de <em>JavaBeans</em> en JSP</p>
        <h2>Datos recibidos (forma 1)</h2>
        <jsp:useBean id="unaPersona" class="ar.charlycimino.muestra.java.jsp.Persona" />
        
        <%-- 
            Los par�metros de la petici�n HTTP son en realidad cadenas, pero JSP es capaz de efectuar la conversi�n al tipo primitivo correspondiente,
            (por ejemplo, se ha convertido el nroHijos de String a int)
            Esta conversi�n autom�tica de tipos no funciona en caso de tipos no primitivos.
        --%>
        
        <jsp:setProperty name="unaPersona" property="nombre" param="nombre" />
        <jsp:setProperty name="unaPersona" property="apellido" param="apellido" />
        <jsp:setProperty name="unaPersona" property="nroHijos" param="nroHijos" />
        <jsp:setProperty name="unaPersona" property="interesada" param="interesada" />
        <ul>
            <li><strong>Nombre: </strong> <jsp:getProperty name="unaPersona" property="nombre" /> </li>
            <li><strong>Apellido: </strong> <jsp:getProperty name="unaPersona" property="apellido" /> </li>
            <li><strong>Cantidad de hijos: </strong> <jsp:getProperty name="unaPersona" property="nroHijos" /> </li>
            <li><strong>�Est� interesada?: </strong> <jsp:getProperty name="unaPersona" property="interesada" /> </li>
        </ul>
        <hr/>
        <h2>Datos recibidos (forma 2)</h2>
        <jsp:useBean id="otraPersona" class="ar.charlycimino.muestra.java.jsp.Persona" />
        
        <%-- 
            Si los nombres de los getters/setters del bean coinciden con los nombres de los par�metros de la petici�n HTTP,
            la asignaci�n de todos los par�metros se puede hacer mediante una �nica etiqueta jsp:setProperty con el par�metro 'property' con valor "*".
        --%>
        
        <jsp:setProperty name="otraPersona" property="*" />
        <ul>
            <li><strong>Nombre: </strong> <jsp:getProperty name="unaPersona" property="nombre" /> </li>
            <li><strong>Apellido: </strong> <jsp:getProperty name="unaPersona" property="apellido" /> </li>
            <li><strong>Cantidad de hijos: </strong> <jsp:getProperty name="unaPersona" property="nroHijos" /> </li>
            <li><strong>�Est� interesada?: </strong> <jsp:getProperty name="unaPersona" property="interesada" /> </li>
        </ul>
        <p><a href="index.html">Volver...</a></p>
    </body>
</html>
