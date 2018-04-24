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
    private String catcod;
    private String descripcion;
    private String nivel;

    public categoria() {
    }

    public categoria(String descripcion, String nivel) {
        this.descripcion = descripcion;
        this.nivel = nivel;
    }

    public categoria(String catcod, String descripcion, String nivel) {
        this.catcod = catcod;
        this.descripcion = descripcion;
        this.nivel = nivel;
    }
    
    public String getCatcod() {
        return catcod;
    }

    public void setCatcod(String catcod) {
        this.catcod = catcod;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getNivel() {
        return nivel;
    }

    public void setNivel(String nivel) {
        this.nivel = nivel;
    }

}
