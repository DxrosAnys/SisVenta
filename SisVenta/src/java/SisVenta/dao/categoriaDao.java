/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SisVenta.dao;
import SisVenta.database.conexion;
import SisVenta.modelo.categoria;
import SisVenta.service.CrudInterface;
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
public class categoriaDao implements CrudInterface<categoria>{

    Connection cn;
    CallableStatement cs;
    PreparedStatement ps;
    String Res;
    String sql;
    ResultSet st;
    categoria cat;
    
    @Override
    public String create(categoria l) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String update(categoria l) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String delete(categoria l) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<categoria> readAll() throws Exception {
        List<categoria> listcat = new ArrayList<>();
        try {         
            cn = conexion.getConnection();
            sql = "select cat_cod, cat_descripcion, nivel from categoria;";
            ps = cn.prepareStatement(sql);
            st = ps.executeQuery();
           while (st.next()) {
                cat = new categoria();
                listcat.add(cat);
            }
            ps.close();
            st.close();
        } catch (ClassNotFoundException | SQLException e) {
            throw e;
        }finally {
            cn.close();
        }
        return listcat;
    }
    
}
