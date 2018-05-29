/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SisVenta.service;

import java.util.List;

/**
 *
 * @author Dxros
 */
public interface CrudInterface <L>{
    List<L> readAll() throws Exception;
    String create(L l) throws Exception;
    String update(L l) throws Exception;
    String delete(String id) throws Exception; 
}
