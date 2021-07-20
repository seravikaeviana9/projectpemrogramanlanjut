package model;

/**
 *
 * @author candra
 */
public class Keyboard {
    private String idProduk;
    private String namaProduk;
    private String keyboardType;
    private String keyboardSwitch;
    private String merek;
    private int harga;
    private int stok;
    
    public String getIdProduk(){
        return idProduk;
    }
    public void setIdProduk(String idProduk){
        this.idProduk = idProduk;
    }
    
    public String getNamaProduk(){
        return namaProduk;
    }
    public void setNamaProduk(String namaProduk){
        this.namaProduk = namaProduk;
    }
    
    public String getKeyboardType(){
        return keyboardType;
    }
    public void setKeyboardType(String keyboardType){
        this.keyboardType = keyboardType;
    }
    
    public String getKeyboardSwtich(){
        return keyboardSwitch;
    }
    public void setKeyboardSwitch(String keyboardSwitch){
        this.keyboardSwitch = keyboardSwitch;
    }
    
    public String getMerek(){
        return merek;
    }
    public void setMerek(String merek){
        this.merek = merek;
    }
    
    public int getHarga(){
        return harga;
    }
    public void setHarga(int harga){
       this.harga= harga;
    }
   
    public int getStok(){
       return stok;
    }
    public void setStok(int stok){
       this.stok = stok;
    }
}
