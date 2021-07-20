package servlet;

import dao.KeyboardDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Keyboard;

/**
 *
 * @author candra
 */
@WebServlet(name = "Keyboard_CRUD_Servlet", urlPatterns = {"/Keyboard_CRUD_Servlet"})
public class Keyboard_CRUD_Servlet extends HttpServlet {
    //BUAT OBJEK Keyboard GLOBAL
    Keyboard kb = new Keyboard();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            // unboxing data untuk cabang operasi CRUD
            String idProdukAsli = request.getParameter("idProdukAsli");
            if(idProdukAsli != null){
                idProdukAsli = idProdukAsli.trim();
            }
            String idProduk = request.getParameter("idProduk");
            String operasi = request.getParameter("operasi");
            out.println("id Produk : "+idProduk);
            out.println("<br>operasi : "+operasi);
            out.println("<br><p>idProdukAsli: "+idProdukAsli+"</p><br>");
            
           // operasi khusus untuk CRUD- create & update
            if(operasi.equals("create") || operasi.equals("update")){
                 // unboxing data untuk CRUD - Create & Update
                String namaProduk = request.getParameter("namaProduk");
                String keyboardType = request.getParameter("keyboardType");
                String keyboardSwitch = request.getParameter("keyboardSwitch");
                String merek = request.getParameter("merek");
                int harga = Integer.parseInt(request.getParameter("harga"));
                int stok = Integer.parseInt(request.getParameter("stok"));
                //isi field objek dengan nilai hasil uboxing
                kb.setIdProduk(idProduk);
                kb.setNamaProduk(namaProduk);
                kb.setKeyboardType(keyboardType);
                kb.setKeyboardSwitch(keyboardSwitch);
                kb.setMerek(merek);
                kb.setHarga(harga);
                kb.setStok(stok);
            }
            
            //cabang operasi CRUD
            switch(operasi){
                case "create":
                    //CRUD - CREATE
                    out.println("<h1>INSERT DATA</h1>");
                    boolean insert = new KeyboardDAO().create(kb);
                    if(insert){
                        response.sendRedirect("keyboard.jsp");
                    }else{
                        out.println("<h1>Create Data Gagal!</h1>");
                    }
                    break;
                case "update":
                    //CRUD - UPDATE
                    boolean update = new KeyboardDAO().update(idProdukAsli, kb);
                    if(update){
                        response.sendRedirect("keyboard.jsp");
                    }else{
                        //jika gagal akan menampilkan data yang telah diinput
                        out.println("<!DOCTYPE html>");
                        out.println("<html>");
                        out.println("<head>");
                        out.println("<title>Servlet UpdateProdukServlet</title>");            
                        out.println("</head>");
                        out.println("<body>");
                        out.println("<h1>Update Gagal!</h1>");
                        out.println("<p>" + kb.getIdProduk()+ "</p>");
                        out.println("<p>" + kb.getNamaProduk()  + "</p>");
                        out.println("<p>" + kb.getKeyboardType()+ "</p>");
                        out.println("<p>" + kb.getKeyboardSwtich()+ "</p>");
                        out.println("<p>" + kb.getMerek()+ "</p>");
                        out.println("<p>" + kb.getHarga()+ "</p>");
                        out.println("<p>" + kb.getStok()+ "</p>");
                        out.println("</body>");
                        out.println("</html>");
                    }
                    break;
                case "delete":
                    //CRUD - DELTE
                    out.println("<h1>HAPUS DATA</h1>");
                    boolean delete = new KeyboardDAO().delete(idProduk);
                    if(delete){
                        response.sendRedirect("keyboard.jsp");
                    }else{
                        out.println("<h1>HAPUS GAGAL</h1>");
                    }
                    break;
                default:
                    out.println("<h1>ERROR in switch case</h1>");
                    break;
            }
    }
}

    
    
    
    //do post
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
