<%-- Esta directiva convierte al .jsp a un manejador de errores (por default, false).
     Al hacerlo, ahora disponemos también de una variable implícita llamada 'exception'
--%>
<%@ page isErrorPage="true" %>

<%-- Se importa 'PrintWriter' para poder manipular el flujo de salida de la traza de la pila --%>
<%@ page import="java.io.PrintWriter" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error en el Servidor</title>
    </head>
    <style>
        .err {
            color: crimson;
        }
        textarea {
            font-size: 0.6rem;
            background: #100;
            color: coral;
            line-height: 1rem;
        }
    </style>
    <body>
        <h1 class="err">Error en el Servidor</h1>
        <p><strong>Causa:</strong> <%= exception.getMessage() %></p>
        <textarea cols="150" rows="15">
            <% exception.printStackTrace(new PrintWriter(out)); %>
        </textarea>
        <br/><br/>
        <small>Este es un mensaje de error personalizado mediante JSP con directiva isErrorPage="true"</small>
        <p><a href="index.html">Volver...</a></p>
    </body>
</html>
