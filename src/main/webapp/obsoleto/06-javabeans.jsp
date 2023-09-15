<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/estilo.css"/>
        <title>JSP con manejo de JavaBeans</title>
    </head>
    <body>
        <h1>JSP con manejo de <em>JavaBeans</em></h1>
        <p>Un <em>JavaBean</em> es una clase de Java que sigue un cierto estándar:</p>
        <ul>
            <li>Todas sus propiedades deben ser privadas</li>
            <li>Debe permitir el acceso a sus miembros mediante métodos getters y setters</li>
            <li>Debe tener, como mínimo, un constructor público sin parámetros (admite sobrecarga, pero éste no puede faltar)</li>
            <li>Debe implementar la interfaz <code>Serializable</code> (del paquete <code>java.io</code>) </li>
        </ul>
        <p>Revisá la clase <code>Persona.java</code> en el código fuente. Es un <em>JavaBean</em></p>

        <hr/>

        <h1>Creando un <em>JavaBean</em></h1>
        <p>Observá el código fuente para conocer el funcionamiento</p>
        <%-- 
            La etiqueta jsp:useBean permite crear un bean del tipo definido en el atributo 'class' y guardarlo en la variable definida en el atributo 'id'.
            El atributo 'scope' permite definir el ámbito de tal variable:
        
                page: Es el valor por defecto. El bean solo será accesible desde esta página.
                
                request: El bean será accesible solo durante la petición actual, es decir, podrán acceder a él las páginas a las que se desvíe la petición con un <jsp:include> o un <jsp:forward>.
                         Los servlets pueden acceder a él a través del objeto 'ServletRequest', obteniendo su valor mediante el método 'getAttribute'.
        
                session: El bean será accesible desde todas las páginas JSP, pero cada usuario tendrá su propio objeto.
                Los servlets pueden acceder a él a través del objeto 'HttpSession', obteniendo su valor mediante el método 'getAttribute'.
        
                application: El bean será accesible desde todas las páginas JSP de la app web, y compartido entre todos los usuarios.
                             Los servlets pueden acceder a él a través del objeto 'ServletContext'.
        --%>
        <jsp:useBean id="unaPersona" class="ar.charlycimino.muestra.java.jsp.Persona" scope="page" />
        <%-- 
            Si lo hubieramos hecho con un scriptlet, sería: <% Persona usuario = new Persona() %>
            (Debería hacerse con ruta absoluta, en lugar de 'Persona', sería 'ar.charlycimino.muestra.servlets.jsp.javabeans.Persona')
        --%>

        <h1>Estableciendo valores a un <em>JavaBean</em></h1>
        <p>Observá el código fuente para conocer el funcionamiento</p>
        <%-- 
            Para asignar un valor a un bean, se usa la etiqueta jsp:setProperty con tres parámetros:
                name: El id del bean, definido en la etiqueta jsp:useBean
                property: El nombre del atributo a modificar (no como se definió en la clase, sino lo que viene luego del 'set', en minúsculas)
                value: El valor para tal atributo.
        --%>
        <jsp:setProperty name="unaPersona" property="nombre" value="Juan" />
        <jsp:setProperty name="unaPersona" property="apellido" value="Pérez" />
        <jsp:setProperty name="unaPersona" property="interesada" value="true" />

        <h1>Obteniendo los valores de un <em>JavaBean</em></h1>
        <p>Observá el código fuente para conocer el funcionamiento</p>
        <%-- 
            Para obtener un valor de un bean, se usa la etiqueta jsp:getProperty con tres parámetros:
                name: El id del bean, definido en la etiqueta jsp:useBean
                property: El nombre del atributo a obtener (no como se definió en la clase, sino lo que viene luego del 'get', en minúsculas)
        --%>
        <p>Nombre de la persona: <jsp:getProperty name="unaPersona" property="nombre" /></p>
        <p>Apellido de la persona: <jsp:getProperty name="unaPersona" property="apellido" /></p>
        <p>¿Está interesada la persona?: <jsp:getProperty name="unaPersona" property="interesada" /></p>
        <p>Nombre completo de la persona: <jsp:getProperty name="unaPersona" property="nombreCompleto" /></p>

        <h1>Creando <em>JavaBean</em> inicializado</h1>
        <p>Observá el código fuente para conocer el funcionamiento</p>
        <%-- 
            La etiqueta jsp:useBean no admite más parámetros, pero sí puede usarse anidando otras etiquetas que permitan la inicialización del bean.
        --%>
        <jsp:useBean id="otraPersona" class="ar.charlycimino.muestra.java.jsp.Persona" scope="page">
            <jsp:setProperty name="otraPersona" property="nombre" value="María" />
            <jsp:setProperty name="otraPersona" property="apellido" value="Gómez" />
            <jsp:setProperty name="otraPersona" property="interesada" value="true" />
        </jsp:useBean>    
        <p>Apellido de la persona: <jsp:getProperty name="otraPersona" property="apellido" /></p>
        <p>¿Está interesada la persona?: <jsp:getProperty name="otraPersona" property="interesada" /></p>
        <p>Nombre completo de la persona: <jsp:getProperty name="otraPersona" property="nombreCompleto" /></p>

        <p><a href="index.html">Volver...</a></p>   
    </body>
</html>
