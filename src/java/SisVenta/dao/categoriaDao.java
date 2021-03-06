/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SisVenta.dao;

import SisVenta.database.conexion;
import SisVenta.modelo.categoria;
import SisVenta.modelo.graficos;
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
public class categoriaDao implements CrudInterface<categoria> {

    Connection cn;
    CallableStatement cs;
    PreparedStatement ps;
    String Res;
    String sql;
    ResultSet st;
    categoria cat;
    graficos graf;

    @Override
    public List<categoria> readAll() throws Exception {
        List<categoria> listcat = new ArrayList<>();
        try {
            cn = conexion.getConnection();
            sql = "select cat_cod, descripcion from categoria ";
            ps = cn.prepareStatement(sql);
            st = ps.executeQuery();
            while (st.next()) {
                cat = new categoria(st.getString(1), st.getString(2));
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

    public List<graficos> ListBestCategory() {
        List<graficos> lis = new ArrayList();
        try {
            cn = conexion.getConnection();
            String sqls = "select cat_cod, descripcion, count from(\n"
                    + "select d.cat_cod as cat_cod, d.descripcion as descripcion,count(a.mod_cod) as count from modelo a \n"
                    + "inner join categoria_marca b on a.MOD_COD=b.MOD_COD \n"
                    + "inner join subcategoria c on b.SUB_COD=c.SUB_COD  \n"
                    + "right join categoria d on c.CAT_COD=d.CAT_COD\n"
                    + "group by d.cat_cod,d.descripcion order by d.cat_cod) where rownum <=5 ";
            ps = cn.prepareStatement(sqls);
            st = ps.executeQuery();
            //llenar el arraylist con la clase curso
            while (st.next()) {
                graf = new graficos(st.getString(1), st.getString(2), st.getInt(3));
                lis.add(graf);
            }
            ps.close();
            st.close();
        } catch (ClassNotFoundException | SQLException e) {
        } finally {
            try {

                if (cn != null) {
                    cn.close();
                }
            } catch (SQLException e2) {
            }
        }
        return lis;
    }

}
