<%@ Page Title="" Language="C#" MasterPageFile="~/sPortal.master" AutoEventWireup="true" CodeFile="videoContent.aspx.cs" Inherits="videoContent" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .video-head{
            background: linear-gradient(45deg, #05abe0 0%, #8200f4 100%);
            border-radius: 3rem;
        }

        .box{
            box-shadow: 1px 1px 10px rgba(0, 0, 0, 0.5);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section class="container-fluid my-5 py-5">
        <div class="container w-100 h-75 mx-auto video-head">
            <h1 class="text-center text-capitalize text-light ps-5 pt-5 pe-5 pb-3" style="font-size:3.7rem; text-shadow: 1px 1px 10px #808080;">Video Lecture</h1>
            <div>
                <hr class="text-light" />
            </div>
            <p class="text-center ps-5 pb-5 pt-3 pe-5 fs-3 text-light">Educational videos have become an important part of higher education, providing an important content-delivery tool in many flipped, blended, and online classes. Effective use of video as an educational tool is enhanced when instructors consider three elements: how to manage cognitive load of the video; how to maximize student engagement with the video; and how to promote active learning from the video.</p>
        </div>
    </section>

    <section class="container my-5 py-5">
        <h1 class="text-center text-capitalize" style="font-size:3.4rem; color:#3D5FE9;">Courses related to computer science</h1>
        <div class="w-75 mx-auto">
            <hr />
        </div>
    </section>

    <section class="container-fluid row my-5 py-5 w-75 mx-auto">
        <div class="col-lg-4 col-md-4 col-sm-4 col-12">
            <div class="card p-5 box" style="width: 25rem;">
  <img src="img/bg-01.jpg" class="card-img-top img-fluid" style="height:170px;" alt="building image">
  <div class="card-body">
    <h1 class="card-title text-center my-4">C Tutorial</h1>
      <div class="w-75 mx-auto">
          <asp:LinkButton runat="server" class=" btn btn-primary fs-2" ID="c" OnClick="c_Click">Enroll</asp:LinkButton>
          </div>
  </div>
</div>
        </div>
         <div class="col-lg-4 col-md-4 col-sm-4 col-12  gx-md-2 gx-sm-2">
            <div class="card p-5 box" style="width: 25rem;">
  <img src="img/bg-01.jpg" class="card-img-top img-fluid" style="height:170px;" alt="building image">
                <div class="card-body">
    <h1 class="card-title text-center my-4">CMD Tutorial</h1>
      <div class="w-75 mx-auto">
          <asp:LinkButton runat="server" class="btn btn-primary fs-2" ID="cmd" OnClick="cmd_Click">Enroll</asp:LinkButton>
          </div>
  </div>
 
</div>
        </div>
         <div class="col-lg-4 col-md-4 col-sm-4 col-12">
            <div class="card p-5 box" style="width: 25rem;">
  <img src="img/bg-01.jpg" class="card-img-top img-fluid" style="height:170px;" alt="building image">
  <div class="card-body">
    <h1 class="card-title text-center my-4">DB Tutorial</h1>
      <div class="w-75 mx-auto">
          <asp:LinkButton runat="server" class="btn btn-primary fs-2" ID="DB" OnClick="DB_Click">Enroll</asp:LinkButton>
          </div>
  </div>
</div>
        </div>
    </section>
      <section class="container-fluid row my-5 py-5 w-75 mx-auto">
        <div class="col-lg-4 col-md-4 col-sm-4 col-12">
            <div class="card p-5 box" style="width: 25rem;">
  <img src="img/bg-01.jpg" class="card-img-top img-fluid" style="height:170px;" alt="building image">
  <div class="card-body">
    <h1 class="card-title text-center my-4">PHP Tutorial</h1>
      <div class="w-75 mx-auto">
          <asp:LinkButton runat="server" class="btn btn-primary fs-2" ID="php" OnClick="php_Click">Enroll</asp:LinkButton>
          </div>
  </div>
</div>
        </div>
         <div class="col-lg-4 col-md-4 col-sm-4 col-12  gx-md-2 gx-sm-2">
            <div class="card p-5 box" style="width: 25rem;">
  <img src="img/bg-01.jpg" class="card-img-top img-fluid" style="height:170px;" alt="building image">
  <div class="card-body">
    <h1 class="card-title text-center my-4">DSA Tutorial</h1>
      <div class="w-75 mx-auto">
          <asp:LinkButton runat="server" class="btn btn-primary fs-2" ID="dsa" OnClick="dsa_Click">Enroll</asp:LinkButton>
          </div>
  </div>
</div>
        </div>
         <div class="col-lg-4 col-md-4 col-sm-4 col-12">
            <div class="card p-5 box" style="width: 25rem;">
  <img src="img/bg-01.jpg" class="card-img-top img-fluid" style="height:170px;" alt="building image">
   <div class="card-body">
    <h1 class="card-title text-center my-4">C++ Tutorial</h1>
      <div class="w-75 mx-auto">
    
          <asp:LinkButton runat="server" class="btn btn-primary fs-2" ID="cplus" OnClick="cplus_Click">C++ Tutorial</asp:LinkButton>
          </div>
  </div>
</div>
        </div>
    </section>
</asp:Content>

