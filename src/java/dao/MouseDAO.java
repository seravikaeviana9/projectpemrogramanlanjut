package dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import koneksi.Koneksi;
import model.Mouse;

/**
 *
 * @author Timothy
 */
public class MouseDAO {
    public boolean create(Mouse ms){
        Koneksi kon = new Koneksi();
        if(kon.getKon() == null){
            return false;
        }else{
            Statement stmt = null;
            try {
                stmt = kon.getKon().createStatement();
                int tertambah = stmt.executeUpdate("INSERT INTO Mouse (idProduk, namaProduk, MouseType, merek, harga, stok) VALUES('"+ms.getIdProduk()+"', '"+ms.getNamaProduk()+"', '"+ms.getMouseType()+"', '"+ms.getMerek()+"', '"+ms.getHarga()+"', '"+ms.getStok()+"');");                
                stmt.close();
                kon.getKon().close();
                if(tertambah>0){
                    return true;
                }else{
                    return false;
                }
            } catch (SQLException ex) {
                return false;
            }
        }
    }
    public ArrayList<Mouse> read(){
        //membuat objek sembari membuat koneksi
        Koneksi kon = new Koneksi();
        Statement state;
        ResultSet rs;
        //membuat ArrayList untuk menampung objek
        ArrayList<Mouse> listMouse = new ArrayList<>();
        if (kon.getKon() == null){
            return null;
        }else{
            try{
                state = kon.getKon().createStatement();
                rs = state.executeQuery("SELECT * FROM Mouse");
                while(rs.next()){
                    Mouse ms = new Mouse();
                    ms.setIdProduk(rs.getString("idProduk"));
                    ms.setNamaProduk(rs.getString("namaProduk"));
                    ms.setMouseType(rs.getString("keyboardType"));
                    ms.setMerek(rs.getString("merek"));
                    ms.setStok(rs.getInt("stok"));
                    ms.setHarga(rs.getInt("harga"));
                    
                    listMouse.add(ms);
                }
                state.close();
                rs.close();
                kon.getKon().close();
            }catch(SQLException e){
                System.out.println("error bos: " + e);
            }
            return listMouse;
        }
    }
    
    public ArrayList<Mouse> readDetail(String idProduk){
        //membuat objek sembari membuat koneksi
        Koneksi kon = new Koneksi();
        Statement state;
        ResultSet rs;
        //membuat ArrayList untuk menampung objek
        ArrayList<Mouse> listMouse = new ArrayList<>();
        if (kon.getKon() == null){
            return null;
        }else{
            try{
                state = kon.getKon().createStatement();
                rs = state.executeQuery("SELECT * FROM Mouse WHERE idProduk='" +idProduk+ "'");
                while(rs.next()){
                    Mouse ms = new Mouse();
                    ms.setIdProduk(rs.getString("idProduk"));
                    ms.setNamaProduk(rs.getString("namaProduk"));
                    ms.setMouseType(rs.getString("keyboardType"));
                    ms.setMerek(rs.getString("merek"));
                    ms.setHarga(rs.getInt("harga"));
                    ms.setStok(rs.getInt("stok"));
                    
                    listMouse.add(ms);
                }
                state.close();
                rs.close();
                kon.getKon().close();
            }catch(SQLException e){
                System.out.println("error bos: " + e);
            }
            return listMouse;
        }
    }
    
    public boolean update(String idProdukAsli, Mouse ms){
        Koneksi kon = new Koneksi();
        if(kon.getKon() == null){
            return false;
        }else{
            Statement stmt = null;
            try {
                stmt = kon.getKon().createStatement();
                int terubah = stmt.executeUpdate("UPDATE Mouse SET namaProduk='"+ms.getNamaProduk()+"', keyboardType='"+ms.getMouseType()+"', merek='"+ms.getMerek()+"', harga='"+ms.getHarga()+"', stok='"+ms.getStok()+"', idProduk='"+ms.getIdProduk()+"' WHERE idProduk='"+idProdukAsli+"';");                
                stmt.close();
                kon.getKon().close();
                if(terubah>0){
                    return true;
                }else{
                    return false;
                }
            } catch (SQLException ex) {
                return false;
            }
        }
    }
    
    public boolean delete(String idProduk){
        Koneksi kon = new Koneksi();
        if(kon.getKon() == null){
            return false;
        }else{
            Statement stmt = null;
            try {
                stmt = kon.getKon().createStatement();
                int terhapus = stmt.executeUpdate("DELETE FROM Mouse WHERE idProduk='"+idProduk+"';");                
                stmt.close();
                kon.getKon().close();
                if(terhapus>0){
                    return true;
                }else{
                    return false;
                }
            } catch (SQLException ex) {
                return false;
            }
        }
    }
    
}
