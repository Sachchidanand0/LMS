<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryManagement/Library.master" AutoEventWireup="true" CodeFile="author.aspx.cs" Inherits="author" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


   
    <script type="text/javascript">
       $(document).ready(function () {
       

           $(".table").prepend($("<thead> </thead>").append($(this).find("tr:first"))).dataTable();

        }); 
        
    </script>
    <style>
        .author{
            margin-top:69px;
        }
        .card {
            box-shadow: 0.5px 2px 4px 2px #808080;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-5 col-md-5 col-sm-12 author">
                <div class="card mt-3">
                    <div class="card-body">
                     <div class="row">
                            <div class="col text-center">
                                <h4>Author Details</h4>
                            </div>
                        </div>
                           <div class="row">
                            <div class="col text-center">
                                <img src="Imgs/authorlogo.png" width="130px" class="img-fluid" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row mt-2">
                            <div class="col-md-4">
                                  <label class="mb-1 fw-bold text-dark">Author ID</label>
                              <div class="form-group d-flex">
                               <asp:TextBox type="text" runat ="server" ID ="txtai" class="form-control" placeholder="ID"></asp:TextBox>
                                  <asp:Button runat="server" ID="Gobtn" class="btn btn-secondary" Text="Go" />
                              </div>
                            </div>
                            <div class="col-md-8">
                                  <label class="mb-1 fw-bold text-dark">Author Name</label>
                              <div class="form-group">
                               <asp:TextBox type="text" runat ="server" ID ="txtan" class="form-control" placeholder="Author Name"></asp:TextBox>
                              </div>
                            </div>
                        </div>
                        
                        <div class="row mt-4 mb-1">
                            <div class="col-lg-4 col-md-4">
                               <div class="form-group">
                               <asp:Button class="btn btn-success  btn-lg" runat="server" text="Save" ID="save"  OnClick="save_Click" />
                              </div>
                                </div>
                             <div class="col-lg-4 col-md-4">
                               <div class="form-group">
                               <asp:Button class="btn btn-primary  btn-lg" runat="server" text="Update" ID="updte"  OnClick="updte_Click" />
                              </div>
                                </div>
                            <div class="col-lg-4 col-md-4">
                               <div class="form-group">
                               <asp:Button class="btn btn-danger btn-lg" runat="server" text="Delete" ID="del" OnClick="del_Click"  />
                              </div>
                                </div>
                        </div>
                    </div>

                </div>

                
                 <a href="homepage.aspx" class="nav-link text-info">>> Back To Home</a>
            </div>

            <div class="col-lg-7 col-md-7 col-sm-12 col-12 author">
                
                <div class="card mt-3">
                    <div class="card-body">
                      <div class="row mb-1">
                            <div class="col text-center">
                                <h4>Author List</h4>
                            </div>
                        </div>
                        
                        <div class="row">
                            
                            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                                <asp:GridView runat="server" ID="datagrid" class="table table-striped table-bordered  h-auto" AllowPaging="true" AutoGenerateColumns="false" OnPageIndexChanging="datagrid_PageIndexChanging">
                                    <Columns>
                                        <asp:BoundField DataField="Author ID" HeaderText="Author ID" />
                                        <asp:BoundField DataField="Author Name" HeaderText="Author Name"/>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                     </div>

                </div>  
            </div>
        </div>
    </div>
            
</asp:Content>

