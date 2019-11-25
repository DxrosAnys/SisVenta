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
    private String user_cod;
    private String wishdate;

    public listaDeseo() {
    }

    public listaDeseo(String wis_cod, String mod_cod, String user_cod, String wishdate) {
        this.wis_cod = wis_cod;
        this.mod_cod = mod_cod;
        this.user_cod = user_cod;
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

    public String getUser_cod() {
        return user_cod;
    }

    public void setUser_cod(String user_cod) {
        this.user_cod = user_cod;
    }

    public String getWishdate() {
        return wishdate;
    }

    public void setWishdate(String wishdate) {
        this.wishdate = wishdate;
    }


    
}
