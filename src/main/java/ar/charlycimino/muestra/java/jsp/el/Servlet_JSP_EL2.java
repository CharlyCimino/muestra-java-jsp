
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
@WebServlet(urlPatterns = "/el/servlet-jsp-el2")
public class Servlet_JSP_EL2 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.addCookie( new Cookie("color", "rojo") );
        req.setAttribute("user2", "Luis"); // Liga atributo a nivel solicitud
        req.getSession().setAttribute("user3", "Sara"); // Liga atributo a nivel sesión
        getServletContext().setAttribute("user4", "Ana"); // Liga atributo a nivel aplicación
        req.getRequestDispatcher("el2.jsp").forward(req, resp);
    }
    
}
