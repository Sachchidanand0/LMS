<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryManagement/Library.master" AutoEventWireup="true" CodeFile="admemManagement.aspx.cs" Inherits="admemManagement" %>

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
            height:100vh;
           
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">     
    <div class="container-fluid  w-auto h-auto mb-1">
        <div class="row">
            <div class="col-lg-6 col-md-12 col-sm-12 col-12 book">
                <div class="card h-auto">
                    <div class="card-body">
                     <div class="row mb-1">
                            <div class="col text-center">
                                <h4>User Details</h4>
                            </div>
                        </div>
                           <div class="row">
                            <div class="col text-center">
                                <img src="Imgs/adminmemlogo.png" width="80px" class="img-fluid" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3 col-md-3">
                                  
                                 <label class="mb-1 fw-bold text-dark">Member ID</label>
                              <div class="form-group d-flex">
                               <asp:TextBox type="text" runat ="server" ID ="txtmi" class="form-control" placeholder="ID"></asp:TextBox>
                                  <asp:Button runat="server" ID="go" class="btn btn-secondary" Text="Go" OnClick="go_Click" />
                              </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                              <label class="mb-1 fw-bold text-dark">Full Name</label>
                              <div class="form-group">
                               <asp:TextBox type="text" runat ="server" ID ="txtfn" class="form-control" placeholder="Name" ReadOnly="true"></asp:TextBox>
                              </div>
                            </div>
                             <div class="col-lg-5 col-md-5">
                                  
                                 <label class="mb-1 fw-bold text-dark">Account Status</label>
                              <div class="form-group d-flex">
                               <asp:TextBox type="text" runat ="server" ID ="txtas" class="form-control" placeholder="Status" ReadOnly="true"></asp:TextBox>
                                  <asp:LinkButton runat="server" ID="active" class="btn btn-success" Text="A" OnClick="active_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                  <asp:LinkButton runat="server" ID="pending" class="btn btn-warning ms-1 me-1" Text="P" OnClick="pending_Click"> <i class="fas fa-pause-circle"></i> </asp:LinkButton>
                                  <asp:LinkButton runat="server" ID="deactivate" class="btn btn-danger" Text="D" OnClick="deactivate_Click"> <i class="fas fa-times-circle"></i></asp:LinkButton>
                              </div>
                            </div>
                            
                        </div>

                        <div  class="row mt-3">
                            <div class="col-lg-4 col-md-4">
                                <label class="mb-1 fw-bold">DOB</label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtdob" ReadOnly="true"></asp:TextBox>
                                    <asp:CalendarExtender ID="CalendarExtender1" TargetControlID="txtdob" Format="dd/MM/yyyy" runat="server"></asp:CalendarExtender>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <label class="mb-1 fw-bold">Contact No.</label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtcn" placeholder ="Contact No." ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <label class="mb-1 fw-bold">Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtemail" placeholder ="Email" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div  class="row mt-3">
                            <div class="col-lg-4 col-md-4">
                                <label class="mb-1 fw-bold">State</label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtstate" placeholder="State" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <label class="mb-1 fw-bold">City</label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtcity" placeholder="City" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <label class="mb-1 fw-bold">Pincode</label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtpin" placeholder="PinCode" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                         <div class="row mt-2">
                            <div class="col-md-12">
                                 <label class="mb-1 fw-bold text-dark">Address</label>
                              <div class="form-group">
                               <asp:TextBox runat="server" ID="txtads" class="form-control" TextMode="MultiLine" Rows="2" ReadOnly="true"></asp:TextBox>
                              </div>
                            </div>
                        </div>
                        
                        <div class="row mt-4 mb-1">
                            <div class="col">
                               <div class="form-group">
                               <asp:Button class="btn btn-danger d-block w-100" runat="server" text="Delete Member" ID="deluser" OnClick="deluser_Click"  />
                              </div>
                                </div>
                           </div>
                        </div>
                    </div>

                
                 <a href="homepage.aspx" class="nav-link text-info">>> Back To Home</a>
            </div>

            <div class="col-lg-6 col-md-12 col-sm-12 col-12 book">
                
               <div class="card">
                    <div class="card-body" style="overflow :scroll;">
                      <div class="row mb-1">
                            <div class=" col text-center">
                                <h4>Member List</h4>
                               <hr />
                            </div>
                        </div>
                        
                        <div>
                                <asp:GridView runat="server" ID="datagrid" class="table table-striped table-bordered w-auto h-auto" AutoGenerateColumns="false" EmptyDataText="Data not found">
                                    <Columns>
                                        
                                        <asp:BoundField DataField="member_id" HeaderText="ID" />
                                        <asp:BoundField DataField="full_name" HeaderText="Name"/>
                                        <asp:BoundField DataField="account_status" HeaderText="Status"/>
                                        <asp:BoundField DataField="contact_no" HeaderText="Contact"/>
                                        <asp:BoundField DataField="email" HeaderText="Email"/>
                                        <asp:BoundField DataField="state" HeaderText="State"/>
                                        <asp:BoundField DataField="city" HeaderText="City"/>
                                            
                                    </Columns>
                                </asp:GridView>
                         </div>
                     </div>

                </div>

                </div>
               
     
            </div>
        </div>
  
</asp:Content>

