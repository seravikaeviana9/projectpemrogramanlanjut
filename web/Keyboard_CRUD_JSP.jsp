<%-- 
    Document   : Keyboard_CRUD_JSP
    Created on : Dec 7, 2020, 6:55:48 PM
    Author     : candra
--%>
<%@page import="dao.KeyboardDAO"%>
<%@page import="model.Keyboard"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Keyboard</title>
    </head>
    <body>
        <%
            String operasi = request.getParameter("operasi");
            if(operasi.equals("update")){
                String  idProduk = request.getParameter("idProduk");
                ArrayList<Keyboard> kb = new KeyboardDAO().readDetail(idProduk);
         %>
        <form method='POST' action='Keyboard_CRUD_Servlet'>
            <input type='hidden' name='operasi' value='update'>
            <input type='hidden' name='idProdukAsli' value='<% out.println(kb.get(0).getIdProduk());%>'>
        <table>
            <tr>
                <td> <label for='idProduk'>ID Produk</label> </td>
                <td> <input value='<% out.println(kb.get(0).getIdProduk()); %>' name='idProduk' id='idProduk'> </td>
            </tr>
            
            <tr>
                <td><label for='namaProduk'>Nama Produk </label> </td>
                <td>
                    <input value='<% out.println(kb.get(0).getNamaProduk()); %>' id='namaProduk' name='namaProduk'>
                </td>
            </tr>
            
            <tr>
                <td> <label for='keyboardType'>Keyboard Type</label> </td>
                <td> 
                    <select name='keyboardType' id='keyboardType'>
                        <option value='Full Size (100%)' <%if(kb.get(0).getKeyboardType().equalsIgnoreCase("Full Size (100%)")) out.print("selected='selected'");%> >Full Size (100%)</option>
                        <option value='Compact (96%)' <%if(kb.get(0).getKeyboardType().equalsIgnoreCase("Compact (96%)")) out.print("selected='selected'");%> >Compact (96%)</option>
                        <option value='Tenkeyless (TKL)' <%if(kb.get(0).getKeyboardType().equalsIgnoreCase("Tenkeyless (TKL)")) out.print("selected='selected'");%> >Tenkeyless (TKL)</option>
                        <option value='75% Keyboard' <%if(kb.get(0).getKeyboardType().equalsIgnoreCase("75% Keyboard")) out.print("selected='selected'");%> >75% Keyboard</option>
                        <option value='65% Keyboard' <%if(kb.get(0).getKeyboardType().equalsIgnoreCase("65% Keyboard")) out.print("selected='selected'");%> >65% Keyboard</option>
                        <option value='60% Keyboard' <%if(kb.get(0).getKeyboardType().equalsIgnoreCase("60% Keyboard")) out.print("selected='selected'");%> >60% Keyboard</option>
                        <option value='40% Keyboard' <%if(kb.get(0).getKeyboardType().equalsIgnoreCase("40% Keyboard")) out.print("selected='selected'");%> >40% Keyboard</option>
                        <option value='NumPad' <%if(kb.get(0).getKeyboardType().equalsIgnoreCase("NumPad")) out.print("selected='selected'");%> >NumPad</option>
                    </select>
                </td>
            </tr>
            
            <tr>
                <td> <label for='keyboardSwitch'>Keyboard Switch</label> </td>
                <td> <input value='<% out.println(kb.get(0).getKeyboardSwtich()); %>' name='keyboardSwitch' id='keyboardSwitch'> </td>
            </tr>
            
            <tr>
                <td> <label for='merek'>Merek</label> </td>
                <td> <input value='<% out.println(kb.get(0).getMerek()); %>' name='merek' id='merek'> </td>
            </tr>
            
            <tr>
                <% int harga = kb.get(0).getHarga(); %>
                <td> <label for='harga'>Harga</label> </td>
                <td> <input type='number' name='harga' id='harga' value='<%=harga%>'> </td>
            </tr>
            
            <tr>
                <% int stok = kb.get(0).getStok(); %>
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
        <form method='POST' action='Keyboard_CRUD_Servlet'>
            <input type='hidden' name='operasi' value='create'>
        <table>
            <tr>
                <td> <label for='idProduk'>ID Produk</label> </td>
                <td> <input name='idProduk' id='idProduk'> </td>
            </tr>
            
            <tr>
                <td><label for='namaProduk'>Nama Produk </label> </td>
                <td>
                    <input id='namaProduk' name='namaProduk'>
                </td>
            </tr>
            
            <tr>
                <td> <label for='keyboardType'>Keyboard Type</label> </td>
                <td> 
                    <select name='keyboardType' id='keyboardType'>
                        <option value='Full Size (100%)'>Full Size (100%)</option>
                        <option value='Compact (96%)'>Compact (96%)</option>
                        <option value='Tenkeyless (TKL)'>Tenkeyless (TKL)</option>
                        <option value='75% Keyboard'>75% Keyboard</option>
                        <option value='65% Keyboard'>65% Keyboard</option>
                        <option value='60% Keyboard'>60% Keyboard</option>
                        <option value='40% Keyboard'>40% Keyboard</option>
                        <option value='NumPad'>NumPad</option>
                    </select>
                </td>
            </tr>
            
            <tr>
                <td> <label for='keyboardSwitch'>Keyboard Switch</label> </td>
                <td> <input name='keyboardSwitch' id='keyboardSwitch'> </td>
            </tr>
            
            <tr>
                <td> <label for='merek'>Merek</label> </td>
                <td> <input name='merek' id='merek'> </td>
            </tr>
            
            <tr>
                <td> <label for='harga'>Harga</label> </td>
                <td> <input type='number' name='harga' id='harga'> </td>
            </tr>
            
            <tr>
                <td> <label for='stok'>Stok</label> </td>
                <td> <input type='number' name='stok' id='stok'> </td>
            </tr>
            <tr>
                <td colspan="2" align='right'> <input type='submit' value='Insert'> </td>
            </tr>
        </table>
        </form>
        <%
            }
        %>
                
    </body>
</html>
