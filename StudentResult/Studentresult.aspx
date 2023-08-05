<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Studentresult.aspx.cs" Inherits="Studentresult" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Result</title>
       <meta name="viewport" content="width=device-width, initial-scale=1" />
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous" />
  </head>

<body>
    <form id="form1" runat="server">
       
            <h1 class="text-center text-success mt-3">Student Result System</h1>
            <div class="w-50 mx-auto">
                <hr />
             </div>
         <section class="container p-5" style="background-color:aliceblue; border-radius:40px;">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4 col-12 form-group">
                    <asp:Label runat="server">Student ID</asp:Label>
                    <asp:DropDownList runat="server" ID="cmbsid" class="form-control mt-2" OnSelectedIndexChanged="cmbsid_SelectedIndexChanged" AutoPostBack="true">
                      <asp:ListItem>--Select your id--</asp:ListItem>
                    </asp:DropDownList>
                 
                </div>
                   <div class="col-lg-4 col-md-4 col-sm-4 col-12 form-group">
                    <asp:Label runat="server">Student Name</asp:Label>
               <asp:TextBox runat="server" class="form-control mt-2" ID="txtsname"></asp:TextBox>
                </div>
                   <div class="col-lg-4 col-md-4 col-sm-4 col-12 form-group">
                    <asp:Label runat="server">Computer Basic</asp:Label>
                 <asp:TextBox runat="server" class="form-control mt-2" ID="txtcbasic"></asp:TextBox>
                </div>
            </div>
            <div class="row mt-3">
                 <div class="col-lg-4 col-md-4 col-sm-4 col-12 form-group">
                    <asp:Label runat="server">C language</asp:Label>
                 <asp:TextBox runat="server" class="form-control mt-2" ID="txtc"></asp:TextBox>
                </div>
                 <div class="col-lg-4 col-md-4 col-sm-4 col-12 form-group">
                    <asp:Label runat="server">Functional English</asp:Label>
                 <asp:TextBox runat="server" class="form-control mt-2" ID="txtfe"></asp:TextBox>
                </div>
                 <div class="col-lg-4 col-md-4 col-sm-4 col-12 form-group">
                    <asp:Label runat="server">Mathematics</asp:Label>
                 <asp:TextBox runat="server" class="form-control mt-2" ID="txtm"></asp:TextBox>
                </div>
            </div>

            <div class="row mt-4">
                <div class="col-lg-3 col-md-3 col-sm-3 col-12">
                    <asp:Button runat="server" Text="Save" ID="save" class="btn btn-success w-100" OnClick="save_Click" />
                </div>
                 <div class="col-lg-3 col-md-3 col-sm-3 col-12">
                    <asp:Button runat="server" Text="Reset" ID="reset" class="btn btn-danger w-100" OnClick="reset_Click" />
                </div>
            </div>
        </section>

        <section class="container-fluid mt-5">
            <div class="row">
                <div class="col-12">
                    <asp:GridView runat="server" ID="datagrid" class="table table-striped table-bordered w-100" EmptyDataText="Record not found" AllowPaging="true" PageSize="25" AutoGenerateColumns="false" OnRowDataBound="datagrid_RowDataBound" OnRowEditing="datagrid_RowEditing" OnRowUpdating="datagrid_RowUpdating" OnRowCommand="datagrid_RowCommand" OnRowCancelingEdit="datagrid_RowCancelingEdit" >


                           <Columns>
                                  <asp:TemplateField HeaderText="Update / Delete">
                                      <ItemTemplate>
                                            <asp:Button ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" CssClass="btn btn-primary" />  
                             <asp:Button ID="btn_Del" runat="server" Text="Delete" CommandName="DEL" CssClass="btn btn-primary" /> 
                                      </ItemTemplate>
                                      <EditItemTemplate>
                                           <asp:Button ID="btn_Update" runat="server" Text="Update" CommandName="Update" CssClass="btn btn-primary"/>  
                                                                    <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel" CssClass="btn btn-primary"/> 
                                      </EditItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Student ID">
                                      <ItemTemplate>
                                          <asp:Label runat="server" ID="sid" Text='<%# Eval("S_id") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Student Name">
                                      <ItemTemplate>
                                          <asp:Label runat="server" ID="sname" Text='<%#Eval("Student_Name") %>'></asp:Label>
                                      </ItemTemplate>
                                     <EditItemTemplate>
                                          <asp:TextBox runat="server" ID="txtsname" class="uppercase form-control" Text='<%#Eval("Student_Name") %>'></asp:TextBox>

                                     </EditItemTemplate>
                                         
                                     
                                  </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Computer Basic">
                                      <ItemTemplate>
                                          <asp:Label runat="server" ID="cbasic" Text='<%#Eval("Computer_basic") %>'></asp:Label>
                                      </ItemTemplate>
                                     <EditItemTemplate>
                                          <asp:TextBox runat="server" ID="txtcbasic" class="uppercase form-control" Text='<%#Eval("Computer_basic") %>'></asp:TextBox>

                                    
                                     </EditItemTemplate>
                                         
                                     
                                  </asp:TemplateField>
                                <asp:TemplateField HeaderText="C Language">
                                      <ItemTemplate>
                                          <asp:Label runat="server" ID="clang" Text='<%#Eval("c_language") %>'></asp:Label>
                                      </ItemTemplate>
                                     <EditItemTemplate>
                                          <asp:TextBox runat="server" ID="txtc" class="uppercase form-control" Text='<%#Eval("C_language") %>'></asp:TextBox>

                                       
                                     </EditItemTemplate>
                                         
                                     
                                  </asp:TemplateField>
                                <asp:TemplateField HeaderText="English">
                                      <ItemTemplate>
                                          <asp:Label runat="server" ID="fe" Text='<%#Eval("English") %>'></asp:Label>
                                      </ItemTemplate>
                                     <EditItemTemplate>
                                          <asp:TextBox runat="server" ID="txtfe" class="uppercase form-control" Text='<%#Eval("English") %>'></asp:TextBox>

                                         
                                     </EditItemTemplate>
                                         
                                     
                                  </asp:TemplateField>
                                <asp:TemplateField HeaderText="Mathematics">
                                      <ItemTemplate>
                                          <asp:Label runat="server" ID="math" Text='<%#Eval("Mathematics") %>'></asp:Label>
                                      </ItemTemplate>
                                     <EditItemTemplate>
                                          <asp:TextBox runat="server" ID="txtm" class="uppercase form-control" Text='<%#Eval("Mathematics") %>'></asp:TextBox>


                                     </EditItemTemplate>
                                         
                                     
                                  </asp:TemplateField>
                              </Columns>






                    </asp:GridView>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
