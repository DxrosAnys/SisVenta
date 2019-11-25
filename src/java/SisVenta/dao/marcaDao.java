/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SisVenta.dao;

import SisVenta.database.conexion;
import SisVenta.modelo.marca;
import SisVenta.service.CrudInterface;
import com.google.gson.Gson;
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
public class marcaDao implements CrudInterface<marca> {

    Connection cn;
    CallableStatement cs;
    PreparedStatement ps;
    String Res;
    String sql;
    ResultSet st;
    marca mar;

    @Override
    public List<marca> readAll() throws Exception {
        List<marca> listmar = new ArrayList<>();
        try {
            cn = conexion.getConnection();
            sql = "select mar_cod, descripcion from marca";
            ps = cn.prepareStatement(sql);
            st = ps.executeQuery();
            while (st.next()) {
                mar = new marca(st.getString(1),st.getString(2));
                listmar.add(mar);
            }
            ps.close();
            st.close();
        } catch (SQLException e) {
            throw e;
        } finally {
            cn.close();
        }
        return listmar;
    }

        public String readAll(String id) throws Exception {
        List<marca> lismar = new ArrayList<>();
        try {
            cn = conexion.getConnection();
            sql = "select distinct c.mar_cod, c.descripcion from subcategoria a inner join CATEGORIA_MARCA b " +
                     " on a.SUB_COD=b.SUB_COD inner join marca c on c.MAR_COD=b.MAR_COD where a.SUB_COD=  ? ";
            ps = cn.prepareStatement(sql);
            ps.setString(1,id);          
            st = ps.executeQuery();
            while (st.next()) {
                mar = new marca(st.getString(1),st.getString(2));
                lismar.add(mar);          
            }
            ps.close();
            st.close();
        } catch (ClassNotFoundException | SQLException e) {
            throw e;
        } finally {
            cn.close();
        }
        return new Gson().toJson(lismar);
    }
    
    @Override
    public String create(marca l) throws Exception {
        try {
            cn = conexion.getConnection();
            cs = cn.prepareCall("{call PKG_SECUENCIAL.SP_INSMAR(?,?)}");
            cs.setString(1, l.getDescripcion());
            cs.registerOutParameter(2, Types.VARCHAR);
            cs.execute();
            Res = cs.getString(2);
            cn.close();
            cs.close();
        } catch (ClassNotFoundException | SQLException e) {
            throw e;
        }
        return Res;
    }

    @Override
    public String update(marca l) throws Exception {
       try {
            cn = conexion.getConnection();
            cs = cn.prepareCall("{call PKG_SECUENCIAL.SP_UPDMAR(?,?,?)}");
            cs.setString(1, l.getMar_cod());
            cs.setString(2, l.getDescripcion());
            cs.registerOutParameter(3, Types.VARCHAR);
            cs.execute();
            Res = cs.getString(3);
        } catch (ClassNotFoundException | SQLException e) {
            throw e;
        }
        return Res;
    }

    @Override
    public String delete(String id) throws Exception {
        try {
            cn = conexion.getConnection();
            cs = cn.prepareCall("{call PKG_SECUENCIAL.SP_DELMAR(?,?)}");
            cs.setString(1, id);
            cs.registerOutParameter(2, Types.VARCHAR);
            cs.execute();
            Res = cs.getString(2);
        } catch (ClassNotFoundException | SQLException e) {
            throw e;
        }
        return new Gson().toJson(Res);
    }
}
