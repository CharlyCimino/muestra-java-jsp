

<%-- Así es como se importan clases de Java usando una directiva --%>
<%@ page import="java.time.LocalDateTime,java.time.format.DateTimeFormatter" %>

<%-- 
    Tipos MIME: Es un identificador para formatos de archivo transmitidos por Internet, usado por protocolos
    como HTTP, y formatos de archivo como HTML, entre otros. Son estandarizados y publicados por la IANA 
    (Internet Assigned Numbers Authority).

    MIMEs más comunes: https://stackoverflow.com/questions/23714383/what-are-all-the-possible-values-for-http-content-type-header
    Listado de MIMEs completo: https://www.iana.org/assignments/media-types/media-types.xhtml
--%>
<%-- Así es como se define el tipo MIME a retornar usando una directiva --%>
<%@ page contentType="text/plain" %>

<%-- Ajustamos uno de los headers HTTP de respuesta para forzar a descargar un .txt --%>
<%
    String nombre = "respuesta.txt";
    response.setHeader("Content-disposition", "attachment; filename=" + nombre);
%>
Fecha y hora de respuesta: <%
                DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm");
                String fechaStr = dtf.format(LocalDateTime.now());
                out.print(fechaStr);
            %>
