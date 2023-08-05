<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryManagement/Library.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .mempage{
            height:80vh;
            background-color:aliceblue;
        }
        .admin{
            margin-top:10vh;
           margin-bottom:-11px;
           
        }
        .card {
             
            box-shadow: 0.5px 2px 4px 2px #808080;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

     <section class="mempage p-2">
    <div class=" container  admin w-75 ">
        <div class="row">
            <div class="col-md-6 mx-auto     col-lg-6 col-sm-6 col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col text-center">
                                <img src="Imgs/alogin1.png" width="100px" class="img-fluid" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-center">
                                <h4>Admin Login</h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label class="mb-1 fw-bold text-primary">Admin ID</label>
                              <div class="form-group">
                               <asp:TextBox runat ="server" ID ="txtid" class="form-control" placeholder="Admin ID"></asp:TextBox>
                              </div>
                               <label class="mb-1 fw-bold mt-2 text-primary">Password</label>
                              <div class="form-group">
                               <asp:TextBox type="password" runat ="server" ID ="txtpass" class="form-control" placeholder="Password"></asp:TextBox>
                              </div>

                                 <div class="form-group mt-3">
                               <asp:Button class="btn btn-success w-100 d-block" runat="server" text="Login" ID="login" OnClick="login_Click"  />
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

