
package ar.charlycimino.muestra.java.jsp.el;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *
 * @author Charly Cimino
 * Aprendé más Java en mi canal: https://www.youtube.com/c/CharlyCimino
 * Encontrá más código en mi repo de GitHub: https://github.com/CharlyCimino
 */

// El mapeo de este servlet está hecho en el archivo web.xml
public class Servlet_JSP_EL3 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.addCookie( new Cookie("color", "rojo") );
        // Recordar que hay un parámetro de inicio para esta aplicación web (ver en web.xml)
        req.getRequestDispatcher("el3.jsp").forward(req, resp);
    }
    
}

