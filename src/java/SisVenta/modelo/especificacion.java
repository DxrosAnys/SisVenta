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
    private String spe_cod;
    private String mod_cod;
    private String spec1;
    private String spec2;

    public especificacion() {
    }

    public especificacion(String spe_cod, String mod_cod, String spec1, String spec2) {
        this.spe_cod = spe_cod;
        this.mod_cod = mod_cod;
        this.spec1 = spec1;
        this.spec2 = spec2;
    }

    public String getSpe_cod() {
        return spe_cod;
    }

    public void setSpe_cod(String spe_cod) {
        this.spe_cod = spe_cod;
    }

    public String getMod_cod() {
        return mod_cod;
    }

    public void setMod_cod(String mod_cod) {
        this.mod_cod = mod_cod;
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
