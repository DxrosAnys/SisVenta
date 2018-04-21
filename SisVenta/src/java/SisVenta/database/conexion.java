/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SisVenta.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Dxros
 */
public class conexion {
   
     public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Connection cn;
        //cargar el driver en memoria
        Class.forName("oracle.jdbc.OracleDriver");
        // url de la base de datos
        String url = "jdbc:oracle:thin:@localhost:1521:XE";
         // url de la base de datos ORACLE 12C 
        //String url = "jdbc:oracle:thin:@localhost:1521:ORCL";
        // obtener objeto conecion
        cn = DriverManager.getConnection(url, "SisVenta", "SisVenta");
        return cn;
    }  
    
}
