<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryManagement/Library.master" AutoEventWireup="true" CodeFile="ulogin.aspx.cs" Inherits="ulogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .mempage{
        
            background-color:aliceblue;
        }
          .book{
              
            margin-top:60px;
            
            
                    
        }
         .card{
            box-shadow: 0.5px 2px 4px 2px #808080;
           
        }
      
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   

   <section class="mempage p-2 ">
    <div class="container w-75">
        <div class="row">
            <div class="col-md-6 book mx-auto col-lg-6 col-md-6  ">
                <div class="card mt-3 ">
                    <div class="card-body">
                        <div class="row">
                            <div class="col text-center">
                                <img src="Imgs/ulogin.png" width="70px" class="img-fluid" />
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col text-center">
                                <h4>Member Login</h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label class="mb-1 fw-bold text-primary">Member ID</label>
                              <div class="form-group">
                               <asp:TextBox runat ="server" ID ="txtmlogin" class="form-control" placeholder="Member ID"></asp:TextBox>
                              </div>
                               <label class="mb-1 fw-bold mt-3 text-primary">Password</label>
                              <div class="form-group">
                               <asp:TextBox type="password" runat ="server" ID ="txtpass" class="form-control" placeholder="Password"></asp:TextBox>
                              </div>

                                 <div class="form-group mt-3">
                               <asp:Button class="btn btn-success w-100 d-block" runat="server" text="Login" ID="login" OnClick="login_Click"  />
                              </div>
                                 <div class="form-group mt-3">
                                <a href="usignup.aspx">
                                    <input class="btn btn-info w-100" id="btnsignup" type="button" value="Sign Up"/>
                                </a>
                              </div>


                            </div>
                             
                        </div>
                    </div>

                </div>

                
                 <a href="homepage.aspx" class="nav-link text-info">>> Back To Home</a>
            </div>
        </div>
    </div>
        </section>
            
       
</asp:Content>

