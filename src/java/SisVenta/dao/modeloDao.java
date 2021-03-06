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
import java.sql.Types;

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
                mod = new modelo(st.getString(1), st.getDouble(2), st.getInt(3), st.getString(4), st.getDouble(5), st.getString(6), st.getString(7));
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
                mod = new modelo(st.getString(1), st.getDouble(2), st.getInt(3), st.getString(4), st.getDouble(5), st.getString(6), st.getString(7));
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
        try {
            cn = conexion.getConnection();
            cs = cn.prepareCall("{call PKG_SECUENCIAL.SP_INSMOD(?,?,?,?,?,?)}");
            cs.setString(1, l.getDescripcion());
            cs.setDouble(2, l.getPrecio());
            cs.setDouble(3, l.getDescuento());
            cs.setInt(4, l.getStock());
            cs.setString(5,  l.getDeadline());
            cs.registerOutParameter(6, Types.VARCHAR);
            cs.execute();
            Res = cs.getString(6);
        } catch (ClassNotFoundException | SQLException e) {
            throw e;
        }
        return Res;
    }

    @Override
    public String update(modelo l) throws Exception {
        try {
            cn = conexion.getConnection();
            cs = cn.prepareCall("{call PKG_SECUENCIAL.SP_UPDMOD(?,?,?,?,?,?,?)}");
            cs.setString(1, l.getMod_cod());
            cs.setString(2, l.getDescripcion());
            cs.setDouble(3, l.getPrecio());
            cs.setDouble(4, l.getDescuento());
            cs.setInt(5, l.getStock());
            cs.setString(6, l.getDeadline());
            cs.registerOutParameter(7, Types.VARCHAR);
            cs.execute();
            Res = cs.getString(7);
        } catch (ClassNotFoundException | SQLException e) {
            throw e;
        }
        return Res;
    }

    @Override
    public String delete(String id) throws Exception {
        try {
            cn = conexion.getConnection();
            cs = cn.prepareCall("{call PKG_SECUENCIAL.SP_DELMOD(?,?)}");
            cs.setString(1, id);
            cs.registerOutParameter(2, Types.VARCHAR);
            cs.execute();
            Res = cs.getString(2);
        } catch (ClassNotFoundException | SQLException e) {
            throw e;
        }
        return new Gson().toJson(Res);
    }
  
    public void delete2(String id) throws Exception {
       try {
            cn = conexion.getConnection();
            sql = "delete from categoria_marca WHERE MOD_COD = ?";
            ps = cn.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeUpdate();
            ps.close();
        } catch (SQLException | ClassNotFoundException e) {
            throw e;
        } finally {
            cn.close();
        }
    }
    
     public String Modelo() throws SQLException, ClassNotFoundException {
         List<modelo> lismod = new ArrayList<>();
        try {
            cn = conexion.getConnection();
            sql = "select mod_cod,precio,stock,descripcion,descuento,deadline,fec_registro from modelo order by mod_cod";
            ps = cn.prepareStatement(sql);
            st = ps.executeQuery();
            while (st.next()) {
                mod = new modelo(st.getString(1), st.getDouble(2), st.getInt(3), st.getString(4), st.getDouble(5), st.getString(6), st.getString(7));
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
     
     public List<modelo> Buscar(String id) throws Exception {
         List<modelo> lismod = new ArrayList<>();
       try {
            cn = conexion.getConnection();
            sql = "select mod_cod,precio,stock,descripcion from modelo WHERE MOD_COD = ?";
            ps = cn.prepareStatement(sql);
            ps.setString(1, id);
            st = ps.executeQuery();
            while (st.next()) {
                mod = new modelo();
                mod.setMod_cod(st.getString(1));
                mod.setPrecio(st.getDouble(2));
                mod.setStock(st.getInt(3));
                mod.setDescripcion(st.getString(4));
                lismod.add(mod);
            }
            ps.close();
        } catch (SQLException | ClassNotFoundException e) {
            throw e;
        } finally {
            cn.close();
        }
        return lismod;
    }
     
     public static synchronized modelo obtenerProducto(String codigo) throws SQLException, ClassNotFoundException {
        modelo p = new modelo();
        Connection cn ;
        PreparedStatement pstm;
        ResultSet rs;
        try {
            String query = "select mod_cod,precio,stock,descripcion from modelo WHERE mod_cod = ?";
            cn = conexion.getConnection(); 
            pstm = cn.prepareStatement(query);
            pstm.setString(1, codigo);
            rs = pstm.executeQuery();
            if (rs.next()) {
                p.setMod_cod(rs.getString(1));
                p.setPrecio(rs.getDouble(2));
                p.setStock(rs.getInt(3));
                p.setDescripcion(rs.getString(4));
                
            }
            rs.close();
            pstm.close();
            cn.close();
            //Conexion.cerrarConexion(cn);
        } catch (SQLException e) {
            throw e;// Conexion.cerrarConexion(cn);
        } 
        return p;
    }
}
