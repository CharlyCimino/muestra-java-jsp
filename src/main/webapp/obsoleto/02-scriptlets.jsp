
<%-- As� es como se hacen declaraciones a nivel de clase en un scriptlet (notar el signo de admiraci�n) --%>
<%-- Hac� click derecho en el archivo .jsp y seleccion� 'View Servlet' para observarlo  --%>
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
        <p>Un <em>scriptlet</em> permite incrustar c�digo Java m�s complejo que una simple expresi�n. No se debe abusar de esta caracter�stica: Colocar toda la l�gica de negocio dentro del JSP es mala pr�ctica.
            Observ� el c�digo fuente (del servidor) para conocer la sintaxis. </p>

        <p><strong>Mostrando un mensaje:</strong>
            <% out.print("Este mensaje es impreso desde un scriptlet (usando out.print())"); %>
        </p>

        <p><strong>2 + 2 es </strong>
            <%-- 2+2 a secas no se va a imprimir, hay que usar out.print(). Record� que es un scriptlet --%>
            <% out.print(2+2); %>
        </p>

        <p><strong>Esta es la visita n�: </strong>
            <%
                contVisitas++;
                out.print(contVisitas);
            %>
        </p>
        
        <%-- Las variables declaradas dentro de un scriptlet tienen alcance (scope) a nivel del bloque try del m�todo '_jspService' --%>
        <%-- Hac� click derecho en el archivo .jsp y seleccion� 'View Servlet' para observarlo  --%>
        <p><strong>Se accedi� a la URL: </strong>
            <%
                String laUrl = request.getRequestURL().toString();
                out.print(laUrl);
            %>
        </p>

        <p><a href="index.html">Volver...</a></p>        
    </body>
</html>
