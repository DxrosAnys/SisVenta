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
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Types;

/**
 *
 * @author Dxros
 */
public class usuarioDao {

    Connection cn;
    CallableStatement cs;
    String Res;
    usuario cli;

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
            Res=cs.getString(11);
            cn.close();
            cs.close();
        } catch (ClassNotFoundException | SQLException e) {
            throw e;
        }
        return Res;
    }
}
