
<%-- Así es como se hacen declaraciones a nivel de clase en un scriptlet (notar el signo de admiración) --%>
<%-- Hacé click derecho en el archivo .jsp y seleccioná 'View Servlet' para observarlo  --%>
<%!
    private int contVisitas = 0;
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/estilo.css"/>
        <title>JSP con scriptlets</title>
    </head>
    <body>
        <h1>JSP con <em>scriptlets</em></h1>
        <p>Un <em>scriptlet</em> permite incrustar código Java más complejo que una simple expresión. No se debe abusar de esta característica: Colocar toda la lógica de negocio dentro del JSP es mala práctica.
            Observá el código fuente (del servidor) para conocer la sintaxis. </p>

        <p><strong>Mostrando un mensaje:</strong>
            <% out.print("Este mensaje es impreso desde un scriptlet (usando out.print())"); %>
        </p>

        <p><strong>2 + 2 es </strong>
            <%-- 2+2 a secas no se va a imprimir, hay que usar out.print(). Recordá que es un scriptlet --%>
            <% out.print(2+2); %>
        </p>

        <p><strong>Esta es la visita nº: </strong>
            <%
                contVisitas++;
                out.print(contVisitas);
            %>
        </p>
        
        <%-- Las variables declaradas dentro de un scriptlet tienen alcance (scope) a nivel del bloque try del método '_jspService' --%>
        <%-- Hacé click derecho en el archivo .jsp y seleccioná 'View Servlet' para observarlo  --%>
        <p><strong>Se accedió a la URL: </strong>
            <%
                String laUrl = request.getRequestURL().toString();
                out.print(laUrl);
            %>
        </p>

        <p><a href="index.html">Volver...</a></p>        
    </body>
</html>
