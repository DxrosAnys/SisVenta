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
    private String wis_cod;
    private String mod_cod;
    private String usercod;
    private String sub_cod;
    private String wishdate;

    public listaDeseo() {
    }

    public listaDeseo(String wis_cod, String mod_cod, String usercod, String sub_cod, String wishdate) {
        this.wis_cod = wis_cod;
        this.mod_cod = mod_cod;
        this.usercod = usercod;
        this.sub_cod = sub_cod;
        this.wishdate = wishdate;
    }

    public String getUsercod() {
        return usercod;
    }

    public void setUsercod(String usercod) {
        this.usercod = usercod;
    }

    public String getWishdate() {
        return wishdate;
    }

    public void setWishdate(String wishdate) {
        this.wishdate = wishdate;
    }

    public String getWis_cod() {
        return wis_cod;
    }

    public void setWis_cod(String wis_cod) {
        this.wis_cod = wis_cod;
    }

    public String getMod_cod() {
        return mod_cod;
    }

    public void setMod_cod(String mod_cod) {
        this.mod_cod = mod_cod;
    }

    public String getSub_cod() {
        return sub_cod;
    }

    public void setSub_cod(String sub_cod) {
        this.sub_cod = sub_cod;
    }
    
}
