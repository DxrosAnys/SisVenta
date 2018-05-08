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
    private String mar_descripcion;

    public marca() {
    }

    public marca(String mar_cod, String mar_descripcion) {
        this.mar_cod = mar_cod;
        this.mar_descripcion = mar_descripcion;
    }

    public String getMar_cod() {
        return mar_cod;
    }

    public void setMar_cod(String mar_cod) {
        this.mar_cod = mar_cod;
    }

    public String getMar_descripcion() {
        return mar_descripcion;
    }

    public void setMar_descripcion(String mar_descripcion) {
        this.mar_descripcion = mar_descripcion;
    }

    
    
}
