/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SisVenta.dao;

import SisVenta.database.conexion;
import SisVenta.modelo.categoria;
import SisVenta.modelo.subcategoria;
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
public class subcategoriaDao implements CrudInterface<subcategoria>{

    Connection cn;
    CallableStatement cs;
    PreparedStatement ps;
    String Res;
    String sql;
    ResultSet st;
    subcategoria sub;
    
    @Override
    public List<subcategoria> readAll() throws Exception {
       List<subcategoria> listsub = new ArrayList<>();
        try {
            cn = conexion.getConnection();
            sql = "select b.SUB_COD, b.DESCRIPCION,a.CAT_COD,a.DESCRIPCION from categoria a inner join subcategoria b on b.CAT_COD=a.CAT_COD ";
            ps = cn.prepareStatement(sql);
            st = ps.executeQuery();
            while (st.next()) {
                sub = new subcategoria(st.getString(1),st.getString(2),st.getString(3),st.getString(4));
                listsub.add(sub);
            }
            ps.close();
            st.close();
        } catch (ClassNotFoundException | SQLException e) {
            throw e;
        } finally {
            cn.close();
        }
        return listsub;
    }

    @Override
    public String create(subcategoria l) throws Exception {
        try {
            cn = conexion.getConnection();
            cs = cn.prepareCall("{call PKG_SECUENCIAL.SP_INSSUB(?,?,?)}");
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
    public String update(subcategoria l) throws Exception {
       try {
            cn = conexion.getConnection();
            cs = cn.prepareCall("{call PKG_SECUENCIAL.SP_UPDCAT(?,?,?)}");
            cs.setString(1, l.getCat_cod());
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
            cs = cn.prepareCall("{call PKG_SECUENCIAL.SP_DELCAT(?,?)}");
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
