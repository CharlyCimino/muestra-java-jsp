
package ar.charlycimino.muestra.java.jsp.jstl;

import ar.charlycimino.muestra.java.jsp.PersonaBean;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
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
@WebServlet(urlPatterns = "/jstl/servlet-jsp-jstl-choose")
public class Servlet_JSP_JSTL_Choose extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PersonaBean p = new PersonaBean(1, "Cosme", "Fulanito", 0, true);
        req.setAttribute("persona", p); 
        req.getRequestDispatcher("jstl_choose.jsp").forward(req, resp);
    }
    
}
