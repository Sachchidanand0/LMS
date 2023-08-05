<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryManagement/Library.master" AutoEventWireup="true" CodeFile="publisher.aspx.cs" Inherits="publisher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

     <script type="text/javascript">


        $(document).ready(function () {


            $(".table").prepend($("<thead> </thead>").append($(this).find("tr:first"))).dataTable();
        });
        


        

       
       
     </script>
    <style>
       
        .margtop{
            margin-top:65px;
        }
        .card{
            box-shadow: 0.5px 2px 4px 2px #808080;
           
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

        
    <div class=" container-fluid mb-1 ">
        <div class="row">
            <div class="col-lg-5 col-md-5 col-sm-12 col-12 margtop">
                <div class="card w-auto mt-3">
                    <div class="card-body">
                     <div class="row mt-2 mb-1">
                            <div class="col text-center">
                                <h4>Publisher Details</h4>
                            </div>
                        </div>
                           <div class="row">
                            <div class="col text-center">
                                <img src="Imgs/plogo.svg" width="72px" class="img-fluid" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row mt-3">
                            <div class="col-md-4">
                                  <label class="mb-1 fw-bold text-dark">Publisher ID</label>
                              <div class="form-group d-flex">
                               <asp:TextBox type="text" runat ="server" ID ="txtpi" class="form-control" placeholder="ID"></asp:TextBox>
                                  <asp:Button runat="server" ID="Gobtn" class="btn btn-secondary" Text="Go"  OnClick="Gobtn_Click"/>
                              </div>
                            </div>
                            <div class="col-md-8">
                                  <label class="mb-1 fw-bold text-dark">Publisher Name</label>
                              <div class="form-group">
                               <asp:TextBox type="text" runat ="server" ID ="txtpn" class="form-control" placeholder="Publisher Name"></asp:TextBox>
                              </div>
                            </div>
                        </div>
                        
                        <div class="row mt-4 mb-1">
                            <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                               <div class="form-group">
                               <asp:Button class="btn btn-danger btn-lg  d-block w-100" runat="server" text="Save" ID="save" OnClick="save_Click"  />
                              </div>
                                </div>
                             <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                               <div class="form-group">
                               <asp:Button class="btn btn-success btn-lg  d-block w-100" runat="server" text="Update" ID="updte" OnClick="updte_Click"  />
                              </div>
                                </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                               <div class="form-group">
                               <asp:Button class="btn btn-info btn-lg d-block w-100" runat="server" text="Delete" ID="del" OnClick="del_Click"  />
                              </div>
                                </div>
                        </div>
                    </div>

                </div>

                
                 <a href="homepage.aspx" class="nav-link text-info">>> Back To Home</a>
            </div>

            <div class="col-lg-7 col-md-7 col-sm-12 col-12 margtop">
                
                <div class="card mt-3">
                    <div class="card-body">
                      <div class="row mb-1">
                            <div class="col text-center">
                                <h4>Publisher List</h4>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <asp:GridView runat="server" ID="datagrid"  class="table table-striped table-bordered w-100" AutoGenerateColumns="false" EmptyDataText="Record not found">
                                    <Columns>
                                        <asp:BoundField DataField="publisher_id" HeaderText="Publisher ID"  ReadOnly="true"/>
                                        <asp:BoundField DataField="publisher_Name" HeaderText="Publisher Nmae"  ReadOnly="true"/>
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

