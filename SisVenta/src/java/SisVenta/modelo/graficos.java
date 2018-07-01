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
public class graficos {
  
    private String cat_cod;
    private String descripcion;
    private int count;

    public graficos() {
    }

    public graficos(String cat_cod, String descripcion, int count) {
        this.cat_cod = cat_cod;
        this.descripcion = descripcion;
        this.count = count;
    }

    public String getCat_cod() {
        return cat_cod;
    }

    public void setCat_cod(String cat_cod) {
        this.cat_cod = cat_cod;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
    
}
