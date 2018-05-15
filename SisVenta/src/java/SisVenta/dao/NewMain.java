/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SisVenta.dao;

import SisVenta.database.conexion;
import SisVenta.modelo.modelo;
import java.sql.SQLException;

/**
 *
 * @author Dxros
 */
public class NewMain {

    /**
     * @param args the command line arguments
     * @throws java.lang.ClassNotFoundException
     * @throws java.sql.SQLException
     */
    public static void main(String[] args) throws ClassNotFoundException, SQLException, Exception {
        try{
        conexion.getConnection();
       modeloDao obj=new modeloDao();
		for(modelo x:obj.readAll()){
			System.out.print(x.getMod_cod()+" "+x.getDescripcion()+" "+x.getPrecio()+" "+x.getStock()+" "+x.getDeadline()+" "+x.getDateregister()+"\n");
		}
        }catch(Exception e){
            throw  e;
        }
    }
    
}
