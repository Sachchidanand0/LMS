<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryManagement/Library.master" AutoEventWireup="true" CodeFile="userprofile.aspx.cs" Inherits="userprofile" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script type="text/javascript">


        $(document).ready(function () {


            $(".table").prepend($("<thead> </thead>").append($(this).find("tr:first"))).dataTable();

        });



    </script>

    <style>
          .book{
            margin-top:65px;
           
           
        }
         .card{
            box-shadow: 0.5px 2px 4px 2px #808080;
           
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

      <section class="mempage p-2">
    <div class="container-fluid mb-1 ">
        <div class="row">
            <div class="col-md-6 book">
                <div class="card bg-light">
                    <div class="card-body">
                        <div class="row">
                            <div class="col text-center">
                                <img src="Imgs/ulogin.png" width="70px" class="img-fluid" />
                            </div>
                        </div>
                        <div class="row mt-2 mb-1">
                            <div class="col text-center">
                                <h4>Your Profile</h4>
                            </div>
                        </div>
                          <div class="row">
                            <div class="col">
                                <div class="w-100 mx-auto">
                                    <p class="text-center"> Active Status -
                                <asp:label runat="server" class="badge rounded-pill bg-success text-white" ID="accstatus" Text=""></asp:label></p>
                                    </div>
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
                               <asp:TextBox runat ="server" ID ="txtdob" class="form-control" placeholder="Date Of Birth"></asp:TextBox>
                                  <asp:CalendarExtender ID="CalendarExtender1" TargetControlID="txtdob" Format="dd/MM/yyyy" runat="server"></asp:CalendarExtender>
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
                               <asp:TextBox type="text" runat ="server" ID ="txtemail" class="form-control" placeholder="Email ID"></asp:TextBox>
                              </div>
                           </div>
                        </div>
                        <div class="row">
                           <div class="col-md-4">
                                <label class="mb-1 fw-bold mt-3 text-dark">State</label>
                              <div class="form-group">
                               <asp:DropDownList runat="server" class=" form-control" ID="txtstate" >
                                   <asp:ListItem>Select</asp:ListItem>
                                   <asp:ListItem Value="Uttar Pradesh" Text="Uttar Pradesh"></asp:ListItem>
                                   <asp:ListItem Value="Delhi" Text="Delhi"></asp:ListItem>
                                   <asp:ListItem Value="Mumbai" Text="Mumbai"></asp:ListItem>
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
                            <div class="col-md-4">
                                  <label class="mb-1 fw-bold text-dark">User ID</label>
                              <div class="form-group">
                               <asp:TextBox type="text" runat ="server" ID ="txtuid" class="form-control" placeholder="User ID" ReadOnly="true"></asp:TextBox>
                              </div>
                            </div>
                            <div class="col-md-4">
                                  <label class="mb-1 fw-bold text-dark">Old Password</label>
                              <div class="form-group">
                               <asp:TextBox type="Password" runat ="server" ID ="txtopass" class="form-control" placeholder="Old Password" ReadOnly="true" ></asp:TextBox>
                              </div>
                            </div>
                            <div class="col-md-4">
                                  <label class="mb-1 fw-bold text-dark">New Password</label>
                              <div class="form-group">
                               <asp:TextBox type="Password" runat ="server" ID ="txtnpass" class="form-control" placeholder="New Password" ></asp:TextBox>
                              </div>
                            </div>
                        </div>
                        <div class="row mt-2 mb-1">
                            <div class="col">
                               <div class="form-group mt-3">
                               <asp:Button class="btn btn-success w-50 mx-auto d-block" runat="server" ID="update" Text="Update"  OnClick="update_Click" />
                              </div>
                                </div>
                             
                        </div>
                    </div>

                </div>

                
                 <a href="homepage.aspx" class="nav-link text-info">>> Back To Home</a>
            </div>

            <div class="col-lg-6 col-md-6 col-sm-6 col-12 book">
                
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col text-center">
                                <img src="Imgs/bklogo.png" width="80px" class="img-fluid" />
                            </div>
                        </div>
                        <div class="row mb-1">
                            <div class="col text-center">
                                <h4>Books Issued</h4>
                            </div>
                        </div>
                          <div class="row">
                            <div class="col">
                                <div class="w-25 mx-auto">
                               <asp:label runat="server" class="badge rounded-pill bg-primary text-white" ID="Label1" Text="About book due date"></asp:label>
                                    </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:GridView runat="server" ID="datagrid" class="table table-striped table-bordered" AutoGenerateColumns="false" EmptyDataText="Data not found" OnRowDataBound="datagrid_RowDataBound">
                                    <Columns>
                                        <asp:BoundField  DataField="M-ID" ReadOnly="true" HeaderText="M-ID" />
                                        <asp:BoundField  DataField="Member Name" ReadOnly="true" HeaderText="Member Name" />
                                        <asp:BoundField  DataField="B-ID" ReadOnly="true"  HeaderText="B-ID"/>
                                        <asp:BoundField  DataField="Book Name" ReadOnly="true" HeaderText="Book Name" />
                                        <asp:BoundField  DataField="Issue Date" ReadOnly="true" HeaderText="Issue Date" />
                                        <asp:BoundField  DataField="End Date" ReadOnly="true" HeaderText="End Date" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                     </div>

                </div>

                
               
     
            </div>
        </div>
    </div>
        </section>
      
</asp:Content>

