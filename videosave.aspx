<%@ Page Title="" Language="C#" MasterPageFile="~/sPortal.master" AutoEventWireup="true" CodeFile="videosave.aspx.cs" Inherits="videosave" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <label >ID</label>
    <asp:TextBox runat="server" ID="txtid"></asp:TextBox><br />
    <label>Name</label>
    <asp:TextBox runat="server" ID="txtname" ></asp:TextBox><br />
    <label>video link</label>
    <asp:FileUpload runat="server" ID="file" /><br />
    <label>Type of Video</label><asp:TextBox runat="server" ID="type"></asp:TextBox><br />
    <asp:Button runat="server" ID="btn"  Text="Save Video"  OnClick="btn_Click"/>
</asp:Content>

