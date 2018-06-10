
package SisVenta.service;

import java.util.List;

public interface CrudInterface <L>{
    List<L> readAll() throws Exception;
    String create(L l) throws Exception;
    String update(L l) throws Exception;
    String delete(String id) throws Exception; 
}
