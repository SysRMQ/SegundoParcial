
package com.emergentes.modelo;

public class Permiso {
    private int id;
    private int usuario_id;
    private int rol_id;
    private String usuario;
    private String descripcion;
    
    public Permiso(){
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUsuario_id() {
        return usuario_id;
    }

    public void setUsuario_id(int usuario_id) {
        this.usuario_id = usuario_id;
    }

    public int getRol_id() {
        return rol_id;
    }

    public void setRol_id(int rol_id) {
        this.rol_id = rol_id;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @Override
    public String toString() {
        return "Permiso{" + "id=" + id + ", usuario_id=" + usuario_id + ", rol_id=" + rol_id + ", usuario=" + usuario + ", descripcion=" + descripcion + '}';
    }
    
    
}
