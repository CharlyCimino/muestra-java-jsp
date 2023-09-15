
package ar.charlycimino.muestra.java.jsp.jstl;

import ar.charlycimino.muestra.java.jsp.PersonaBean;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Charly Cimino
 * Aprendé más Java en mi canal: https://www.youtube.com/c/CharlyCimino
 * Encontrá más código en mi repo de GitHub: https://github.com/CharlyCimino
 */
@WebServlet(urlPatterns = "/jstl/servlet-jsp-jstl-forTokens")
public class Servlet_JSP_JSTL_ForTokens extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("coloresCSV", "Rojo,Azul,Amarillo,Verde,Negro"); 
        req.getRequestDispatcher("jstl_forTokens.jsp").forward(req, resp);
    }
    
}
