<%-- 
    Document   : Keyboard_CRUD_JSP
    Created on : Dec 4, 2020, 1:46:26 PM
    Author     : candra
--%>
<%@page import="java.util.List"%>
<%@page import="dao.SwitchDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Switch"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <style>*{
            padding-left: 50px;
            padding-right: 50px;
        }</style>
        <title>Switch</title>
    </head>
    <body>
        <%
            String operasi = request.getParameter("operasi");
            if(operasi.equals("update")){
                String  idProduk = request.getParameter("idProduk");
                ArrayList<Switch> sw = new SwitchDAO().readDetail(idProduk);
         %>
        <form method='POST' action='Switch_CRUD_Servlet'>
            <input type='hidden' name='operasi' value='update'>
            <input type='hidden' name='idProdukAsli' value='<% out.println(sw.get(0).getIdProduk());%>'>
        <table>
            <tr>
                <td> <label for='idProduk'>ID Produk</label> </td>
                <td> <input value='<% out.println(sw.get(0).getIdProduk()); %>' name='idProduk' id='idProduk'> </td>
            </tr>
            
            <tr>
                <td><label for='namaProduk'>Nama Produk </label> </td>
                <td>
                    <input value='<% out.println(sw.get(0).getNamaProduk()); %>' id='namaProduk' name='namaProduk'>
                </td>
            </tr>
            
            <tr>
                <td> <label for='switchType'>Tipe Switch</label> </td>
                <td> 
                    <select name='switchType' id='switchType'>
                        <option value='Linear' <%if(sw.get(0).getSwitchType().equalsIgnoreCase("Linear")) out.print("selected='selected'"); %>>Linear</option>
                        <option value='Tactile' <%if(sw.get(0).getSwitchType().equalsIgnoreCase("Tactile")) out.print("selected='selected'"); %>>Tactile</option>
                        <option value='Clicky' <%if(sw.get(0).getSwitchType().equalsIgnoreCase("Clicky")) out.print("selected='selected'"); %>>Clicky</option>
                    </select>
                </td>
            </tr>
            
            <tr>
                <td> <label for='forceAction'>Force Action</label> </td>
                <td> <input value='<% out.println(sw.get(0).getForceAction()); %>' name='forceAction' id='forceAction'> </td>
            </tr>
            
            <tr>
                <td> <label for='merek'>Merek</label> </td>
                <td> <input value='<% out.println(sw.get(0).getMerek()); %>' name='merek' id='merek'> </td>
            </tr>
            
            <tr>
                <% int harga = sw.get(0).getHarga(); %>
                <td> <label for='harga'>Harga</label> </td>
                <td> <input type='number' name='harga' id='harga' value='<%=harga%>'> </td>
            </tr>
            
            <tr>
                <% int stok = sw.get(0).getStok(); %>
                <td> <label for='stok'>Stok</label> </td>
                <td> <input type='number' name='stok' id='stok' value='<%=stok%>'> </td>
            </tr>
            <tr>
                <td colspan="2" align='right'> <input type='submit' value='update'> </td>
            </tr>
        </table>
        </form>
        <%
            }else if(operasi.equals("create")){
        %>
        <form method='POST' action='Switch_CRUD_Servlet' style='margin-top:20px;'>
            <input type='hidden' name='operasi' value='create'>
            <a  style='margin-left: 50px;'class='btn btn-dark' href='switch.jsp'>Kembali</a>
            <br><br>
        <div class='input-group mb-3'>
        <span class='input-group-text' id='basic-addon1'>ID</span>
        <input name='idProduk' id='idProduk' class='form-control'>
        </div>
        <div class='input-group mb-3'>
        <span class='input-group-text' id='basic-addon1'>Nama</span>
        <input id='namaProduk' name='namaProduk' class='form-control'>
        </div>
        <div class='input-group mb-3'>
        <span class='input-group-text' id='basic-addon1'>Tipe</span>
        <select class='form-select' name='switchType' id='switchType'>
                        <option value='Linear'>Linear</option>
                        <option value='Tactile'>Tactile</option>
                        <option value='Clicky'>Clicky</option>
        </select>
        </div>
        <div class='input-group mb-3'>
        <span class='input-group-text' id='basic-addon1'>Force Action</span>
        <input class='form-control' name='forceAction' id='forceAction'>
        </div>
        <div class='input-group mb-3'>
        <span class='input-group-text' id='basic-addon1'>Merek</span>
        <input class='form-control' name='merek' id='merek'>
         </div>
        <div class='input-group mb-3'>
        <span class='input-group-text' id='basic-addon1'>Harga</span>
        <input class='form-control' type='number' name='harga' id='harga'>
         </div>
        <div class='input-group mb-3'>
        <span class='input-group-text' id='basic-addon1'>Stok</span>
        <input class='form-control' type='number' name='stok' id='stok'>
        </div>
        <td colspan="2" align='right'> <input style='margin-left:50px;'class='btn btn-success' type='submit' value='Insert'>
        </form>
            <%
            }
        %>
                
    </body>
</html>
