package connexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connexion {

   // private static String login = "root";
    //private static String password = "";
    //private static String url = "jdbc:mysql://localhost/hotel";
    
    private static String login = "y27rsqy9m2kukd7i";
    private static String password = "kayoof9thr2766ki";
    private static String url = "jdbc:mysql://y27rsqy9m2kukd7i:kayoof9thr2766ki@ble5mmo2o5v9oouq.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306/i060easwgwave5ni\r\n"
    		+ "\r\n"
    		+ "";
    private Connection connection = null;
    private static Connexion instane;

    private Connexion() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, login, password);
        } catch (ClassNotFoundException e) {
            System.out.println("Driver introvable");
        } catch (SQLException e) {
            System.out.println("Connexion errror");
            System.out.println(e.getMessage());
        }
    }

    public Connection getConnection() {
        return connection;
    }

    public static Connexion getInstane() {
        if (instane == null) {
            instane = new Connexion();
        }
        return instane;
    }

}
