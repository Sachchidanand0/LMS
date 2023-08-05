<%@ Page Title="" Language="C#" MasterPageFile="~/sPortal.master" AutoEventWireup="true" CodeFile="videolecture.aspx.cs" Inherits="videolecture" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style>
        .showvideo{
            width: 900px;
            height: 490px;
        }

       

        .increase-size{
         
         background:none;
         border:none;
         outline:none;
        font-size:1.7rem !important;
         height:8vh;
         line-height:65px;
         color:#fff;
        
          
        }
        .backcolorlist{
        background-color:#6940DC;
               
        }
        .increase-size1{
         font-weight:600;
         background:none;
         border:none;
         outline:none;
         font-size:16px ;
         height:8vh;
        line-height:60px;
        color:#fff;
          
        }

        .backcolorlist::-webkit-scrollbar{
           display:none;
            

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
  
    <asp:UpdatePanel runat="server">
        <ContentTemplate>

           


    <section class="container-fluid">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-12 backcolorlist" style="overflow:scroll; height:490px;">
                <asp:GridView runat="server" ID="datagrid" class="table table-striped  table-bordered" EmptyDataText="Data not found" AllowPaging="true" PageSize="50"  AutoGenerateColumns="false" OnRowCommand="datagrid_RowCommand"  >
                    <Columns>

                         <asp:TemplateField ControlStyle-CssClass="increase-size1">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="txtcon" Text='<%# Eval("id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                       <asp:TemplateField HeaderText="Course Content" HeaderStyle-CssClass="fs-2 text-white" ControlStyle-CssClass =" increase-size">
                            <ItemTemplate>  <asp:Button ID="btn_Del" runat="server" Text='<%#Eval("name") %>' CommandName="DEL" class=" bg-transparent btn"  CommandArgument="<%# Container.DisplayIndex %>"   />
                                
                                
                            </ItemTemplate>
                            
                        </asp:TemplateField>
                        
                       
                    
                    </Columns>
                </asp:GridView>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-12">
                   <video controls src="<%=vsrc %>" class="showvideo w-100"></video>
              

            </div>
            
        </div>
    </section>
           </ContentTemplate>
    </asp:UpdatePanel> 
</asp:Content>

