<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/estilo.css"/>
        <title>Expression Language - Ejemplo 4</title>
    </head>
    
    <body>
        <h1>Archivo JSP el4.jsp</h1>
        <h2>Página 12 de la PPT <a href="https://charlycimino.com/recursos/ppt/Java/Java%20Web%20JSP" target="_blank">"Java Web: JSP"</a></h2>
        <hr/>
        <p>Recibimos un atributo de tipo Persona que cumple el estándar de ser un <em>bean</em></p>
        <h2>Describamos al padre de la informática</h2>
        <p>Esto se muestra si coloco simplemente 'padreDeLaInformatica': ${ padreDeLaInformatica }</p>
        <p>El padre de la informática se llama ${ padreDeLaInformatica.nombre }</p>
        <p>El padre de la informática se apellida ${ padreDeLaInformatica.apellido }</p>
        <p>Por ende, su nombre completo es ${ padreDeLaInformatica.nombreCompleto }</p>
        <p>¿Interesado?: ${ padreDeLaInformatica.interesada }</p>
        <p>¿Cuántos hijos? (accediendo a la propiedad con .): ${ padreDeLaInformatica["nroHijos"] }</p>
        <p>¿Cuántos hijos? (accediendo a la propiedad con []): ${ padreDeLaInformatica["nroHijos"] }</p>
        <p>¿Cuántos hijos? (accediendo al método getter): ${ padreDeLaInformatica.getNroHijos() }</p>
    </body>
</html>
