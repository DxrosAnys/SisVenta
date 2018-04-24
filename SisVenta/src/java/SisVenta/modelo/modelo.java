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
public class modelo {
    private String modcod;
    private String  catcod;
    private String marcod;
    private String descripcion;
    private double descuento;
    private Date deadline;
    private double precio;
    private int stock;
    private Date dateregister;

    public modelo() {
    }

    public modelo(String catcod, String marcod, String descripcion, double descuento, Date deadline, double precio, int stock) {
        this.catcod = catcod;
        this.marcod = marcod;
        this.descripcion = descripcion;
        this.descuento = descuento;
        this.deadline = deadline;
        this.precio = precio;
        this.stock = stock;
    }

    public modelo(String modcod, String catcod, String marcod, String descripcion, double descuento, Date deadline, double precio, int stock, Date dateregister) {
        this.modcod = modcod;
        this.catcod = catcod;
        this.marcod = marcod;
        this.descripcion = descripcion;
        this.descuento = descuento;
        this.deadline = deadline;
        this.precio = precio;
        this.stock = stock;
        this.dateregister = dateregister;
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

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public double getDescuento() {
        return descuento;
    }

    public void setDescuento(double descuento) {
        this.descuento = descuento;
    }

    public Date getDeadline() {
        return deadline;
    }

    public void setDeadline(Date deadline) {
        this.deadline = deadline;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getModcod() {
        return modcod;
    }

    public void setModcod(String modcod) {
        this.modcod = modcod;
    }

    public Date getDateregister() {
        return dateregister;
    }

    public void setDateregister(Date dateregister) {
        this.dateregister = dateregister;
    }
    
    
}
