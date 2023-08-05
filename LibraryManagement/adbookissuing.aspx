<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryManagement/Library.master"AutoEventWireup="true" CodeFile="adbookissuing.aspx.cs" Inherits="adbookissuing" %>

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
  

        
    <div class="container-fluid mb-1 ">
        <div class="row">
            <div class="col-lg-5 col-md-12 col-sm-12 col-12 book">
                <div class="card">
                    <div class="card-body">
                     <div class="row mb-1">
                            <div class="col text-center">
                                <h4>Book Issuing</h4>
                            </div>
                        </div>
                           <div class="row">
                            <div class="col text-center">
                                <img src="Imgs/booklogo.png" width="72px" class="img-fluid" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                              <label class="mb-1 fw-bold text-dark">Member ID</label>
                              <div class="form-group">
                               <asp:TextBox type="text" runat ="server" ID ="txtmi" class="form-control" placeholder="Member ID"></asp:TextBox>
                              </div>
                            </div>
                            <div class="col-md-6">
                                  
                                 <label class="mb-1 fw-bold text-dark">Book ID</label>
                              <div class="form-group d-flex">
                               <asp:TextBox type="text" runat ="server" ID ="txtbi" class="form-control" placeholder="Book ID"></asp:TextBox>
                                  <asp:Button runat="server" ID="go" class="btn btn-secondary" Text="Go"  OnClick="go_Click" />
                              </div>
                            </div>
                        </div>

                        <div  class="row mt-3">
                            <div class="col-lg-6 col-md-6">
                                <label class="mb-1 fw-bold">Member Name</label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtmn" placeholder ="Member Name" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <label class="mb-1 fw-bold">Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtbn" placeholder ="Book Name" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div  class="row mt-3">
                            <div class="col-lg-6 col-md-6">
                                <label class="mb-1 fw-bold">Start Date</label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtsd" ></asp:TextBox>
                                    <asp:CalendarExtender ID="CalendarExtender1" TargetControlID="txtsd" Format="dd/MM/yyyy" runat="server"></asp:CalendarExtender>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <label class="mb-1 fw-bold">End Date</label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" class="form-control" ID="txted"></asp:TextBox>
                                    <asp:CalendarExtender ID="CalendarExtender2" TargetControlID="txted" Format="dd/MM/yyyy" runat="server"></asp:CalendarExtender>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row mt-4 mb-1">
                            <div class="col-lg-6 col-md-6">
                               <div class="form-group">
                               <asp:Button class="btn btn-warning  d-block w-100" runat="server" text="Issue" ID="issue"  OnClick="issue_Click" />
                              </div>
                                </div>
                             <div class="col-lg-6 col-md-6">
                               <div class="form-group">
                               <asp:Button class="btn btn-info  d-block w-100" runat="server" text="Return" ID="return" OnClick="return_Click"  />
                              </div>
                                </div>
                           </div>
                        </div>
                    </div>

                
                 <a href="homepage.aspx" class="nav-link text-info">>> Back To Home</a>
            </div>

            <div class="col-lg-7 col-md-12 col-sm-12  col-12 book">
                
                <div class="card">
                    <div class="card-body">
                      <div class="row mb-1">
                            <div class="col text-center">
                                <h4>Issued Book List</h4>
                            </div>
                          <hr />
                        </div>
                        
                        
                          
                                <asp:GridView runat="server" ID="datagrid" class="table table-striped table-bordered w-100"
                                     EmptyDataText="Data not found" OnRowDataBound="datagrid_RowDataBound" AutoGenerateColumns="false">
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
         
</asp:Content>

