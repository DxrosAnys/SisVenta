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
import SisVenta.service.CrudInterface;
import com.google.gson.Gson;

/**
 *
 * @author Dxros
 */
public class modeloDao implements CrudInterface<modelo> {

    Connection cn;
    CallableStatement cs;
    PreparedStatement ps;
    String Res;
    String sql;
    ResultSet st;
    modelo mod;

    @Override
    public List<modelo> readAll() throws Exception {
        List<modelo> lismod = new ArrayList<>();
        try {
            cn = conexion.getConnection();
            sql = "select mod_cod,precio,stock,descripcion,descuento,deadline,fec_registro from modelo order by mod_cod";
            ps = cn.prepareStatement(sql);
            st = ps.executeQuery();
            while (st.next()) {
                mod = new modelo(st.getString(1), st.getDouble(2), st.getInt(3), st.getString(4), st.getDouble(5), st.getDate(6), st.getDate(7));
                lismod.add(mod);
            }
            ps.close();
            st.close();
        } catch (SQLException e) {
            throw e;
        } finally {
            cn.close();
        }
        return lismod;
    }

    public String Listado() throws Exception {
        List<modelo> lismod = new ArrayList<>();
        try {
            cn = conexion.getConnection();
            sql = "select mod_cod,precio,stock,descripcion,descuento,deadline,fec_registro from modelo order by mod_cod";
            ps = cn.prepareStatement(sql);
            st = ps.executeQuery();
            while (st.next()) {
                mod = new modelo(st.getString(1), st.getDouble(2), st.getInt(3), st.getString(4), st.getDouble(5), st.getDate(6), st.getDate(7));
                lismod.add(mod);
            }
            ps.close();
            st.close();
        } catch (SQLException e) {
            throw e;
        } finally {
            cn.close();
        }
        return new Gson().toJson(lismod);
    }

    @Override
    public String create(modelo l) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String update(modelo l) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String delete(modelo l) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
