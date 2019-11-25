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
    private String mar_cod;
    private String descripcion;

    public marca() {
    }

    public marca(String mar_cod, String descripcion) {
        this.mar_cod = mar_cod;
        this.descripcion = descripcion;
    }

    
    public String getMar_cod() {
        return mar_cod;
    }

    public void setMar_cod(String mar_cod) {
        this.mar_cod = mar_cod;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
 
    
}
