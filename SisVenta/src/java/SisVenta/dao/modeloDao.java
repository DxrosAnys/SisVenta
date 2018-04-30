/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SisVenta.dao;

import SisVenta.database.conexion;
import SisVenta.modelo.modelo;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Dxros
 */
public class modeloDao {
     Connection cn;
    CallableStatement cs;
    PreparedStatement ps;
    String Res;
    String sql;
    ResultSet st;
    modelo mod;

    public List<modelo> readAll() throws Exception{
      List<modelo> lismod = new ArrayList<>();
        try {         
            cn = conexion.getConnection();
            sql = "select mod_cod,precio,stock,descripcion,descuento,deadline,mar_cod,cat_cod,fec_registro from modelo order by mod_cod";
            ps = cn.prepareStatement(sql);
            st = ps.executeQuery();
           while (st.next()) {
                mod = new modelo(st.getString(1), st.getDouble(2), st.getInt(3), st.getString(4),st.getDouble(5),st.getDate(6),st.getString(7),st.getString(8),st.getDate(9));
                lismod.add(mod);
            }
            ps.close();
            st.close();
        } catch (ClassNotFoundException | SQLException e) {
            throw e;
        }finally {
            cn.close();
        }
        return lismod;
    }
}
