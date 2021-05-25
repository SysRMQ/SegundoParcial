
package com.emergentes.modelo;

public class Rol {
    private int id;
    private String descripcion;
    
    public Rol(){
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @Override
    public String toString() {
        return "Rol{" + "id=" + id + ", descripcion=" + descripcion + '}';
    }
    
    
}
