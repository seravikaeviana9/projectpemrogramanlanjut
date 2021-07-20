<%-- 
    Document   : keyboard
    Created on : Dec 7, 2020, 6:45:10 PM
    Author     : candra
--%>

<%@page import="dao.KeyboardDAO"%>
<%@page import="model.Keyboard"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
        <style>*{
            font-family: 'Poppins', sans-serif;
            padding-left: 50px;
            padding-right: 50px;
        }</style>
        <title>Keyboard</title>
    </head>
    <body>
        <font class='fs-2' style='font-family: "Bebas Neue", cursive;'>Keyboard</font><br>
        <a class='btn btn-dark' href='index.jsp'>Kembali</a>
        <a class='btn btn-primary' href='Keyboard_CRUD_JSP.jsp?operasi=create'>Tambah Data</a><br><br>
            <table border='1' cellspacing='0' class='table table-dark table-striped'>
            <tr>
                <th>ID Produk</th>
                <th>Nama Produk</th>
                <th>Keyboard Type</th>
                <th>Keyboard Switch</th>
                <th>Merek</th>
                <th>Harga</th>
                <th>Stok</th>
                <th>Action</th>
            </tr>
            <%
                ArrayList<Keyboard> listProduk = new KeyboardDAO().read();
                for (int i = 0; i < listProduk.size(); i++){
            %>
                    <tr>
                        <td> <%= listProduk.get(i).getIdProduk()%> </td>
                        <td> <%= listProduk.get(i).getNamaProduk()%> </td>
                        <td> <%= listProduk.get(i).getKeyboardType()%> </td>
                        <td> <%= listProduk.get(i).getKeyboardSwtich()%> </td>
                        <td> <%= listProduk.get(i).getMerek()%> </td>
                        <td> <%= listProduk.get(i).getHarga()%> </td>
                        <td> <%= listProduk.get(i).getStok()%> </td>
                        <td>
                            <a style='margin-right : 15px;' href='Keyboard_CRUD_JSP.jsp?idProduk=<%= listProduk.get(i).getIdProduk()%>&operasi=update' class='btn btn-warning'>Edit</a>
                            <a href='Keyboard_CRUD_Servlet?idProduk=<%= listProduk.get(i).getIdProduk()%>&operasi=delete' class='btn btn-danger'>Delete</a>
                        </td>
                    </tr>
            <%
                }
            %>       
    </body>
</html>
