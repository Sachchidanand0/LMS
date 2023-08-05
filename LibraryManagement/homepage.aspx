<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryManagement/Library.master" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <style>
       .home-section{
           width:100vw;
           height:100vh;
           background-image:url('Imgs/g21.jpg');
           background-position:center;
           background-size:cover;
           background-repeat: no-repeat;
           background-attachment:fixed;
       }
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   

   <section class="home-section">
     
    </section>

    <section class=" container-fluid feature-section">
        <div class="text-center">
                <h1 class="text-center fs-1 mt-3  fw-light">Our Features</h1>
            <hr class=" w-25 mx-auto" />
             </div>
            <div class="container ">
                <div class="row">
                    <div class="col-md-4">
                        <div class="text-center">
                        <img src="Imgs/lapbook.png" width="150px" class="img-fluid" />
                        <h4>Digital Book Inventory</h4>
                        <p>An inventory is the one method that libraries and archives use to determine whether some items in their collection are in need of preservation or conservation activities.</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="text-center">
                            <img src="Imgs/bk2.png" width="150px" class="img-fluid" />
                        <h4 class="mt-2"> Book Search Inventory</h4>
                        <p>Since 1997, BookFinder has made it easy to find any book at the best price. Whether you want the cheapest reading copy or a specific collectible edition, </p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="text-center">
                            <img src="Imgs/bk1.png" width="180px" class="img-fluid" />
                        <h4>Author Inventory</h4>
                        <p>Borrowing constraints are determined endogenously by the borrowers' incentives to repay, assuming that defaulters lose a share of output</p>
                        </div>
                    </div>
                </div>
            </div>
       </section>

    <section>
        <div class="position-relative">
            <img src="Imgs/lib2.jpg" class="img-fluid secondlib" />
            <h1 class="position-absolute start-50 top-50 translate-middle pok">Place Of Knowledge</h1>
        </div>
    </section>
    <section class=" container-fluid feature-section">
        <div class="text-center">
                <h1 class="text-center fs-1 mt-3 fw-light">Our Process</h1>
            <hr class=" w-25 mx-auto" />
             </div>
            <div class="container ">
                <div class="row">
                    <div class="col-md-4">
                        <div class="text-center">
                        <img src="Imgs/lapbook.png" width="150px" class="img-fluid" />
                        <h4>Sign Up</h4>
                        <p>An inventory is the one method that libraries and archives use to determine whether some items in their collection are in need of preservation or conservation activities.</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="text-center">
                            <img src="Imgs/bk2.png" width="150px" class="img-fluid" />
                        <h4 class="mt-2">Search Books</h4>
                        <p>Since 1997, BookFinder has made it easy to find any book at the best price. Whether you want the cheapest reading copy or a specific collectible edition, </p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="text-center">
                            <img src="Imgs/booklogo.png" width="110px" class="img-fluid" />
                        <h4 class="mt-1">Visit Us</h4>
                        <p>Borrowing constraints are determined endogenously by the borrowers' incentives to repay, assuming that defaulters lose a share of output</p>
                        </div>
                    </div>
                </div>
            </div>
       </section>
            
        
</asp:Content>

