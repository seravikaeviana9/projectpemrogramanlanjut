package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import koneksi.Koneksi;
import model.Keyboard;

/**
 *
 * @author candra wijayanto
 */
public class KeyboardDAO {
    public boolean create(Keyboard kb){
        Koneksi kon = new Koneksi();
        if(kon.getKon() == null){
            return false;
        }else{
            Statement stmt = null;
            try {
                stmt = kon.getKon().createStatement();
                int tertambah = stmt.executeUpdate("INSERT INTO Keyboard (idProduk, namaProduk, keyboardType, keyboardSwitch, merek, harga, stok) VALUES('"+kb.getIdProduk()+"', '"+kb.getNamaProduk()+"', '"+kb.getKeyboardType()+"', '"+kb.getKeyboardSwtich()+"', '"+kb.getMerek()+"', '"+kb.getHarga()+"', '"+kb.getStok()+"');");                
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
    public ArrayList<Keyboard> read(){
        //membuat objek sembari membuat koneksi
        Koneksi kon = new Koneksi();
        Statement state;
        ResultSet rs;
        //membuat ArrayList untuk menampung objek
        ArrayList<Keyboard> listKeyboard = new ArrayList<>();
        if (kon.getKon() == null){
            return null;
        }else{
            try{
                state = kon.getKon().createStatement();
                rs = state.executeQuery("SELECT * FROM Keyboard");
                while(rs.next()){
                    Keyboard kb = new Keyboard();
                    kb.setIdProduk(rs.getString("idProduk"));
                    kb.setNamaProduk(rs.getString("namaProduk"));
                    kb.setKeyboardType(rs.getString("keyboardType"));
                    kb.setKeyboardSwitch(rs.getString("keyboardSwitch"));
                    kb.setMerek(rs.getString("merek"));
                    kb.setStok(rs.getInt("stok"));
                    kb.setHarga(rs.getInt("harga"));
                    
                    listKeyboard.add(kb);
                }
                state.close();
                rs.close();
                kon.getKon().close();
            }catch(SQLException e){
                System.out.println("error bos: " + e);
            }
            return listKeyboard;
        }
    }
    
    public ArrayList<Keyboard> readDetail(String idProduk){
        //membuat objek sembari membuat koneksi
        Koneksi kon = new Koneksi();
        Statement state;
        ResultSet rs;
        //membuat ArrayList untuk menampung objek
        ArrayList<Keyboard> listKeyboard = new ArrayList<>();
        if (kon.getKon() == null){
            return null;
        }else{
            try{
                state = kon.getKon().createStatement();
                rs = state.executeQuery("SELECT * FROM Keyboard WHERE idProduk='" +idProduk+ "'");
                while(rs.next()){
                    Keyboard kb = new Keyboard();
                    kb.setIdProduk(rs.getString("idProduk"));
                    kb.setNamaProduk(rs.getString("namaProduk"));
                    kb.setKeyboardType(rs.getString("keyboardType"));
                    kb.setKeyboardSwitch(rs.getString("keyboardSwitch"));
                    kb.setMerek(rs.getString("merek"));
                    kb.setHarga(rs.getInt("harga"));
                    kb.setStok(rs.getInt("stok"));
                    
                    listKeyboard.add(kb);
                }
                state.close();
                rs.close();
                kon.getKon().close();
            }catch(SQLException e){
                System.out.println("error bos: " + e);
            }
            return listKeyboard;
        }
    }
    
    public boolean update(String idProdukAsli, Keyboard kb){
        Koneksi kon = new Koneksi();
        if(kon.getKon() == null){
            return false;
        }else{
            Statement stmt = null;
            try {
                stmt = kon.getKon().createStatement();
                int terubah = stmt.executeUpdate("UPDATE Keyboard SET namaProduk='"+kb.getNamaProduk()+"', keyboardType='"+kb.getKeyboardType()+"', keyboardSwitch='"+kb.getKeyboardSwtich()+"', merek='"+kb.getMerek()+"', harga='"+kb.getHarga()+"', stok='"+kb.getStok()+"', idProduk='"+kb.getIdProduk()+"' WHERE idProduk='"+idProdukAsli+"';");                
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
                int terhapus = stmt.executeUpdate("DELETE FROM Keyboard WHERE idProduk='"+idProduk+"';");                
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
