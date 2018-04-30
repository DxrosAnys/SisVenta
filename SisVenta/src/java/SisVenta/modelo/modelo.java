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
    private String mod_cod;
    private double precio;   
    private int stock;
    private String descripcion;
    private double descuento;
    private Date deadline;
    private String mar_cod;
    private String cat_cod;
    private Date dateregister;

    public modelo() {
    }
    
    public modelo(String mod_cod, double precio, int stock, String descripcion, double descuento, Date deadline, String mar_cod, String cat_cod, Date dateregister) {
        this.mod_cod = mod_cod;
        this.precio = precio;
        this.stock = stock;
        this.descripcion = descripcion;
        this.descuento = descuento;
        this.deadline = deadline;
        this.mar_cod = mar_cod;
        this.cat_cod = cat_cod;
        this.dateregister = dateregister;
    }
    public String getCatcod() {
        return cat_cod;
    }

    public void setCatcod(String cat_cod) {
        this.cat_cod = cat_cod;
    }

    public String getMarcod() {
        return mar_cod;
    }

    public void setMarcod(String mar_cod) {
        this.mar_cod = mar_cod;
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
        return mod_cod;
    }

    public void setModcod(String mod_cod) {
        this.mod_cod = mod_cod;
    }

    public Date getDateregister() {
        return dateregister;
    }

    public void setDateregister(Date dateregister) {
        this.dateregister = dateregister;
    }
    
    
}
