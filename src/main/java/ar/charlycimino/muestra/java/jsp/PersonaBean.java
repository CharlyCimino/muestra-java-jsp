
package ar.charlycimino.muestra.java.jsp;

import java.io.Serializable;

/**
 *
 * @author Charly Cimino
 * Aprendé más Java en mi canal: https://www.youtube.com/c/CharlyCimino
 * Encontrá más código en mi repo de GitHub: https://github.com/CharlyCimino
 */

// Un JavaBean debe ser Serializable
public class PersonaBean implements Serializable {
    
    // Los atributos deben ser privados.
    private int id;
    private String nombre;
    private String apellido;
    private int nroHijos;
    private boolean interesada;

    // Este constructor no puede faltar. Si hay sobrecarga, se debe escribir explícitamente.
    public PersonaBean() {
        this(0, "", "", 0, false);
    }

    // Se puede tener sobrecarga de constructores
    public PersonaBean(int id, String nombre, String apellido, int nroHijos, boolean interesada) {
        setId(id);
        setNombre(nombre);
        setApellido(apellido);
        setNroHijos(nroHijos);
        setInteresada(interesada);
    }   
    
    // Se deben proveer métodos getter y setter para el acceso a los atributos privados (que interese exponer).
    public int getId() {
        return id;
    }    
    
    public void setId(int id) {
        if (id < 0) {
            throw new RuntimeException("El id no puede ser negativo");
        }
        this.id = id;
    }  

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        if (nombre == null) {
            throw new RuntimeException("El nombre no puede ser nulo");
        }
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        if (apellido == null) {
            throw new RuntimeException("El apellido no puede ser nulo");
        }
        this.apellido = apellido;
    }

    public int getNroHijos() {
        return nroHijos;
    }

    public void setNroHijos(int nroHijos) {
        if (nroHijos < 0) {
            throw new RuntimeException("El número de hijos no puede ser negativo");
        }
        this.nroHijos = nroHijos;
    }

    // Cuando se trata de getters para valores 'boolean', se cambia 'get' por 'is'
    public boolean isInteresada() {
        return interesada;
    }

    public void setInteresada(boolean interesada) {
        this.interesada = interesada;
    }
    
    // Se puede tener un getter sin un atributo asociado
    public String getNombreCompleto() {
        return nombre + " " + apellido;
    }

    @Override
    public String toString() {
        return "PersonaBean{" + "id=" + id + ", nombre=" + nombre + ", apellido=" + apellido + ", nroHijos=" + nroHijos + ", interesada=" + interesada + '}';
    }
    
}
