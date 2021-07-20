<%-- 
    Document   : halaman
    Created on : Dec 7, 2020, 10:44:22 PM
    Author     : Kevin
--%>
<%@page import="java.util.List"%>
<%@page import="dao.SwitchDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Switch"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">

    <title>Toko Keyboard</title>
    <style>
        .navbar{
            background-color: white !important;
            box-shadow: 0px 5px 10px #efefef;
        }
        *{
            font-family: 'Poppins', sans-serif;
        }
        ul {
            font-weight: bold;
         }
        h2{
            margin-top: 175px;
            font-weight: bold;
            font-size: 40px;
            line-height: 4.2rem;
        }
        .text-about{
            margin-top : 150px;
        }
        .about{
            margin-top: 20px;
            font-weight: bold;
            font-size: 40px;
            line-height: 4.2rem;
        }
        .p-about{
            margin-top: 50px;
            line-height: 40px;
            font-size: 20px;
        }


        .text-products{
            margin-top : 150px;
        }
        .products{
            margin-top: 20px;
            font-weight: bold;
            font-size: 40px;
            line-height: 4.2rem;
        }
        .p-products{
            margin-top: 50px;
            line-height: 40px;
            font-size: 20px;
        }


        .text-contact{
            margin-top : 150px;
        }
        .contact{
            margin-top: 20px;
            font-weight: bold;
            font-size: 40px;
            line-height: 4.2rem;
        }
        .p-contact{
            margin-top: 50px;
            line-height: 40px;
            font-size: 20px;
        }



        .card{
            padding: 10px;
            border: none;
            box-shadow: 5px 5px 30px #EBEBEB;
        }

        .card-title{
            font-weight: bold;
            font-size: 22px;
        }

        .card-text{
            font-size: 22px;
            color: red;
        }
        .btn-detail-product{
            font-weight: bold;
            font-size: 20px;
            background: linear-gradient(to right, #81E1FF 0%, #0077FF 75%);
            width: 195px;
            height: 45px;
            border: none;
            border-radius: 5px;
            color: white;
        }

        .btn-buy{
            float: right;
            font-weight: bold;
            font-size: 20px;
            background: linear-gradient(to right, #FF5678 0%, #FF9B43 75%);
            width: 165px;
            height: 45px;
            border: none;
            border-radius: 5px;
            color: white;
        }

        .btn-shopnow{
            margin-top: 20px;
            font-weight: bold;
            font-size: 20px;
            background: linear-gradient(to right, #FF5678 0%, #FF9B43 75%);
            width: 185px;
            height: 45px;
            border: none;
            border-radius: 5px;
            color: white;
        }

        div a.links{
            color: black;
            display: inline-block;
            height: 50px;
        }

        div a.links:hover{
            color: #FF9B43;
        }
        
        .text-detail{
            font-size: 20px;
            padding: 1rem;
        }
        
    </style>
  </head>
    <body>
     <%
                String idProduk = request.getParameter("idProduk");
                ArrayList<Switch> sw = new SwitchDAO().readDetail(idProduk);
         %>
<!-- NAVBAR --> 
<nav class="navbar navbar-expand-md navbar-light fixed-top bg-light">
    <div class="container">
        <a class="navbar-brand" href="halaman.jsp"><img src="images/logo.svg"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link mr-3" href="halaman.jsp"> Home </a>
                </li>
                <li class="nav-item mr-3">
                    <a class="nav-link" href="#">About </a>
                </li>
                <li class="nav-item mr-3">
                    <a class="nav-link" href="products.jsp">Products </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Content -->
<div class="container">
    <div class="row">
        <div class="col">
            <center>
            <img class="text-products" src="images/products.svg">
            <h2 class="about"> Keyboard Products </h2>
            </center>
        </div>
    </div>
    <div style="margin: 50px auto; width: 700px; height: 500px; box-shadow: 0px 0px 30px #EBEBEB; padding: 40px;">
        <div style="margin: auto;">
            <table>
                <tr>
                    <td class="card-title">
                        Nama Produk :
                    </td>  
                    <td class="text-detail">
                        <% out.println(sw.get(0).getNamaProduk()); %>
                    </td>    
                </tr>
                <tr>
                    <td class="card-title"> 
                        Tipe Switch :
                    </td>
                    <td class="text-detail">
                        <% out.println(sw.get(0).getSwitchType()); %>
                    </td>
                </tr>
                <tr>
                    <td class="card-title">
                        Merk Switch :
                    </td> 
                    <td class="text-detail">
                        <% out.println(sw.get(0).getMerek()); %>
                    </td>    
                </tr>
                <tr>
                    <td class="card-title">
                        Kedalaman Klik :
                    </td>  
                    <td class="text-detail">
                        <% out.println(sw.get(0).getForceAction()); %>
                    </td>    
                </tr>
                <tr>
                    <td class="card-title">
                        Harga :
                    </td>  
                    <td class="text-detail">
                        <% out.println(sw.get(0).getHarga()); %>
                    </td>    
                </tr>
                <tr>
                    <td class="card-title">
                        Sisa Stok :
                    </td>  
                    <td class="text-detail">
                        <% out.println(sw.get(0).getStok()); %>
                    </td>    
                </tr>
            </table>
                    <a class="btn btn-buy" href="https://wa.me/6282170749981?text=Saya%20ingin%20membeli%20produk%20<% out.println(sw.get(0).getNamaProduk()); %>,%20Apakah%20masih%20ada?"> Buy Now </a>
        </div>
        
        
        
        
        
        
    </div>
    <div class="row">
        <div class="col"  style="
                position: fixed;
                padding: 20px;
                left: 0;
                bottom: 0;
                width: 100%;
                text-align: center;">
            <center>
                &copy; 2020 KeyMech All Right Reserved.
            </center>
        </div>
    </div>
    <br>
    <br>
   

        



















    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </body>
</html>