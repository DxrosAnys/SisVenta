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
public class categoria {
    private String cat_cod;
    private String cat_descripcion;
    private String nivel;

    public categoria() {
    }

    public categoria(String cat_cod, String cat_descripcion, String nivel) {
        this.cat_cod = cat_cod;
        this.cat_descripcion = cat_descripcion;
        this.nivel = nivel;
    }  

    public String getNivel() {
        return nivel;
    }

    public void setNivel(String nivel) {
        this.nivel = nivel;
    }

    public String getCat_cod() {
        return cat_cod;
    }

    public void setCat_cod(String cat_cod) {
        this.cat_cod = cat_cod;
    }

    public String getCat_descripcion() {
        return cat_descripcion;
    }

    public void setCat_descripcion(String cat_descripcion) {
        this.cat_descripcion = cat_descripcion;
    }

}
