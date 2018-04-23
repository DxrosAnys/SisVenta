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
public class listaDeseo {
    private String wiscod;
    private String modcod;
    private String usercod;
    private String catcod;
    private String marcod;
    private String wishdate;

    public listaDeseo() {
    }

    public listaDeseo(String wiscod, String modcod, String usercod, String catcod, String marcod, String wishdate) {
        this.wiscod = wiscod;
        this.modcod = modcod;
        this.usercod = usercod;
        this.catcod = catcod;
        this.marcod = marcod;
        this.wishdate = wishdate;
    }

    public String getWiscod() {
        return wiscod;
    }

    public void setWiscod(String wiscod) {
        this.wiscod = wiscod;
    }

    public String getModcod() {
        return modcod;
    }

    public void setModcod(String modcod) {
        this.modcod = modcod;
    }

    public String getUsercod() {
        return usercod;
    }

    public void setUsercod(String usercod) {
        this.usercod = usercod;
    }

    public String getCatcod() {
        return catcod;
    }

    public void setCatcod(String catcod) {
        this.catcod = catcod;
    }

    public String getMarcod() {
        return marcod;
    }

    public void setMarcod(String marcod) {
        this.marcod = marcod;
    }

    public String getWishdate() {
        return wishdate;
    }

    public void setWishdate(String wishdate) {
        this.wishdate = wishdate;
    }
    
}
