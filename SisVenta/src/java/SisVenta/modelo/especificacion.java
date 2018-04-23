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
public class especificacion {
    private String specod;
    private String modcod;
    private String marcod;
    private String catcod;
    private String spec1;
    private String spec2;

    public especificacion() {
    }

    public especificacion(String specod, String modcod, String marcod, String catcod, String spec1, String spec2) {
        this.specod = specod;
        this.modcod = modcod;
        this.marcod = marcod;
        this.catcod = catcod;
        this.spec1 = spec1;
        this.spec2 = spec2;
    }

    public String getSpecod() {
        return specod;
    }

    public void setSpecod(String specod) {
        this.specod = specod;
    }

    public String getModcod() {
        return modcod;
    }

    public void setModcod(String modcod) {
        this.modcod = modcod;
    }

    public String getMarcod() {
        return marcod;
    }

    public void setMarcod(String marcod) {
        this.marcod = marcod;
    }

    public String getCatcod() {
        return catcod;
    }

    public void setCatcod(String catcod) {
        this.catcod = catcod;
    }

    public String getSpec1() {
        return spec1;
    }

    public void setSpec1(String spec1) {
        this.spec1 = spec1;
    }

    public String getSpec2() {
        return spec2;
    }

    public void setSpec2(String spec2) {
        this.spec2 = spec2;
    }
    
    
}
