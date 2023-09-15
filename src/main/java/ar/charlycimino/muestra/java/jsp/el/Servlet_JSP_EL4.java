
package ar.charlycimino.muestra.java.jsp.el;

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
@WebServlet(urlPatterns = "/el/servlet-jsp-el4")
public class Servlet_JSP_EL4 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PersonaBean p = new PersonaBean(1, "Alan", "Turing", 0, true);
        req.setAttribute("padreDeLaInformatica", p); 
        req.getRequestDispatcher("el4.jsp").forward(req, resp);
    }
    
}
