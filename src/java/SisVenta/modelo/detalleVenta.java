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
public class detalleVenta {
    private String detvencod;
    private String mod_cod;
    private String user_cod;
    private Double precio;
    private int cantidad;
    private Double descuento;
    private Double importe;
    private String buydate;
    private modelo modelo;
    
    public detalleVenta() {
    }

    public detalleVenta(String detvencod, String mod_cod, String user_cod, Double precio, int cantidad, Double descuento, Double importe, String buydate, modelo modelo) {
        this.detvencod = detvencod;
        this.mod_cod = mod_cod;
        this.user_cod = user_cod;
        this.precio = precio;
        this.cantidad = cantidad;
        this.descuento = descuento;
        this.importe = importe;
        this.buydate = buydate;
        this.modelo = modelo;
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

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
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

    public String getBuydate() {
        return buydate;
    }

    public void setBuydate(String buydate) {
        this.buydate = buydate;
    }

    public modelo getModelo() {
        return modelo;
    }

    public void setModelo(modelo modelo) {
        this.modelo = modelo;
    }

    
}
