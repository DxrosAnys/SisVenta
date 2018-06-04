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
public class subcategoria {
    private String sub_cod;
    private String descripcion;
    private String cat_cod;

    public subcategoria() {
    }

    public subcategoria(String sub_cod, String descripcion, String cat_cod) {
        this.sub_cod = sub_cod;
        this.descripcion = descripcion;
        this.cat_cod = cat_cod;
    }

    public String getSub_cod() {
        return sub_cod;
    }

    public void setSub_cod(String sub_cod) {
        this.sub_cod = sub_cod;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getCat_cod() {
        return cat_cod;
    }

    public void setCat_cod(String cat_cod) {
        this.cat_cod = cat_cod;
    }
    
    
}
