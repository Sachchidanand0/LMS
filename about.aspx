<%@ Page Title="" Language="C#" MasterPageFile="~/sPortal.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style>
        /* About us Page Start*/

.about-header {
    width: 100%;
    min-width: fit-content;
    height: 80vh;
    min-height: fit-content;
    background-image: linear-gradient(-135deg, #fae37d, #881da8, #20668f);
    margin-top: -1.3rem;
}

.about-div {

    border-radius: 0.5rem;
    box-shadow: 1px 1px 15px 3px #424040;

}

.left-content {
    padding: 5rem;
   
}

.left-content h1{
    
    margin-bottom: 1.5rem;
}

.left-content p{
    text-align: justify;
}

.about-content {
    text-align: justify;
    font-size: 2rem;
    font-weight: normal;
    letter-spacing: 1px;
}

.row-content{
   box-shadow: 1px 1px 20px 3px #6d6d6d;
   border-radius: 1rem;
}


/* about card */

.attribution {
    font-size: 11px;
    text-align: center;
}

    .attribution a {
        color: hsl(228, 45%, 44%);
    }

h1:first-of-type {
    font-weight: var(--weight1);
    color: var(--varyDarkBlue);
}

h1:last-of-type {
    color: var(--varyDarkBlue);
}

@media (max-width: 400px) {
    h1 {
        font-size: 1.5rem;
    }
}

.header {
    text-align: center;
    line-height: 0.8;
    margin-bottom: 50px;
    margin-top: 100px;
}

    .header p {
        margin: 0 auto;
        line-height: 2;
        color: var(--grayishBlue);
    }


.box p {
    color: var(--grayishBlue);
}

.box {
    border-radius: 5px;
    box-shadow: 0px 30px 40px -20px var(--grayishBlue);
    padding: 30px;
    margin: 20px;
}

img {
    float: right;
}

@media (max-width: 450px) {
    .box {
        height: 200px;
    }
}

@media (max-width: 950px) and (min-width: 450px) {
    .box {
        text-align: center;
        height: 180px;
    }
}

.cyan {
    border-top: 3px solid var(--cyan);
}

.red {
    border-top: 3px solid var(--red);
}

.blue {
    border-top: 3px solid var(--blue);
}

.orange {
    border-top: 3px solid var(--orange);
}

h2 {
    color: var(--varyDarkBlue);
    font-weight: var(--weight3);
}


@media (min-width: 950px) {
    .row1-container {
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .row2-container {
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .box-down {
        position: relative;
        top: 150px;
    }

    .box {
        width: 20%;
    }

    .header p {
        width: 30%;
    }
}
/* About us Page End*/
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!-- About us page -->
    <!-- Header start -->
    <header class="about-header  mb-5">
        <div style="padding-top: 2.7rem;">
     <div class="container about-div bg-light">
         <div class="row">
             <div class=" col-lg-6 col-md-6 col-sm-6 col-12 left-content">
                 <h1 class="text-capitalize display-1" style="color:darkorchid;">about us</h1>
                 <p class="text-muted fs-3">We S-Portal as a LMS ( Learning Management System ) to be more precise  is a team of final year students who know the problem of no intraction between the different batches of the same batch , and the problems faced during the lockdown of not getting exact study materials and exam resources.Thus we as S-Portal aim to create a Learning management platform with a use-friendly interface and responsive design to not just help our juniors with providing them all the study materials and resources on just a tap of their fingers but also automating our department.</p>
             </div>
                <div class=" col-lg-6 col-md-6 col-sm-6 col-12 right-content">
                  <img src="img/hero-img.png" alt="About page" class="img-fluid" />
             </div>
         </div>
     </div>
            </div>
    </header>

    <!-- header end -->

    <!-- about content start -->
    <section class=" sec">
        <div class="container">
            <div class="row row-content p-5">
                <div class="col-lg-6 col-md-6 col-sm-6 col-12">
                  <img src="img/about-img2.png" alt="about content image" class="img-fluid" />
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-12 right-content">
                    <h1 class="text-capitalize display-3 mt-5">what we have...</h1>
                    <p class="about-content text-muted mt-5 "> S-Portal is aggregate approach E-learning by providing free content  and resources to students and also aiding the whole tracking and managing processes of students. With a user-friendly and responsive UI we have all the possible needs of students, we have built our S-Portal with every possible feature for a hassle-free studying and initiating a step of automating our department. </p>
                </div>
            </div>
        </div>
    </section>
        <section class=" sec">
        <div class="container">
            <div class="row row-content p-5">
                <div class="col-lg-6 col-md-6 col-sm-6 col-12 right-content">
                    <h1 class="text-capitalize display-3 mt-5">what we do...</h1>
                    <p class="about-content text-muted mt-5 "> We provide all the study materials and resources to make it easy for students to prepare for exams. Study materials like E-books , notes , viva questions , video lectures and past year questions papers .We have also linked several major sites that aids students understanding the concepts in detail.
We have also provided features like result declaration and library management system to help in automating our department.
 </p>
                </div>
                 <div class="col-lg-6 col-md-6 col-sm-6 col-12">
                  <img src="img/about-img3.png" alt="about content image" class="img-fluid mt-5" />
                </div>
            </div>
        </div>
    </section>
        <section class=" sec">
        <div class="container">
            <div class="row row-content p-5">
                <div class="col-lg-6 col-md-6 col-sm-6 col-12">
                  <img src="img/about-img4.png" alt="about content image" class="img-fluid" />
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-12 right-content">
                    <h1 class="text-capitalize display-3 mt-5">how it works...</h1>
                    <p class="about-content text-muted mt-5 "> With data uploading , downloading , tracking and Library management system  , S-Portal is an auto-managing  web application that helps in providing e-content to students and a management system to the faculty of department leading our department to digitialise.  </p>
                </div>
            </div>
        </div>
    </section>

    <!-- about content end -->

    <!-- about card start -->

<section class="sec">
     <div class="row1-container">
        <div class="box box-down cyan p-5">
          <h2>Supervisor</h2>
          <p class="fs-5">Monitors activity to identify project roadblocks</p>
          <img src="https://assets.codepen.io/2301174/icon-supervisor.svg" alt="">
        </div>
    
        <div class="box red p-5">
          <h2>Team Builder</h2>
          <p class="fs-5">Scans our talent network to create the optimal team for your project</p>
          <img src="https://assets.codepen.io/2301174/icon-team-builder.svg" alt="">
        </div>
    
        <div class="box box-down blue p-5">
          <h2>Calculator</h2>
          <p class="fs-5">Uses data from past projects to provide better delivery estimates</p>
          <img src="https://assets.codepen.io/2301174/icon-calculator.svg" alt="">
        </div>
      </div>
      <div class="row2-container">
        <div class="box orange p-5">
          <h2>Education</h2>
          <p class="fs-5">Regularly evaluates our talent to ensure quality</p>
          <img src="https://assets.codepen.io/2301174/icon-karma.svg" alt="">
        </div>
      </div>


    </section>
    <!-- about card end -->


     
</asp:Content>

