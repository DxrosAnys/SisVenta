/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SisVenta.modelo;

import java.util.Date;

/**
 *
 * @author Dxros
 */
public class detalleVenta {
    private String detvencod;
    private String mod_cod;
    private String user_cod;
    private Double precio;
    private Double cantidad;
    private Double descuento;
    private Double importe;
    private Date buydate;
    
    public detalleVenta() {
    }

    public detalleVenta(String detvencod, String mod_cod, String user_cod, Double precio, Double cantidad, Double descuento, Double importe, Date buydate) {
        this.detvencod = detvencod;
        this.mod_cod = mod_cod;
        this.user_cod = user_cod;
        this.precio = precio;
        this.cantidad = cantidad;
        this.descuento = descuento;
        this.importe = importe;
        this.buydate = buydate;
    }

    public String getDetvencod() {
        return detvencod;
    }

    public void setDetvencod(String detvencod) {
        this.detvencod = detvencod;
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

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public Double getCantidad() {
        return cantidad;
    }

    public void setCantidad(Double cantidad) {
        this.cantidad = cantidad;
    }

    public Double getDescuento() {
        return descuento;
    }

    public void setDescuento(Double descuento) {
        this.descuento = descuento;
    }

    public Double getImporte() {
        return importe;
    }

    public void setImporte(Double importe) {
        this.importe = importe;
    }

    public Date getBuydate() {
        return buydate;
    }

    public void setBuydate(Date buydate) {
        this.buydate = buydate;
    }

              
}
