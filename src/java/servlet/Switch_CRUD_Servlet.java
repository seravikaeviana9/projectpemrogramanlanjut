/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.SwitchDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Switch;

/**
 *
 * @author candra
 */
@WebServlet(name = "Switch_CRUD_Servlet", urlPatterns = {"/Switch_CRUD_Servlet"})
public class Switch_CRUD_Servlet extends HttpServlet {
    //BUAT OBJEK Switch Global
    Switch sw = new Switch();
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
                String switchType = request.getParameter("switchType");
                String forceAction = request.getParameter("forceAction");
                String merek = request.getParameter("merek");
                int harga = Integer.parseInt(request.getParameter("harga"));
                int stok = Integer.parseInt(request.getParameter("stok"));
                //isi field objek dengan nilai hasil uboxing
                sw.setIdProduk(idProduk);
                sw.setNamaProduk(namaProduk);
                sw.setSwitchType(switchType);
                sw.setForceAction(forceAction);
                sw.setMerek(merek);
                sw.setHarga(harga);
                sw.setStok(stok);
            }
            
            //cabang operasi CRUD
            switch(operasi){
                case "create":
                    //CRUD - CREATE
                    out.println("<h1>INSERT DATA</h1>");
                    boolean insert = new SwitchDAO().create(sw);
                    if(insert){
                        response.sendRedirect("switch.jsp");
                    }else{
                        out.println("<h1>Insert Data Gagal!</h1>");
                    }
                    break;
                case "update":
                    //CRUD - UPDATE
                    boolean update = new SwitchDAO().update(idProdukAsli, sw);
                    if(update){
                        response.sendRedirect("switch.jsp");
                    }else{
                        //jika gagal akan menampilkan data yang telah diinput
                        out.println("<!DOCTYPE html>");
                        out.println("<html>");
                        out.println("<head>");
                        out.println("<title>Servlet UpdateProdukServlet</title>");            
                        out.println("</head>");
                        out.println("<body>");
                        out.println("<h1>Update Gagal!</h1>");
                        out.println("<p>" + sw.getIdProduk()+ "</p>");
                        out.println("<p>" + sw.getNamaProduk()  + "</p>");
                        out.println("<p>" + sw.getSwitchType()+ "</p>");
                        out.println("<p>" + sw.getForceAction()+ "</p>");
                        out.println("<p>" + sw.getMerek()+ "</p>");
                        out.println("<p>" + sw.getHarga()+ "</p>");
                        out.println("<p>" + sw.getStok()+ "</p>");
                        out.println("</body>");
                        out.println("</html>");
                    }
                    break;
                case "delete":
                    //CRUD - DELTE
                    out.println("<h1>HAPUS DATA</h1>");
                    boolean delete = new SwitchDAO().delete(idProduk);
                    if(delete){
                        response.sendRedirect("switch.jsp");
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
