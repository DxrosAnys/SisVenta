/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SisVenta.dao;

import SisVenta.database.conexion;
import SisVenta.modelo.usuario;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Types;
import SisVenta.service.CrudInterface;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Dxros
 */
public class usuarioDao implements CrudInterface<usuario> {

    Connection cn;
    CallableStatement cs;
    String Res;
    usuario cli;
    PreparedStatement ps;
    String sql;
    ResultSet st;
    usuario usu;

    @Override
    public List<usuario> readAll() throws Exception {
       List<usuario> lisusu = new ArrayList<>();
        try {         
            cn = conexion.getConnection();
            sql = "select user_cod, user_nombre, user_apellido, user_nick, user_pass, user_email,user_direccion, user_phone, user_foto,fec_registro, user_dni, user_status from usuario order by user_nombre";
            ps = cn.prepareStatement(sql);
            st = ps.executeQuery();
           while (st.next()) {
                usu = new usuario(st.getString(1),st.getString(2),st.getString(3),st.getString(4),st.getString(5),st.getString(6),st.getString(7),st.getDate(8),st.getString(9),st.getString(10),st.getString(11));
                lisusu.add(usu);
            }
            ps.close();
            st.close();
        } catch (ClassNotFoundException | SQLException e) {
            throw e;
        }finally {
            cn.close();
        }
        return lisusu;
    }

    @Override
    public String create(usuario u) throws ClassNotFoundException, SQLException {
        try {
            cn = conexion.getConnection();
            cs = cn.prepareCall("{call PKG_SECUENCIAL.SP_INSUSU(?,?,?,?,?,?,?,?,?,?,?)}");
            cs.setString(1, u.getNombre());
            cs.setString(2, u.getApellido());
            cs.setString(3, u.getNick());
            cs.setString(4, u.getPass());
            cs.setString(5, u.getEmail());
            cs.setString(6, u.getDireccion());
            cs.setString(7, u.getCelular());
            cs.setString(8, null);
            cs.setString(9, u.getDNI());
            cs.setString(10, "A");
            cs.registerOutParameter(11, Types.VARCHAR);
            cs.execute();
            Res = cs.getString(11);
            cn.close();
            cs.close();
        } catch (ClassNotFoundException | SQLException e) {
            throw e;
        }
        return Res;
    }

    @Override
    public String update(usuario l) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String delete(usuario l) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
