
<%@page import="dao.MouseDAO"%>
<%@page import="model.Mouse"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mouse</title>
    </head>
    <body>
        <%
            String operasi = request.getParameter("operasi");
            if(operasi.equals("update")){
                String  idProduk = request.getParameter("idProduk");
                ArrayList<Mouse> ms = new MouseDAO().readDetail(idProduk);
         %>
        <form method='POST' action='Mouse_CRUD_Servlet'>
            <input type='hidden' name='operasi' value='update'>
            <input type='hidden' name='idProdukAsli' value='<% out.println(ms.get(0).getIdProduk());%>'>
        <table>
            <tr>
                <td> <label for='idProduk'>ID Produk</label> </td>
                <td> <input value='<% out.println(ms.get(0).getIdProduk()); %>' name='idProduk' id='idProduk'> </td>
            </tr>
            
            <tr>
                <td><label for='namaProduk'>Nama Produk </label> </td>
                <td>
                    <input value='<% out.println(ms.get(0).getNamaProduk()); %>' id='namaProduk' name='namaProduk'>
                </td>
            </tr>
            
            <tr>
                <td> <label for='mouseType'>Mouse Type</label> </td>
                <td> 
                    <select name='mouseType' id='mouseType'>
                        <option value='Full Size (100%)' <%if(ms.get(0).getMouseType().equalsIgnoreCase("Full Size (100%)")) out.print("selected='selected'");%> >Full Size (100%)</option>
                        <option value='Compact (96%)' <%if(ms.get(0).getMouseType().equalsIgnoreCase("Compact (96%)")) out.print("selected='selected'");%> >Compact (96%)</option>
                        <option value='Tenkeyless (TKL)' <%if(ms.get(0).getMouseType().equalsIgnoreCase("Tenkeyless (TKL)")) out.print("selected='selected'");%> >Tenkeyless (TKL)</option>
                        <option value='75% Mouse' <%if(ms.get(0).getMouseType().equalsIgnoreCase("75% Mouse")) out.print("selected='selected'");%> >75% Mouse</option>
                        <option value='65% Mouse' <%if(ms.get(0).getMouseType().equalsIgnoreCase("65% Mouse")) out.print("selected='selected'");%> >65% Mouse</option>
                        <option value='60% Mouse' <%if(ms.get(0).getMouseType().equalsIgnoreCase("60% Mouse")) out.print("selected='selected'");%> >60% Mouse</option>
                        <option value='40% Mouse' <%if(ms.get(0).getMouseType().equalsIgnoreCase("40% Mouse")) out.print("selected='selected'");%> >40% Mouse</option>
                        <option value='NumPad' <%if(ms.get(0).getMouseType().equalsIgnoreCase("NumPad")) out.print("selected='selected'");%> >NumPad</option>
                    </select>
                </td>
            </tr>
            
            <tr>
                <td> <label for='merek'>Merek</label> </td>
                <td> <input value='<% out.println(ms.get(0).getMerek()); %>' name='merek' id='merek'> </td>
            </tr>
            
            <tr>
                <% int harga = ms.get(0).getHarga(); %>
                <td> <label for='harga'>Harga</label> </td>
                <td> <input type='number' name='harga' id='harga' value='<%=harga%>'> </td>
            </tr>
            
            <tr>
                <% int stok = ms.get(0).getStok(); %>
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
        <form method='POST' action='Mouse_CRUD_Servlet'>
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
                <td> <label for='mouseType'>Mouse Type</label> </td>
                <td> 
                    <select name='mouseType' id='mouseType'>
                        <option value='Full Size (100%)'>Full Size (100%)</option>
                        <option value='Compact (96%)'>Compact (96%)</option>
                        <option value='Tenkeyless (TKL)'>Tenkeyless (TKL)</option>
                        <option value='75% Mouse'>75% Mouse</option>
                        <option value='65% Mouse'>65% Mouse</option>
                        <option value='60% Mouse'>60% Mouse</option>
                        <option value='40% Mouse'>40% Mouse</option>
                        <option value='NumPad'>NumPad</option>
                    </select>
                </td>
            </tr>
            
            <tr>
                <td> <label for='mouseSwitch'>Mouse Switch</label> </td>
                <td> <input name='mouseSwitch' id='mouseSwitch'> </td>
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
