<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryManagement/Library.master" AutoEventWireup="true" CodeFile="usignup.aspx.cs" Inherits="usignup" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

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
     
    <asp:UpdatePanel runat="server">
        <ContentTemplate>

    <section class="mempage p-2 ">
    <div class="container mt-1 mb-1">
        <div class="row">
            <div class="col-md-8 mx-auto col-lg-8 col-sm-8 col-12 book">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col text-center">
                                <img src="Imgs/ulogin.png" width="70px" class="img-fluid" />
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col text-center">
                                <h4>User Login</h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                  <label class="mb-1 fw-bold text-dark">Name</label>
                              <div class="form-group">
                               <asp:TextBox type="text" runat ="server" ID ="txtname" class="form-control" placeholder="Name"></asp:TextBox>
                              </div>
                            </div>
                            <div class="col-md-6">
                                  <label class="mb-1 fw-bold text-dark">Date Of Birth</label>
                              <div class="form-group">
                               <asp:TextBox runat ="server" ID ="txtdob" class="form-control" placeholder="Date of Birth"></asp:TextBox>
                                  <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtdob"  Format="dd/MM/yyyy"></asp:CalendarExtender>
                              </div>
                            </div>
                        </div>
                        <div class="row">
                           <div class="col-md-6">
                                <label class="mb-1 fw-bold mt-3 text-dark">Contact No.</label>
                              <div class="form-group">
                               <asp:TextBox type="text" runat ="server" ID ="txtcontact" class="form-control" placeholder="Contact No"></asp:TextBox>
                              </div>
                           </div>
                              <div class="col-md-6">
                                <label class="mb-1 fw-bold mt-3 text-dark">Email ID</label>
                              <div class="form-group">
                               <asp:TextBox type="text" runat ="server" ID ="txtemail" class="form-control" placeholder="Email ID" AutoPostBack="True"  OnTextChanged="txtemail_TextChanged" ></asp:TextBox>
                              </div>
                           </div>
                        </div>
                        <div class="row">
                           <div class="col-md-4">
                                <label class="mb-1 fw-bold mt-3 text-dark">State</label>
                              <div class="form-group">
                               <asp:DropDownList runat="server" CssClass="form-control" ID="cmbstate">
                                   <asp:ListItem>Select</asp:ListItem>
                                   <asp:ListItem>Uttar Pradesh</asp:ListItem>
                                   <asp:ListItem>Delhi</asp:ListItem>
                                   <asp:ListItem>Mumbai</asp:ListItem>
                               </asp:DropDownList>
                              </div>
                           </div>
                              <div class="col-md-4">
                                <label class="mb-1 fw-bold mt-3 text-dark">City</label>
                              <div class="form-group">
                               <asp:TextBox type="text" runat ="server" ID ="txtcity" class="form-control" placeholder="City"></asp:TextBox>
                              </div>
                           </div>
                            <div class="col-md-4">
                                <label class="mb-1 fw-bold mt-3 text-dark">Pincode</label>
                              <div class="form-group">
                               <asp:TextBox type="text" runat ="server" ID ="txtpin" class="form-control" placeholder="Pincode"></asp:TextBox>
                              </div>
                           </div>
                        </div>

                        <div class="row mt-2">
                            <div class="col-md-12">
                                 <label class="mb-1 fw-bold text-dark">Address</label>
                              <div class="form-group">
                               <asp:TextBox runat="server" ID="txtads" class="form-control" TextMode="MultiLine" Rows="2"></asp:TextBox>
                              </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="w-25 mx-auto  mt-4 mb-3">
                                <span class="badge rounded-pill bg-info text-dark">Login Info</span>
                                    </div>
                            </div>
                        </div>

                        <div class="row mt-3">
                            <div class="col-md-6">
                                  <label class="mb-1 fw-bold text-dark">User ID</label>
                              <div class="form-group">
                               <asp:TextBox type="text" ReadOnly="true" runat ="server" ID ="txtuid" class="form-control" placeholder="User ID"></asp:TextBox>
                              </div>
                            </div>
                            <div class="col-md-6">
                                  <label class="mb-1 fw-bold text-dark">Password</label>
                              <div class="form-group">
                               <asp:TextBox type="Password" runat ="server" ID ="txtpass" class="form-control" placeholder="Password" ></asp:TextBox>
                              </div>
                            </div>
                        </div>
                        <div class="row mt-2 mb-1">
                            <div class="col">
                               <div class="form-group mt-3">
                               <asp:Button class="btn btn-success w-100 d-block" runat="server" text="Sign Up" ID="signup" OnClick="signup_Click"  />
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
            
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

