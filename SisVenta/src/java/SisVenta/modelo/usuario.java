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
    private String usercod;
    private String nick;
    private String nombre;
    private String apellido;    
    private String pass;
    private String email;
    private String direccion;
    private String telefono;
    private String foto;
    private Date dateregister;
    private String DNI;
    private String ustatus;

    public usuario() {
    }

    public usuario(String usercod, String nick, String nombre, String apellido, String pass, String email, String direccion, String telefono, String foto, Date dateregister, String DNI, String ustatus) {
        this.usercod = usercod;
        this.nick = nick;
        this.nombre = nombre;
        this.apellido = apellido;
        this.pass = pass;
        this.email = email;
        this.direccion = direccion;
        this.telefono = telefono;
        this.foto = foto;
        this.dateregister = dateregister;
        this.DNI = DNI;
        this.ustatus = ustatus;
    }

   

    public String getUsercod() {
        return usercod;
    }

    public void setUsercod(String usercod) {
        this.usercod = usercod;
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

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
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
    
    
}
