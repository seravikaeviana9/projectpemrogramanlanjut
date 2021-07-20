package koneksi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Koneksi {
    //memubat parameter variabel
    private final String driver = "com.mysql.jdbc.Driver";
    private final String url = "jdbc:mysql://localhost/test";
    private final String pass = "";
    private final String user="root";
    
    //membuat objek variabel
    private Connection conn;
    
    //melakukan koneksi dalam konstruktor
    public Koneksi(){
        try{
            Class.forName(this.driver);
            conn = DriverManager.getConnection(url, user, pass);
        }catch(ClassNotFoundException | SQLException e){
            conn = null;
        }
    }
    //mengembalikan conn yang merupakan indikasi keberhasilan koneksi DB
    public Connection getKon(){
        return conn;
    }

    
}