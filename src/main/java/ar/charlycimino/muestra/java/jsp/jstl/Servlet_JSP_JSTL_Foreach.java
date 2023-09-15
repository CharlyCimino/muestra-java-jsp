
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
@WebServlet(urlPatterns = "/jstl/servlet-jsp-jstl-foreach")
public class Servlet_JSP_JSTL_Foreach extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Para caso de uso 1
        PersonaBean p = new PersonaBean(1, "Cosme", "Fulanito", 4, true);
        req.setAttribute("persona", p); 
        // Para caso de uso 2
        List<PersonaBean> lista = new ArrayList<>();
        lista.add(new PersonaBean(21, "Alan", "Turing", 0, true));
        lista.add(new PersonaBean(43, "Ada", "Lovelace", 0, false));
        lista.add(new PersonaBean(56, "Grace", "Murray Hopper", 2, true));
        req.setAttribute("listaDePersonas", lista); 
        req.getRequestDispatcher("jstl_foreach.jsp").forward(req, resp);
    }
    
}
