package Clases;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

public class Conexion {
    Connection conectar = null;
    private static final String driver = "com.mysql.cj.jdbc.Driver";
    private static final String user = "root";
    private static final String password = "";
    private static final String url = "jdbc:mysql://localhost:3306/prestamo_bancario";   

    public Connection conexion() {
        try {
            Class.forName(driver);
            conectar = DriverManager.getConnection(url, user, password);
            System.out.println("Conexion Establecida");
            //JOptionPane.showMessageDialog(null,"Conexion Establecida");
        } catch (Exception e){
            JOptionPane.showMessageDialog(null,"ERROR: "+e);
        }
        
        return conectar;
    }
}