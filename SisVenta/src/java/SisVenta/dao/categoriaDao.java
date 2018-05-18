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
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Dxros
 */
public class categoriaDao implements CrudInterface<categoria> {

    Connection cn;
    CallableStatement cs;
    PreparedStatement ps;
    String Res;
    String sql;
    ResultSet st;
    categoria cat;

    @Override
    public List<categoria> readAll() throws Exception {
        List<categoria> listcat = new ArrayList<>();
        try {
            cn = conexion.getConnection();
            sql = "select cat_cod, cat_descripcion from categoria ";
            ps = cn.prepareStatement(sql);
            st = ps.executeQuery();
            while (st.next()) {
                cat = new categoria(st.getString(1),st.getString(2));
                listcat.add(cat);
            }
            ps.close();
            st.close();
        } catch (ClassNotFoundException | SQLException e) {
            throw e;
        } finally {
            cn.close();
        }
        return listcat;
    }
  
    @Override
    public String create(categoria l) throws Exception {
        try {
            cn = conexion.getConnection();
            cs = cn.prepareCall("{call PKG_SECUENCIAL.SP_INSCAT(?,?)}");
            cs.setString(1, l.getDescripcion());
            cs.registerOutParameter(2, Types.VARCHAR);
            cs.execute();
            Res = cs.getString(2);
        } catch (ClassNotFoundException | SQLException e) {
            throw e;
        }
        return Res;
    }

    @Override
    public String update(categoria l) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String delete(categoria l) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
