/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SisVenta.modelo;

/**
 *
 * @author Dxros
 */
public class marca {
    String marcod;
    private String descripcion;

    public marca() {
    }

    public marca(String marcod, String descripcion) {
        this.marcod = marcod;
        this.descripcion = descripcion;
    } 

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
}
