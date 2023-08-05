<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryManagement/Library.master"AutoEventWireup="true" CodeFile="viewbook.aspx.cs" Inherits="viewbook" %>

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
    

    <div class="container-fluid w-75 mb-1">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-12 book">
                 <div class="card mt-3">
                    <div class="card-body">
                      <div class="row mb-1">
                            <div class="col-12 text-center">
                                <h4>Book Inventory List</h4>
                                
                            </div>
                          <hr />
                          
                        </div>
                        
                       <div class="row">
                            <div class="col">
                                <asp:GridView runat="server" ID="datagrid" class="table table-striped table-bordered w-auto h-auto"  EmptyDataText="Record not found" AutoGenerateColumns="False">
                                    <Columns>
                                        <asp:BoundField  DataField="book_id" HeaderText="ID" >
                                        <ItemStyle Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:TemplateField ControlStyle-CssClass="">
                                            <ItemTemplate>
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-lg-10 m-0 p-0 grid2">
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <asp:Label runat="server" Font-Bold="true" ID="bname" Font-Size="Larger" Text='<%#Eval("book_name") %>'></asp:Label>
                                                                    <asp:Label  runat="server" Font-Bold="true" Font-Size="Larger" Text='<%#Eval("book_id") %>' ID="bookID" class="d-none"></asp:Label>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-12">
                                                                   <span class="">Author-</span> <asp:Label runat="server" Text='<%#Eval("author_name") %>' Font-Bold="true" Font-Size="Small"></asp:Label> &nbsp;|
                                                                     <span>Genre-</span> <asp:Label runat="server" Text='<%#Eval("genre") %>' Font-Bold="true"  Font-Size="Small"></asp:Label> &nbsp;|

                                                                     <span>Language-</span> <asp:Label runat="server" Text='<%#Eval("language") %>' Font-Bold="true"  Font-Size="Small"></asp:Label> &nbsp;|
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">
                                                                     <span>Publisher-</span> <asp:Label runat="server" Text='<%#Eval("publisher_name") %>' Font-Bold="true"  Font-Size="Small"></asp:Label> &nbsp;|
                                                                     <span>Publish Date-</span> <asp:Label runat="server" Text='<%#Eval("publish_date") %>' Font-Bold="true"  Font-Size="Small"></asp:Label> &nbsp;|
                                                                     <span>Page-</span> <asp:Label runat="server" Text='<%#Eval("no_of_pages") %>' Font-Bold="true"  Font-Size="Small"></asp:Label> &nbsp;|
                                                                     <span>Edition-</span> <asp:Label runat="server" Text='<%#Eval("edition") %>' Font-Bold="true"  Font-Size="Small"></asp:Label> &nbsp;|
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <span>Cost-</span> <asp:Label runat="server" Text='<%#Eval("book_cost") %>' Font-Bold="true"  Font-Size="Small"></asp:Label> &nbsp;|
                                                                    <span>Actual Stock-</span> <asp:Label runat="server" Text='<%#Eval("actual_stock") %>' Font-Bold="true"  Font-Size="Small"></asp:Label> &nbsp;|
                                                                    <span>Available-</span> <asp:Label runat="server" Text='<%#Eval("current_stock") %>' Font-Bold="true"  Font-Size="Small"></asp:Label> &nbsp;|
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <span>Description-</span> <asp:Label runat="server" Text='<%#Eval("book_description") %>' Font-Bold="true"  Font-Size="Smaller" Font-Italic="true"></asp:Label> &nbsp;|
                                                                </div>
                                                            </div>
                                                              <asp:Button runat="server" Text="Request"  ID="req" class="" OnClick="req_Click"/><asp:CheckBox runat="server" ID="check"  class="ms-5 position-relative "/>
                                                        </div>

                                                        <div class="col-lg-2 p-0 m-0">
                                                            <asp:Image runat="server" ImageUrl='<%#Eval("book_img_link") %>'  class=" img-fluid "/>
                                                        </div>

                                                    </div>

                                                </div>
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

