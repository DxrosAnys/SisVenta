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
    private String deadline;
    private String dateregister;

    public modelo() {
    }

    public modelo(String mod_cod, double precio, int stock, String descripcion, double descuento, String deadline, String dateregister) {
        this.mod_cod = mod_cod;
        this.precio = precio;
        this.stock = stock;
        this.descripcion = descripcion;
        this.descuento = descuento;
        this.deadline = deadline;
        this.dateregister = dateregister;
    }
    
    public String getMod_cod() {
        return mod_cod;
    }

    public void setMod_cod(String mod_cod) {
        this.mod_cod = mod_cod;
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

    public String getDeadline() {
        return deadline;
    }

    public void setDeadline(String deadline) {
        this.deadline = deadline;
    }

    public String getDateregister() {
        return dateregister;
    }

    public void setDateregister(String dateregister) {
        this.dateregister = dateregister;
    }

    
}
