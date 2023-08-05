    <%@ Page Title="" Language="C#" MasterPageFile="~/LibraryManagement/Library.master" AutoEventWireup="true" CodeFile="adBookInventory.aspx.cs" Inherits="adBookInventory" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script type="text/javascript">


        $(document).ready(function () {


            $(".table").prepend($("<thead> </thead>").append($(this).find("tr:first"))).dataTable();

        });

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#img').attr('src', e.target.result);

                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
    <style>
       span{
           font-size:15px;
           
           
       }
        .book{
            margin-top:65px;
            
           
        }
         .card{
            box-shadow: 0.5px 2px 4px 2px #808080;
           
        }
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   

     <div class="container-fluid  mb-1">
        <div class="row">
            <div class="col-lg-5 col-md-5 col-sm-12 col-12 book">
                <div class="card bg-light mt-3">
                    <div class="card-body">
                     <div class="row mb-1">
                            <div class="col text-center">
                                <h4>Book Details</h4>
                            </div>
                        </div>
                           <div class="row mb-4">
                            <div class="col text-center">
                                <img   src="book_inventory/booklogo.png" width="85px"  id="img" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col form-group">
                                <asp:FileUpload runat="server" class="form-control"  onchange="readURL(this);" ID="file" />
                            
                                
                            </div>
                        </div>

                        <div class="row mt-3">
                            <div class="col-lg-4 col-md-4">
                                  
                                 <label class="mb-1 fw-bold text-dark">Book ID</label>
                              <div class="form-group d-flex">
                               <asp:TextBox runat ="server" ID ="txtbid" class="form-control" placeholder="ID"></asp:TextBox>
                                  <asp:Button runat="server" ID="go" class="btn btn-secondary" Text="Go" OnClick="go_Click" />
                              </div>
                            </div>
                            <div class="col-lg-8 col-md-8">
                              <label class="mb-1 fw-bold text-dark">Book Name</label>
                              <div class="form-group">
                               <asp:TextBox type="text" runat ="server" ID ="txtbn" class="form-control" placeholder="Book Name"></asp:TextBox>
                              </div>
                            </div>
                             </div>

                        <div  class="row mt-3">
                            <div class="col-lg-4 col-md-4">
                                <label class="mb-1 fw-bold">Language</label>
                                <div class="form-group">
                                  <asp:DropDownList runat="server" class="form-control" ID="txtlan">
                                      <asp:ListItem Value="Hindi" Text="Hindi"></asp:ListItem>
                                      <asp:ListItem Value="English" Text="English"></asp:ListItem>
                                      <asp:ListItem Value="Marathi" Text="Marathi"></asp:ListItem>
                                      <asp:ListItem Value="French" Text="French"></asp:ListItem>
                                      <asp:ListItem Value="German" Text="German"></asp:ListItem>
                                      <asp:ListItem Value="Urdu" Text="Urdu"></asp:ListItem>
                                      
                                  </asp:DropDownList>
                                </div>
                                  <label class="mb-1 fw-bold mt-3">Publisher Name</label>
                                <div class="form-group">
                                  <asp:DropDownList runat="server" class="form-control" ID="txtpn">
                                      <asp:ListItem Value="Publisher 1" Text="Select Publisher"></asp:ListItem>
                                      
                                      
                                  </asp:DropDownList>
                                </div>
                            </div>
                            
                            <div class="col-lg-4 col-md-4">
                                <label class="mb-1 fw-bold">Author Name</label>
                                <div class="form-group">
                                  <asp:DropDownList runat="server" class="form-control" ID="txtan">
                                      <asp:ListItem Value="A1" Text="Select Author"></asp:ListItem>
                                      
                                  </asp:DropDownList>
                                </div>
                                  <label class="mb-1 fw-bold mt-3">Publisher Date</label>
                                <div class="form-group">
                               <asp:TextBox runat="server" class="form-control" ID="txtpd"></asp:TextBox>
                                    <asp:CalendarExtender ID="CalendarExtender1" TargetControlID="txtpd" Format="dd/MM/yyyy" runat="server"></asp:CalendarExtender>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <label class="mb-1 fw-bold">Genre</label>
                                <div class="form-group">
                              <asp:ListBox runat="server" ID="txtgenre" class="form-control" SelectionMode="Multiple" Rows="5">
                                   <asp:ListItem Value="Action" Text="Action"></asp:ListItem>
                                  <asp:ListItem Value="Computers" Text="Computers"></asp:ListItem>
                                   <asp:ListItem Value="Adventure" Text="Adventure"></asp:ListItem>
                                   <asp:ListItem Value="Comic Book" Text="Comic Book"></asp:ListItem>
                                   <asp:ListItem Value="Self Help" Text="Self Help"></asp:ListItem>
                                   <asp:ListItem Value="Movtivation" Text="Motivation"></asp:ListItem>
                                   <asp:ListItem Value="Health Living" Text="Health Living"></asp:ListItem>
                                   <asp:ListItem Value="Wellness" Text="Wellness"></asp:ListItem>
                                   <asp:ListItem Value="Crime" Text="Crime"></asp:ListItem>
                                   <asp:ListItem Value="Drama" Text="Drama"></asp:ListItem>
                                   <asp:ListItem Value="Fantasy" Text="Fantasy"></asp:ListItem>
                                   <asp:ListItem Value="Horror" Text="Horror"></asp:ListItem>
                                   <asp:ListItem Value="Poetry" Text="Poetry"></asp:ListItem>
                                  <asp:ListItem Value="Personal Development" Text="Personal Development"></asp:ListItem>
                                   <asp:ListItem Value="Romance" Text="Romance"></asp:ListItem>
                                   <asp:ListItem Value="Science Fiction" Text="Science Fiction "></asp:ListItem>
                                   <asp:ListItem Value="Suspence" Text="Suspence"></asp:ListItem>
                                   <asp:ListItem Value="Thriller" Text="Thriller"></asp:ListItem>
                                   <asp:ListItem Value="Art" Text="Art"></asp:ListItem>
                                   <asp:ListItem Value="Autobiography" Text="Autobiography"></asp:ListItem>
                                   <asp:ListItem Value="Encyclopedia" Text="Encyclopedia"></asp:ListItem>
                                   <asp:ListItem Value="Health" Text="Health"></asp:ListItem>
                                   <asp:ListItem Value="Hisyory" Text="History"></asp:ListItem>
                                   <asp:ListItem Value="Math" Text="Math"></asp:ListItem>
                                   <asp:ListItem Value="Social Science" Text="Social Science"></asp:ListItem>
                                   <asp:ListItem Value="TextBook" Text="TextBook"></asp:ListItem>
                                   <asp:ListItem Value="Science" Text="Science"></asp:ListItem>
                                   <asp:ListItem Value="Travel" Text="Travel"></asp:ListItem>
                              </asp:ListBox>
                                </div>
                            </div>
                        </div>
                        <div  class="row mt-3">
                            <div class="col-lg-4 col-md-4">
                                <label class="mb-1 fw-bold">Editions</label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" class="form-control" ID="txted" placeholder="Edition" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <label class="mb-1 fw-bold">Book Cost(p. unit)</label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtbc" placeholder="Book Cost"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <label class="mb-1 fw-bold">Pages</label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtpage" placeholder="Pages"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div  class="row mt-3">
                            <div class="col-lg-4 col-md-4">
                                <label class="mb-1 fw-bold">Actual Stock</label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" class="form-control" ID="txtas" placeholder="Actual Stock" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <label class="mb-1 fw-bold">Current Stock</label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtcs" placeholder="Current Stock" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <label class="mb-1 fw-bold">Issued Books</label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtib" placeholder="Issued Book" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                
                        <div class="row mt-3">
                            <div class="col">
                                <label class="fw-bold mb-1">Book Description</label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" class="form-control" ID="txtread" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3 mb-1">
                            <div class="col-lg-4 col-md-4">
                               <div class="form-group">
                               <asp:Button class="btn btn-success w-100" runat="server" text="Add" ID="adduser" OnClick="adduser_Click"  />
                              </div>
                                </div>
                            <div class="col-lg-4 col-md-4">
                               <div class="form-group">
                               <asp:Button class="btn btn-primary w-100" runat="server" text="Update" ID="updte" OnClick="updte_Click"  />
                              </div>
                                </div>
                            <div class="col-lg-4 col-md-4">
                               <div class="form-group">
                               <asp:Button class="btn btn-danger w-100" runat="server" text="Delete" ID="delete"  OnClick="delete_Click" />
                              </div>
                                </div>
                           </div>
                        </div>
                    </div>

                
                 <a href="homepage.aspx" class="nav-link text-info">>> Back To Home</a>
            </div>

            <div class="col-lg-7 col-md-7 col-sm-12 col-12 book">
                
                <div class="card w-auto mt-3">
                    <div class="card-body">
                      <div class="row mb-1">
                            <div class="col text-center">
                                <h4>Book Inventory List</h4>
                                <hr />
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-12" style="overflow:scroll; height:117.5vh;">
                                <asp:GridView runat="server" ID="datagrid" class="table table-striped table-bordered "  EmptyDataText="Record not found" AutoGenerateColumns="False">
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
                                                                    <asp:Label runat="server" Font-Bold="true" Font-Size="Larger" Text='<%#Eval("book_name") %>'></asp:Label>
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

                
               
     
            </div>
        </div>
    </div>
            
        
</asp:Content>

