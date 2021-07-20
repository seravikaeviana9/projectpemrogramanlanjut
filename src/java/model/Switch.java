package model;

public class Switch {
    private String idProduk;
    private String namaProduk;
    private String switchType;
    private String forceAction;
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
   
    public String getSwitchType(){
        return switchType;
    }
    public void setSwitchType(String switchType){
        this.switchType = switchType;
    }
    
    public String getForceAction(){
        return forceAction;
    }
    public void setForceAction(String forceAction){
        this.forceAction = forceAction;
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
        this.harga = harga;
    }
    
    public int getStok(){
        return stok;
    }
    public void setStok(int stok){
        this.stok = stok;
    }
}
