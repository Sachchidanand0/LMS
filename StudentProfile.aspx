<%@ Page Title="" Language="C#" MasterPageFile="~/sPortal.master" AutoEventWireup="true" CodeFile="StudentProfile.aspx.cs" Inherits="StudentProfile" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
    .topone{
        margin:auto;
        width:60vw;
        height:80vh;
        margin-top:75px;
        margin-bottom:10px;
        


    }
    .card{
            box-shadow: 0.5px 2px 4px 2px #808080;
           
        }
    label{
        font-size: 1.7rem;
    }
    .form-control{
        font-size: 1.5rem;
    }
    
</style>    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
                <div class="card topone">
                    <div class="card-body">
                        <div class="row">
                           
                        </div>
                        <div class="row ">
                            <div class="col text-center">
                                <h4 class=" fa-4x">Your Profile</h4>
                            </div>
                        </div>
                          <div class="row">
                            <div class="col">
                                <div class="w-100 mx-auto">
                                    
                                    </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                  <label class="mb-1 fw-bold text-dark">Name</label>
                              <div class="form-group">
                               <asp:TextBox type="text" runat ="server" ID ="txtname" class="form-control" placeholder="Name"></asp:TextBox>
                              </div>
                            </div>
                            <div class="col-md-6">
                                  <label class="mb-1 fw-bold text-dark">Date Of Birth</label>
                              <div class="form-group">
                               <asp:TextBox runat ="server" ID ="txtdob" class="form-control" placeholder="Date Of Birth"></asp:TextBox>
                                  <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtdob" Format="dd/MM/yyyy"></asp:CalendarExtender>
                              </div>
                            </div>
                        </div>
                        <div class="row">
                           <div class="col-md-6">
                                <label class="mb-1 fw-bold mt-3 text-dark">Contact No.</label>
                              <div class="form-group">
                               <asp:TextBox type="text" runat ="server" ID ="txtcontact" class="form-control" placeholder="Contact No"></asp:TextBox>
                              </div>
                           </div>
                              <div class="col-md-6">
                                <label class="mb-1 fw-bold mt-3 text-dark">Email ID</label>
                              <div class="form-group">
                               <asp:TextBox type="text" runat ="server" ID ="txtemail" class="form-control" placeholder="Email ID"></asp:TextBox>
                              </div>
                           </div>
                        </div>
                        <div class="row">
                           <div class="col-md-4">
                                <label class="mb-1 fw-bold mt-3 text-dark">Gender</label>
                              <div class="form-group">
                                                             <asp:TextBox type="text" runat ="server" ID ="gender" class="form-control" placeholder="Gender"></asp:TextBox>
                           </div>
                        </div>
                             <div class="col-md-4">
                                <label class="mb-1 fw-bold mt-3 text-dark">Cast</label>
                              <div class="form-group">
                                                             <asp:TextBox type="text" runat ="server" ID ="cast" class="form-control" placeholder="Cast"></asp:TextBox>
                           </div>
                        </div>
                             <div class="col-md-4">
                                <label class="mb-1 fw-bold mt-3 text-dark">Course</label>
                              <div class="form-group">
                                                             <asp:TextBox type="text" runat ="server" ID ="course" class="form-control" placeholder="Course"></asp:TextBox>
                           </div>
                        </div>

                        <div class="row mt-2">
                            <div class="col-md-12">
                                 <label class="mb-1 fw-bold text-dark">Address</label>
                              <div class="form-group">
                               <asp:TextBox runat="server" ID="txtads" class="form-control" TextMode="MultiLine" Rows="2"></asp:TextBox>
                              </div>
                            </div>
                        </div>
                        <div class="row mt-2 mb-1">
                            <div class="col">
                               <div class="form-group mt-3">
                               <asp:Button class="btn btn-success w-50 mx-auto d-block" runat="server" ID="update" Text="Update" OnClick="update_Click" />
                              </div>
                                </div>
                             
                        </div>
                    </div>

                </div>

           
</asp:Content>

