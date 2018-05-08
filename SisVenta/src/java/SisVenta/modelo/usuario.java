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
public class usuario {
    private String user_cod;
    private String nick;
    private String nombre;
    private String apellido;    
    private String pass;
    private String email;
    private String direccion;
    private String celular;
    private String foto;
    private Date dateregister;
    private String DNI;
    private String ustatus;

    public usuario() {
    }

    public usuario(String user_cod, String nick, String nombre, String apellido, String pass, String email, String direccion, String celular, String foto, Date dateregister, String DNI, String ustatus) {
        this.user_cod = user_cod;
        this.nick = nick;
        this.nombre = nombre;
        this.apellido = apellido;
        this.pass = pass;
        this.email = email;
        this.direccion = direccion;
        this.celular = celular;
        this.foto = foto;
        this.dateregister = dateregister;
        this.DNI = DNI;
        this.ustatus = ustatus;
    }

    public usuario(String string, String string0, String string1, String string2, String string3, String string4, String string5, java.sql.Date date, String string6, String string7, String string8) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public String getDNI() {
        return DNI;
    }

    public void setDNI(String DNI) {
        this.DNI = DNI;
    }

    public String getUstatus() {
        return ustatus;
    }

    public void setUstatus(String ustatus) {
        this.ustatus = ustatus;
    }

    public Date getDateregister() {
        return dateregister;
    }

    public void setDateregister(Date dateregister) {
        this.dateregister = dateregister;
    }

    public String getUser_cod() {
        return user_cod;
    }

    public void setUser_cod(String user_cod) {
        this.user_cod = user_cod;
    }
    
    
}
