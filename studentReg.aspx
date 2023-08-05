<%@ Page Title="" Language="C#" MasterPageFile="~/sPortal.master" AutoEventWireup="true" CodeFile="studentReg.aspx.cs" Inherits="studentReg" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');

/* Reseting */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

body {
    background: linear-gradient(45deg, #ce1e53, #8f00c7);
    min-height: 100vh;
   
}

body::-webkit-scrollbar {
    display: none;
}

.wrapper {
    max-width: 800px;
    margin: 80px auto;
    padding: 30px 45px;
    box-shadow: 5px 25px 35px #3535356b;
  
}

.wrapper .h3{
    font-size:2.5rem;
    padding-bottom: 0.6rem;
    color: #8f00c7;
}
.wrapper label {
    display: block;
    padding-bottom: 0.2rem;
}

.wrapper .form .row {
    padding: 0.6rem 0;
}

.wrapper .form .row .form-control {
    box-shadow: none;
}

.wrapper .form .option {
    position: relative;
    padding-left: 20px;
    cursor: pointer;
}


.wrapper .form .option input {
    opacity: 0;
}

.wrapper .form .checkmark {
    position: absolute;
    top: 1px;
    left: 0;
    height: 20px;
    width: 20px;
    border: 1px solid #bbb;
    border-radius: 50%;
}

.wrapper .form .option input:checked~.checkmark:after {
    display: block;
}

.wrapper .form .option:hover .checkmark {
    background: #f3f3f3;
}

.wrapper .form .option .checkmark:after {
    content: "";
    width: 10px;
    height: 10px;
    display: block;
    background: linear-gradient(45deg, #ce1e53, #8f00c7);
    position: absolute;
    top: 50%;
    left: 50%;
    border-radius: 50%;
    transform: translate(-50%, -50%) scale(0);
    transition: 300ms ease-in-out 0s;
}

.wrapper .form .option input[type="radio"]:checked~.checkmark {
    background: #fff;
    transition: 300ms ease-in-out 0s;
}

.wrapper .form .option input[type="radio"]:checked~.checkmark:after {
    transform: translate(-50%, -50%) scale(1);
}

#sub {
    display: block;
    width: 100%;
    border: 1px solid #ddd;
    padding: 10px;
    border-radius: 5px;
    color: #333;
}

#sub:focus {
    outline: none;
}

@media(max-width: 768.5px) {
    .wrapper {
        margin: 30px;
    }

    .wrapper .form .row {
        padding: 0;
    }
}

@media(max-width: 400px) {
    .wrapper {
        padding: 25px;
        margin: 20px;
    }
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="wrapper rounded bg-white">

        <div class="h3">Registration Form</div>
        <hr />
        <div class="form">
            <div class="row">
                <div class="col-md-6 mt-md-0 mt-3">
                    <label class="fs-4">Enrollment No.</label>
                    <asp:TextBox runat="server" type="text" class="form-control fs-4" ID="txtsid"></asp:TextBox>
                </div>
                <div class="col-md-6 mt-md-0 mt-3">
                    <label class="fs-4">Full Name</label>
                    <asp:TextBox runat="server" ID="txtfname" type="text" class="form-control fs-4"></asp:TextBox>
                </div>
            </div>
              <div class="row">
                <div class="col-md-6 mt-md-0 mt-3">
                    <label class="fs-4">Father Name</label>
                    <asp:TextBox runat="server" type="text" class="form-control fs-4" ID="txtfnm"></asp:TextBox>
                </div>
                <div class="col-md-6 mt-md-0 mt-3">
                    <label class="fs-4">Mother Name</label>
                    <asp:TextBox runat="server" ID="txtmname" type="text" class="form-control fs-4"></asp:TextBox>
                   
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 mt-md-0 mt-3">
                    <label class="fs-4">DOB</label>
                    <asp:TextBox runat="server" ID="dob" class="form-control fs-4"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="dob" Format="dd/MM/yyyy"></asp:CalendarExtender>
                </div>
                <div class="col-md-6 mt-md-0 mt-3">
                    <label for="gender" class="fs-4">Gender</label>  
                    <asp:DropDownList runat="server" ID="cmbgender" class="form-control fs-4">
                           <asp:ListItem>--Select Gender--</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 mt-md-0 mt-3">
                    <label class="fs-4">Phone Number</label>
                   <asp:TextBox runat="server" class="form-control fs-4" ID="txtphn"></asp:TextBox>
                </div>

                <div class="col-lg-6 col-md-6 ">
                    <label class="fs-4">Cast</label>
                    <asp:DropDownList runat="server" id="cmbcast" class="form-control fs-4">
                        <asp:ListItem>Choose Option</asp:ListItem>
                        <asp:ListItem>General</asp:ListItem>
                        <asp:ListItem>OBC</asp:ListItem>
                        <asp:ListItem>SC</asp:ListItem>
                        <asp:ListItem>ST</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <label class="fs-4">Address</label>
                    <asp:TextBox runat="server" class="form-control fs-5" ID="txtaddress" />
                </div>
            </div>
            <div class="my-5">
                <h1 class="text-center" style="color: #8f00c7;">User Crenditals</h1>
                <div class="w-50 mx-auto">
                    <hr/>
                </div>
            </div>
           
            <div class="row mt-2">
                <div class="col-lg-6 col-md-6 col-sm-6 col-12">
                    <label class="fs-4">Email</label>
                    <asp:TextBox runat="server" type="email" ID="txtemail" class="form-control fs-4"></asp:TextBox>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-12">
                    <label class="fs-4">Password</label>
                    <asp:TextBox runat="server" type="password" ID="txtpass" class="form-control fs-4"></asp:TextBox>
                </div>
            </div>
          
            <asp:Button runat="server" Text="Register" ID="register" class="btn btn-primary mt-5" OnClick="register_Click" />
        </div></div>
   


</asp:Content>

