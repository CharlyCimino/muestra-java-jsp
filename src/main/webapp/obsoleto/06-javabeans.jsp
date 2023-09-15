<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/estilo.css"/>
        <title>JSP con manejo de JavaBeans</title>
    </head>
    <body>
        <h1>JSP con manejo de <em>JavaBeans</em></h1>
        <p>Un <em>JavaBean</em> es una clase de Java que sigue un cierto est�ndar:</p>
        <ul>
            <li>Todas sus propiedades deben ser privadas</li>
            <li>Debe permitir el acceso a sus miembros mediante m�todos getters y setters</li>
            <li>Debe tener, como m�nimo, un constructor p�blico sin par�metros (admite sobrecarga, pero �ste no puede faltar)</li>
            <li>Debe implementar la interfaz <code>Serializable</code> (del paquete <code>java.io</code>) </li>
        </ul>
        <p>Revis� la clase <code>Persona.java</code> en el c�digo fuente. Es un <em>JavaBean</em></p>

        <hr/>

        <h1>Creando un <em>JavaBean</em></h1>
        <p>Observ� el c�digo fuente para conocer el funcionamiento</p>
        <%-- 
            La etiqueta jsp:useBean permite crear un bean del tipo definido en el atributo 'class' y guardarlo en la variable definida en el atributo 'id'.
            El atributo 'scope' permite definir el �mbito de tal variable:
        
                page: Es el valor por defecto. El bean solo ser� accesible desde esta p�gina.
                
                request: El bean ser� accesible solo durante la petici�n actual, es decir, podr�n acceder a �l las p�ginas a las que se desv�e la petici�n con un <jsp:include> o un <jsp:forward>.
                         Los servlets pueden acceder a �l a trav�s del objeto 'ServletRequest', obteniendo su valor mediante el m�todo 'getAttribute'.
        
                session: El bean ser� accesible desde todas las p�ginas JSP, pero cada usuario tendr� su propio objeto.
                Los servlets pueden acceder a �l a trav�s del objeto 'HttpSession', obteniendo su valor mediante el m�todo 'getAttribute'.
        
                application: El bean ser� accesible desde todas las p�ginas JSP de la app web, y compartido entre todos los usuarios.
                             Los servlets pueden acceder a �l a trav�s del objeto 'ServletContext'.
        --%>
        <jsp:useBean id="unaPersona" class="ar.charlycimino.muestra.java.jsp.Persona" scope="page" />
        <%-- 
            Si lo hubieramos hecho con un scriptlet, ser�a: <% Persona usuario = new Persona() %>
            (Deber�a hacerse con ruta absoluta, en lugar de 'Persona', ser�a 'ar.charlycimino.muestra.servlets.jsp.javabeans.Persona')
        --%>

        <h1>Estableciendo valores a un <em>JavaBean</em></h1>
        <p>Observ� el c�digo fuente para conocer el funcionamiento</p>
        <%-- 
            Para asignar un valor a un bean, se usa la etiqueta jsp:setProperty con tres par�metros:
                name: El id del bean, definido en la etiqueta jsp:useBean
                property: El nombre del atributo a modificar (no como se defini� en la clase, sino lo que viene luego del 'set', en min�sculas)
                value: El valor para tal atributo.
        --%>
        <jsp:setProperty name="unaPersona" property="nombre" value="Juan" />
        <jsp:setProperty name="unaPersona" property="apellido" value="P�rez" />
        <jsp:setProperty name="unaPersona" property="interesada" value="true" />

        <h1>Obteniendo los valores de un <em>JavaBean</em></h1>
        <p>Observ� el c�digo fuente para conocer el funcionamiento</p>
        <%-- 
            Para obtener un valor de un bean, se usa la etiqueta jsp:getProperty con tres par�metros:
                name: El id del bean, definido en la etiqueta jsp:useBean
                property: El nombre del atributo a obtener (no como se defini� en la clase, sino lo que viene luego del 'get', en min�sculas)
        --%>
        <p>Nombre de la persona: <jsp:getProperty name="unaPersona" property="nombre" /></p>
        <p>Apellido de la persona: <jsp:getProperty name="unaPersona" property="apellido" /></p>
        <p>�Est� interesada la persona?: <jsp:getProperty name="unaPersona" property="interesada" /></p>
        <p>Nombre completo de la persona: <jsp:getProperty name="unaPersona" property="nombreCompleto" /></p>

        <h1>Creando <em>JavaBean</em> inicializado</h1>
        <p>Observ� el c�digo fuente para conocer el funcionamiento</p>
        <%-- 
            La etiqueta jsp:useBean no admite m�s par�metros, pero s� puede usarse anidando otras etiquetas que permitan la inicializaci�n del bean.
        --%>
        <jsp:useBean id="otraPersona" class="ar.charlycimino.muestra.java.jsp.Persona" scope="page">
            <jsp:setProperty name="otraPersona" property="nombre" value="Mar�a" />
            <jsp:setProperty name="otraPersona" property="apellido" value="G�mez" />
            <jsp:setProperty name="otraPersona" property="interesada" value="true" />
        </jsp:useBean>    
        <p>Apellido de la persona: <jsp:getProperty name="otraPersona" property="apellido" /></p>
        <p>�Est� interesada la persona?: <jsp:getProperty name="otraPersona" property="interesada" /></p>
        <p>Nombre completo de la persona: <jsp:getProperty name="otraPersona" property="nombreCompleto" /></p>

        <p><a href="index.html">Volver...</a></p>   
    </body>
</html>
