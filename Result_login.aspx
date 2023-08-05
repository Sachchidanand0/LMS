<%@ Page Title="" Language="C#" MasterPageFile="~/sPortal.master" AutoEventWireup="true" CodeFile="Result_login.aspx.cs" Inherits="Result_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        *{
    padding: 0%;
    margin: 0%;
    box-sizing: border-box;
}

.main{
    width: 100vw;
    height: 100vh;
    background-image:url('img/result.jpg');
    background-size: 100% 110%;
    display: flex;
    justify-content: center;
    align-items: center;

}

.innerdiv{
    width: 40%;
    height: 80%;
    background: black;
    border-radius: 6px;
}
.form{
    text-align: center;
}

/*#btn{
    padding: 10px 30px;
    margin-right:200px;
    font-size: 15px;
    background: aquamarine;
    border-radius: 6px;
    border:2px black solid;
    font-weight: bold;
    transition: all 0.6s ease-in;
}*/

#btn:hover{
    background:linear-gradient(65deg, aquamarine , bisque);
    color:#fff;
}
.box1{
    margin-top: 100px;
}
#fill{
    width: 300px;
    padding: 10px;
    border-radius: 6px;
    border: 2px black solid;
}
#fill1{
    width: 300px;
    padding: 10px;
    border-radius: 6px;
    border: 2px black solid;
}

.label h1{ width: 100%;
    height: 20%;
    background: #FF9C2E;
    text-align: center;
    line-height: 15vh;
    font-size: 40px;
    border-radius: 6px;
}
::placeholder{
    font-weight: bold;
    letter-spacing: 2px;
}

.label img{
    position: relative;
    top: -60px;
    left: 90px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section class="main">
        <div class="innerdiv">
            <div class="label">
                    <h1>User Login</h1>
                <img src="img/manuser.png" width="40px" height="40px"/>
                  
            </div>

             <div class="form">
                <div class="box1">
                   
                    <%--<input type="text" placeholder="Username" id="fill"><br><br>--%>
                    <asp:TextBox runat="server" placeholder="Enter Enrollment No." CssClass="form-control fs-3 w-50 mx-auto" ID="fill"></asp:TextBox><br/><br/>
                    <%--<input type="button" value="Login" id="btn">--%>
                    <asp:Button runat="server" Text="Login" ID="btn" CssClass="btn btn-primary mt-5" OnClick="btn_Click" />
                        
                </div>
                 </div>

           
        </div>
    </section>
</asp:Content>

