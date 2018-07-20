/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SisVenta.dao;
import SisVenta.database.conexion;
import SisVenta.modelo.especificacion;
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
public class especificacionDao implements CrudInterface<especificacion>{

    Connection cn;
    CallableStatement cs;
    PreparedStatement ps;
    String Res;
    String sql;
    ResultSet st;
    especificacion esp;
    
    @Override
    public List<especificacion> readAll() throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    @Override
    public String create(especificacion l) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String update(especificacion l) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String delete(String id) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
     public List<especificacion> Buscar(String id) throws Exception {
         List<especificacion> lismod = new ArrayList<>();
       try {
            cn = conexion.getConnection();
            sql = "select spec_1,spec_2 from especificacion where mod_cod = ?";
            ps = cn.prepareStatement(sql);
            ps.setString(1, id);
            st = ps.executeQuery();
            while (st.next()) {
                esp = new especificacion();
                esp.setSpec1(st.getString(1));
                esp.setSpec2(st.getString(2));
                lismod.add(esp);
            }
            ps.close();
        } catch (SQLException | ClassNotFoundException e) {
            throw e;
        } finally {
            cn.close();
        }
        return lismod;
    }
    
}
