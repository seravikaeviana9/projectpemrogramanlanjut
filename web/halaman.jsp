<%-- 
    Document   : halaman
    Created on : Dec 7, 2020, 10:44:22 PM
    Author     : Kevin
--%>
<%
    if(session.isNew()){
        session.getAttribute("Email");
    }
    else if(session.getAttribute("Email") == null){
        session.getAttribute("Email");
    }
%>
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

        .btn-shopnow{
            margin-top: 50px;
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
    </style>
  </head>
    <body>
<!-- NAVBAR --> 
<nav class="navbar navbar-expand-md navbar-light fixed-top bg-light">
    <div class="container">
        <a class="navbar-brand" href="halaman.jsp"><img src="images/logo.svg"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link mr-3" href="halaman.jsp"> Home </a>
                </li>
                <li class="nav-item mr-3">
                    <a class="nav-link" href="about.jsp">About </a>
                </li>
                <li class="nav-item mr-3">
                    <a class="nav-link" href="products.jsp">Products </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.jsp">Contact </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Content -->
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <h2> Let's Kick the Old
                Key and Switch to
                Mechanical Keyboard </h2>
            <p  style="margin-top: 50px; line-height: 40px; font-size: 20px;">A mechanical keyboard is a keyboard built with high
                quality, typically spring activated, key switches.
                These key switches vary based on the keyboard’s
                application or user preference  </p>
            <a class="btn btn-shopnow" href="products.jsp"> Shop Now </a>
                                      
        </div>
        <div class="col-md-6">
            <img style="margin-top: 12rem;"src="images/keyboard.svg">
        </div>
    </div>
    <div class="row">
        <div class="col">
            <center>
                <h2> Featured Brands </h2>
                <br>
                <img src="images/brand.svg">
            </center>
        </div>
    </div>
    <div class="row">
        <div class="col-md-5">
            <img class="text-about" src="images/about.svg">
            <h2 class="about"> It's Time to New The Future </h2>
            <p class="p-about"> Mechanical keyboards raise the bar in every way.
                A mechanical keyboard’s switches, framing,
                functionality, type print methods, key construction,
                PCB board, LED lighting (sharpness, brightness,
                adjustability), and a slew of other features are far
                superior compared to traditional rubber dome
                keyboards. Most of these improvements boil down to
                one thing - feel. Mechanical keyboards simply feel
                better than rubber dome keyboards.</p>
        </div>
        <div class="col-md-6">
            <img style="margin-top: 200px; margin-left: 60px; "src="images/bgabout.svg">
        </div> 
    </div>

    <div class="row">
        
        <div class="col">
            <center>
            <img class="text-products" src="images/products.svg">
            <h2 class="about"> Keyboard Products </h2>
            <p> New Arrived Products </p>
            </center>
        </div>
        
    </div>
    <div class="row">
        <%
            int batas = 8;
            ArrayList<Switch> listProduk = new SwitchDAO().read();
            for (int i = 0; i < listProduk.size(); i++){
                if(i == 8){
                    break;
                }
        %>
        <div class="col-md-3">
            <div class="card mt-5">
                <div class="card-body">
                    <br>
                    <h5 class="card-title"><%= listProduk.get(i).getNamaProduk()%> </h5>
                    <p class="card-text"> Rp <%= listProduk.get(i).getHarga()%> </p>
                    <a href="detailproducts.jsp?idProduk=<%= listProduk.get(i).getIdProduk()%>" class="btn btn-detail-product">Detail Product</a>
              </div>
            </div>
        </div>
        <%
            }
        %>
    </div>

    <div class="row">
        <div class="col">
            <center>
            <a href="products.jsp" class="btn btn-shopnow">Products</a>
            </center>
        </div>
    </div>

    <div class="row">
        <div class="col-md-5">
            <img class="text-contact"src="images/contacts.svg">
            <h2 class="about"> Get in Touch With Us </h2>
            <p class="p-contact">KM as always free to answer if you have any questions. so don't hesitate to ask us. Ok?</p>
            <form>
                <div class="form-group">
                     <label for="exampleInputEmail1"><b>Name :</b></label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter name">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1"><b>E-mail :</b></label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter e-mail">
                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea1"><b>Message : </b></label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Enter message"></textarea>
                </div>
                <input type="submit" value="Send Message" class="btn btn-shopnow">
            </form>
        </div>
        <div class="col-md-6">
            <img style="margin-top: 150px; margin-left: 80px;" src="images/bgContact.png">
        </div>
    </div>
    <br>
    <hr style="border-top: 1px solid #0D82FF;">
    <br>
    <div class="row">
        <div class="col-md-5 ml-5">
            <img src="images/call.svg" style="margin-right: 15px;"> <b> 0821 7999 8999 </b>
            <br><br>
            <img src="images/gmail.svg" style="margin-right: 15px;"> <b> KeyMech@gmail.com </b>
        </div>
        <div class="col-md-6 ml-4">
            <div style="width: 500px; max-height: 50px; color: black;">
                <a class="nav-link links" href="halaman.jsp"> Home </a>
                <a class="nav-link links" href="about.jsp">About </a>
                <a class="nav-link links" href="products.jsp">Products </a>
                <a class="nav-link links" href="#">Contact </a>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col"  style="
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