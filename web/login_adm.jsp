<%-- 
    Document   : login
    Created on : Dec 4, 2020, 4:59:14 PM
    Author     : Sera Vika Eviana
--%> 

<%
    if(!session.isNew()){
        if(session.getAttribute("Email") != null){
            response.sendRedirect("index.jsp");
        }
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>

    <body style="font-family: sans-serif">
        <table width="80%" height="80%" style="margin-top: 5%; margin-left: auto; margin-right: auto;">
            <tr>
                <td width="40%" style="text-align: center">
                    <br>
                    <br>
                    <br>
                    <img src="images/key.png" width="360px" height="304px">
                    <br>
                    <p style="font-size: 22px; color: #3d3a32">Jual Beli Mudah Hanya di KeyMech</p>
                    <p style="font-size: 14px; color: #787878">Gabung dan rasakan kemudahan bertransaksi di KeyMech</p>
                </td>
                
                <td width="40%" valign="top" style="text-align: center">
                    <form method="POST" action="Login_Admin">
                        <br>
                        <div style="text-align: center">
                        <p style="font-size: 22px; color: #3d3a32; margin-right: 220px"><b>Masuk</b></p>
                        <p style="font-size: 12px; color: #787878; margin-right: 280px">
                        Email</p>
                        
                        <input name="admin" type="text" placeholder="admin" style="width: 300px; height: 40px; 
                        margin-left: auto; margin-right: auto; border: 1px solid #b4b4b4; border-radius: 12px">
                        
                        <p style="font-size: 12px; color: #787878; margin-right: 250px">
                        Kata Sandi</p>
                        
                        <input name="pass" type="password" placeholder="1234" style="width: 300px; height: 40px; 
                        margin-left: auto; margin-right: auto; border: 1px solid #b4b4b4; border-radius: 12px">
                        
                        <p><input type="checkbox" style="border-width: 0.1px; border-radius: 10px; border-color: #8E8F94; width:20px; height: 20px;">
                        <font style="font-size: 12px; color: #b4b4b4; margin-right: 240px">
                        Ingat saya</font>
                        </p>
                        <input type="submit" style="width: 300px; height: 50px; font-size: 14px; color: #ffffff; border: none; 
                               background-color: #00ad2d; border-radius: 12px" value="Masuk">
                        <br>
                        <br>
                        <p style="font-size: 14px; color: #787878; text-align: center; text-decoration: none">
                        Belum punya akun?
                            <a href="#" target="_blank" style="text-decoration: none">
                                <span style="color:#00d85a; font-weight:bold;">Masuk</span>
                            </a>
                        </p>
                    </form>
                </td>
            </tr>
        </table>
    </body>
</html>
