package SisVenta.database;

import java.sql.Connection;
import java.sql.SQLException;

public class prueba {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        try {
            Connection cn = conexion.getConnection();
            System.out.println("Conexion conforme....");
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Error:" + e.getMessage());
        }

    }
}
