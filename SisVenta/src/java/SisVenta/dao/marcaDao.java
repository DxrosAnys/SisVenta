/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SisVenta.dao;
import SisVenta.database.conexion;
import SisVenta.modelo.marca;
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
public class marcaDao implements CrudInterface<marca>{
    Connection cn;
    CallableStatement cs;
    PreparedStatement ps;
    String Res;
    String sql;
    ResultSet st;
    marca mar;
    @Override
    public String create(marca l) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String update(marca l) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String delete(marca l) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<marca> readAll() throws Exception {
       List<marca> listmar = new ArrayList<>();
        try {         
            cn = conexion.getConnection();
            sql = "select mar_cod, mar_descripcion from marca;";
            ps = cn.prepareStatement(sql);
            st = ps.executeQuery();
           while (st.next()) {
                mar = new marca();
                listmar.add(mar);
            }
            ps.close();
            st.close();
        } catch (SQLException e) {
            throw e;
        }finally {
            cn.close();
        }
        return listmar;
    }
    
}
