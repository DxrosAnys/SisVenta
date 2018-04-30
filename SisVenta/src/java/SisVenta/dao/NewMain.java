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
		//int res=obj.registraUsuario("Beto","Lee", "use1","abcde");
		//Usuario x=obj.validaLogueo("use1", "abcde");
		//if(x!=null)
		  //System.out.println(x.getApellido());
		for(modelo x:obj.readAll()){
			System.out.print(x.getModcod()+" "+x.getDescripcion()+" "+x.getCatcod()+" "+x.getMarcod()+" "+x.getPrecio()+" "+x.getStock()+" "+x.getDeadline()+" "+x.getDateregister()+"\n");
		}
        }catch(Exception e){
            throw  e;
        }
    }
    
}
