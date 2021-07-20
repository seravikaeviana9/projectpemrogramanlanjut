package dao;
/**
 *
 * @author candra wijayanto
 */
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Switch;
import koneksi.Koneksi;

public class SwitchDAO {
    public boolean create(Switch sw){
        Koneksi kon = new Koneksi();
        if(kon.getKon() == null){
            return false;
        }else{
            Statement stmt = null;
            try {
                stmt = kon.getKon().createStatement();
                int tertambah = stmt.executeUpdate("INSERT INTO Switch (idProduk, namaProduk, switchType, forceAction, merek, harga, stok) VALUES('"+sw.getIdProduk()+"', '"+sw.getNamaProduk()+"', '"+sw.getSwitchType()+"', '"+sw.getForceAction()+"', '"+sw.getMerek()+"', '"+sw.getHarga()+"', '"+sw.getStok()+"');");                
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
    
    public ArrayList<Switch> read(){
        //membuat objek sembari membuat koneksi
        Koneksi kon = new Koneksi();
        Statement state;
        ResultSet rs;
        //membuat ArrayList untuk menampung objek
        ArrayList<Switch> listSwitch = new ArrayList<>();
        if (kon.getKon() == null){
            return null;
        }else{
            try{
                state = kon.getKon().createStatement();
                rs = state.executeQuery("SELECT * FROM Switch");
                while(rs.next()){
                    Switch sw = new Switch();
                    sw.setIdProduk(rs.getString("idProduk"));
                    sw.setNamaProduk(rs.getString("namaProduk"));
                    sw.setSwitchType(rs.getString("switchType"));
                    sw.setForceAction(rs.getString("forceAction"));
                    sw.setMerek(rs.getString("merek"));
                    sw.setHarga(rs.getInt("harga"));
                    sw.setStok(rs.getInt("stok"));
                    
                    listSwitch.add(sw);
                }
                state.close();
                rs.close();
                kon.getKon().close();
            }catch(SQLException e){
                System.out.println("error bos: " + e);
            }
            return listSwitch;
        }
    }
    
    public ArrayList<Switch> readDetail(String idProduk){
        //membuat objek sembari membuat koneksi
        Koneksi kon = new Koneksi();
        Statement state;
        ResultSet rs;
        //membuat ArrayList untuk menampung objek
        ArrayList<Switch> listSwitch = new ArrayList<>();
        if (kon.getKon() == null){
            return null;
        }else{
            try{
                state = kon.getKon().createStatement();
                rs = state.executeQuery("SELECT * FROM Switch WHERE idProduk='" +idProduk+ "'");
                while(rs.next()){
                    Switch sw = new Switch();
                    sw.setIdProduk(rs.getString("idProduk"));
                    sw.setNamaProduk(rs.getString("namaProduk"));
                    sw.setSwitchType(rs.getString("switchType"));
                    sw.setForceAction(rs.getString("forceAction"));
                    sw.setMerek(rs.getString("merek"));
                    sw.setHarga(rs.getInt("harga"));
                    sw.setStok(rs.getInt("stok"));
                    
                    listSwitch.add(sw);
                }
                state.close();
                rs.close();
                kon.getKon().close();
            }catch(SQLException e){
                System.out.println("error bos: " + e);
            }
            return listSwitch;
        }
    }
    
    public boolean update(String idProdukAsli, Switch sw){
        Koneksi kon = new Koneksi();
        if(kon.getKon() == null){
            return false;
        }else{
            Statement stmt = null;
            try {
                stmt = kon.getKon().createStatement();
                int terubah = stmt.executeUpdate("UPDATE Switch SET namaProduk='"+sw.getNamaProduk()+"', switchType='"+sw.getSwitchType()+"', forceAction='"+sw.getForceAction()+"', merek='"+sw.getMerek()+"', harga='"+sw.getHarga()+"', stok='"+sw.getStok()+"', idProduk='"+sw.getIdProduk()+"' WHERE idProduk='"+idProdukAsli+"';");                
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
                int terhapus = stmt.executeUpdate("DELETE FROM Switch WHERE idProduk='"+idProduk+"';");                
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
