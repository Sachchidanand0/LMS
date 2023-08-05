<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryManagement/Library.master" AutoEventWireup="true" CodeFile="request.aspx.cs" Inherits="LibraryManagement_request" %>

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
     <div class="container-fluid w-75 mb-1">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-12 book">
                 <div class="card mt-3">
                    <div class="card-body">
                      <div class="row mb-1">
                            <div class="col-12 text-center">
                                <h4>User Request List</h4>
                                
                            </div>
                          <hr />
                          
                        </div>
                        
                       <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                                <asp:GridView runat="server" ID="datagrid" class="table table-striped table-bordered w-auto h-auto"  EmptyDataText="Record not found" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:TemplateField HeaderText="User_Id">
                                            <ItemTemplate>
                                                <asp:Label runat="server" Text='<%#Eval("u_id") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="User_Name">
                                            <ItemTemplate>
                                                <asp:Label runat="server" Text='<%#Eval("u_name") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Book_Id">
                                            <ItemTemplate>
                                                <asp:Label runat="server" Text='<%#Eval("b_id") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Book_Name">
                                            <ItemTemplate>
                                                <asp:Label runat="server" Text='<%#Eval("b_name") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Issue Date">
                                            <ItemTemplate>
                                                <asp:Label runat="server" Text='<%#Eval("date") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    
                                </asp:GridView>
                            </div>
                        </div>
                     </div>
                    </div>
                <a href="homepage.aspx" class="nav-link text-info">>> Back To Home</a>
                </div>
            </div>
        </div>
</asp:Content>

