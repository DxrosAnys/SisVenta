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
    private String modcod;
    private String usercod;
    private String catcod;
    private String marcod;
    private Double precio;
    private Double cantidad;
    private Double descuento;
    private Double importe;
    private Date buydate;

    public detalleVenta() {
    }

    public detalleVenta(String detvencod, String modcod, String usercod, String catcod, String marcod, Double precio, Double cantidad, Double descuento, Double importe, Date buydate) {
        this.detvencod = detvencod;
        this.modcod = modcod;
        this.usercod = usercod;
        this.catcod = catcod;
        this.marcod = marcod;
        this.precio = precio;
        this.cantidad = cantidad;
        this.descuento = descuento;
        this.importe = importe;
        this.buydate = buydate;
    }

    public detalleVenta(String modcod, String usercod, String catcod, String marcod, Double precio, Double cantidad, Double descuento, Double importe, Date buydate) {
        this.modcod = modcod;
        this.usercod = usercod;
        this.catcod = catcod;
        this.marcod = marcod;
        this.precio = precio;
        this.cantidad = cantidad;
        this.descuento = descuento;
        this.importe = importe;
        this.buydate = buydate;
    }

    public detalleVenta(String detvencod,Double precio, Double cantidad, Double descuento, Double importe, Date buydate) {
        this.detvencod = detvencod;
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
