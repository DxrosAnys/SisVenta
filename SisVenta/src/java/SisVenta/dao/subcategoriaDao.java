/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SisVenta.dao;

import SisVenta.modelo.subcategoria;
import SisVenta.service.CrudInterface;
import java.util.List;

/**
 *
 * @author Dxros
 */
public class subcategoriaDao implements CrudInterface<subcategoria>{

    @Override
    public List<subcategoria> readAll() throws Exception {
<<<<<<< HEAD
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
=======
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
>>>>>>> parent of 312b501... CALCULADO
    }

    @Override
    public String create(subcategoria l) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String update(subcategoria l) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String delete(String id) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
