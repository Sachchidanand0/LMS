<%@ Page Title="" Language="C#" MasterPageFile="~/sPortal.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        html{
    font-size:62.5%;
}
  
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <!-- start hero area -->
         <div class="hero-area d-flex align-items-center mb-5" id="home">
            <div class="container">
               <div  class="row align-items-center">
                  <div class="col-md-6 mt_30">
                     <div class="hero-content">
                        <h2>What You Learn is Yours Forever</h2>
                        <p class="text-muted">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excep teur sint occae cat cupidatat non proident.</p>
                        <div class="hero-btn-area">
                           <a href="slogin.aspx" class="button hero-btn">Get started</a>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-6 mt_30">
                     <div class="hero-img-area">
                        <div class="shape shape-1">
                           <img src="img/rectangle.png" alt="img"/>
                        </div>
                        <div class="shape shape-2">
                           <img src="img/rectangle-2.png" alt="img"/>
                        </div>
                        <div class="shape shape-3">
                           <img src="img/shape-poly-1.png" alt="img"/>
                        </div>
                        <div class="shape shape-4">
                           <img src="img/shape-poly-2.png" alt="img"/>
                        </div>
                        <div class="shape shape-5">
                           <img src="img/circle.png" alt="img"/>
                        </div>
                        <div class="main-img">
                           <img class="img-fluid" src="img/bg.png" alt="hero-img"/>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- end hero area -->


      <!-- first card content start -->
    <section class="sec bg-light">
        <div class="container">
            <div class="row gy-3 p-5">
                <div class="col-lg-4 col-md-4 col-sm-4 col-12  ">
                    <div class="card">
                        <h1><i class="bx bx-anchor text-center pt-3 text-danger card-img-top" style="font-size:12rem;"></i></h1> 
                        <div class="card-body">
                            <h1 class="card-title text-center pt-3" style="font-weight:500;">Make Study Useful for Future</h1>
                            <p class="card-text fw-light fs-3 mt-4 mb-3 text-center text-muted ps-5 pe-5">Pore et dolore magna aliqua. Ut
enim ad minim veniam, quis nos
trud exerci tation</p>

                          
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-12  ">
                    <div class="card card-shadow">
                        <h1><i class="bx bx-adjust text-center pt-3 text-warning card-img-top" style="font-size:12rem;"></i></h1> 
                        <div class="card-body">
                            <h1 class="card-title text-center pt-3" style="font-weight:500;">Make Study Useful for Future</h1>
                            <p class="card-text fw-light fs-3 mt-4 mb-3 text-center text-muted ps-5 pe-5">Pore et dolore magna aliqua. Ut
enim ad minim veniam, quis nos
trud exerci tation</p>

                          
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-12  ">
                    <div class="card">
                        <h1><i class="bx bx-user-check text-center pt-3 text-info card-img-top" style="font-size:12rem;"></i></h1> 
                        <div class="card-body">
                            <h1 class="card-title text-center pt-3" style="font-weight:500;">Make Study Useful for Future</h1>
                            <p class="card-text fw-light fs-3 mt-4 mb-3 text-center text-muted ps-5 pe-5">Pore et dolore magna aliqua. Ut
enim ad minim veniam, quis nos
trud exerci tation</p>

                          
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- first card content end -->





    <!-- first content start -->
    <section class="sec bg-light">
        <div class="row p-5">
            <div class="col-12">
       <h1 class="pt-5 text-center b-text-content">built your trust on whatever you learn</h1>
               <p class="text-center pt-5 text-capitalize display-3 fw-bold c-para"> Control your Studies with a <br />
                 single tap</p>
                </div>
            </div>
    </section>
    <!-- first content end -->

  <!-- Short for our team -->
    <section class="container bg-light sec">
        <div class="row p-5">
            <div class="col-lg-5 col-md-5 col-sm-5 col-12">
                <h1 class="display-2 text-capitalize fw-bold">Most attractive creative team</h1>

                <p class="fs-3 mt-5 mb-5 text-muted">Duis aute irure dolor in reprehenderit in voluptate
                   velit esse cillum dolore eu fugiat nulla pariatur. Excep
                   teur sint occae cat cupidatat non proident, sunt in
                   culpa qui officia deser unt mollit anim id est laborum</p>

                <div class="hero-btn-area">
                           <a href="memberTeam.aspx" class="button hero-btn">Explore More</a>
                        </div>
            </div>
            <div class="col-lg-7 col-md-7 col-sm-7 col-12">
                <img src="img/teampic.jpg" alt="Team Image" class="img-fluid hero-img-area t-img"/>
            </div>
        </div>
    </section>
    <!-- team short end -->

     <!-- slider start -->

    <section class="sec bg-light">
       <h1 class=" text-capitalize text-center p-5 display-3" style="font-weight:600;">check the best you can <span style="color: darkorchid">find out here</span></h1>
        <div class="container p-5">
          <div id="slider-container">
        <div id="slider">
           <!-- to be populated by the plugin-->
        </div>

         <div class="slide">
            <i class="left arrow-1 icon-arrow-left icon-2x " "></i>
            <i class="pause arrow-1 icon-pause icon-2x " "></i>
            <i class="right arrow-1 icon-arrow-right icon-2x " "></i>
        </div>
    </div>


</div>
    </section>

 <!-- slider end-->

    <!-- testimonial start -->
    <section class="sec testimonial-body">
        <h1 class="text-capitalize text-center display-2 pt-5 text-white">Testimonial</h1>
        <div class="container test-container">
        <div class="row">
            <div class="col-lg-4 inner-row-div">
                <div class="card test-card">
                    <div class="face front-face">
                        <img src="https://images.unsplash.com/photo-1557862921-37829c790f19?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80"
                            alt="" class="profile">
                        <div class="pt-3 text-uppercase name fs-2">
                            Robert Garrison
                        </div>
                        <div class="designation">Android Developer</div>
                    </div>
                    <div class="face back-face">
                        <span class="fas fa-quote-left"></span>
                        <div class="testimonial fs-4">
                            I made back the purchase price in just 48 hours! Thank you for making it pain less,
                            pleasant.
                            The service was execellent. I will refer everyone I know.
                        </div>
                        <span class="fas fa-quote-right"></span>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 inner-row-div">
                <div class="card test-card">
                    <div class="face front-face">
                        <img src="https://images.unsplash.com/photo-1600486913747-55e5470d6f40?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
                            alt="" class="profile">
                        <div class="pt-3 text-uppercase name fs-2">
                            Jeffery Kennan
                        </div>
                        <div class="designation">Full Stack Developer</div>
                    </div>
                    <div class="face back-face">
                        <span class="fas fa-quote-left"></span>
                        <div class="testimonial fs-4">
                            Really good, you have saved our business! I made back the purchase price in just 48 hours!
                            man, this thing is getting better and better as I learn more about it.
                        </div>
                        <span class="fas fa-quote-right"></span>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 inner-row-div">
                <div class="card test-card">
                    <div class="face front-face">
                        <img src="https://images.unsplash.com/photo-1614574762522-6ac2fbba2208?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjY2fHxtYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
                            alt="" class="profile">
                        <div class="pt-3 text-uppercase name fs-2">
                            Issac Maxwell
                        </div>
                        <div class="designation">Finance Director</div>
                    </div>
                    <div class="face back-face">
                        <span class="fas fa-quote-left"></span>
                        <div class="testimonial fs-4">
                            Account keeper is the most valuable business research we have EVER purchased. Without
                            electrician, we would ahave gone bankrupt by now.
                        </div>
                        <span class="fas fa-quote-right"></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </section>
    <!-- testimonial end -->


  
 




   <!-- get Update portion start-->

    <section class="container sec bg-light">
        <h1 class="p-5 text-capitalize fw-bold display-4 text-center " >get the latest update</h1>
        <div class="row gy-3 p-5">
            <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                 <div class="card card-shadow">
                        <h3 class="ps-4 pt-5 text-capitalize text-danger">web development</h3> 
                        <div class="card-body">
                            <h2 class="card-title text-capitalize  ps-2 pe-3" style="font-weight:600;">Where virtuality meets the reality</h2>
                            <p class="card-text fw-light fs-4 mt-5 mb-5 text-muted ps-2 pe-3">Excep teur sint occae cat cupid
atat non proident, sunt in culpa
qui officia deser unt mollit ..</p>

                           <div class="mt-5 d-flex align-items-center justify-content-between">
                             <h1 class="fs-4 fw-light"><i class="bx bx-user text-success pt-4 pe-3 fs-2 "></i>Rahul Bhist</h1>  
                             <h1 class="fs-4 fw-light"><i class="bx bx-heart text-muted pt-4 pe-3 fs-2"></i>22</h1>  
                               </div>
                          
                        </div>
                    </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                 <div class="card">
                        <h3 class="ps-4 pt-5 text-capitalize text-warning">web Design</h3> 
                        <div class="card-body">
                            <h2 class="card-title text-capitalize  ps-2 pe-3" style="font-weight:600;">Where virtuality meets the reality</h2>
                            <p class="card-text fw-light fs-4 mt-5 mb-5 text-muted ps-2 pe-3">Excep teur sint occae cat cupid
atat non proident, sunt in culpa
qui officia deser unt mollit ..</p>

                           <div class="mt-5 d-flex align-items-center justify-content-between">
                             <h1 class="fs-4 fw-light"><i class="bx bx-user-x text-danger pt-4 pe-3 fs-2 "></i>Rohan Nanda</h1>  
                             <h1 class="fs-4 fw-light"><i class="bx bx-heart text-muted pt-4 pe-3 fs-2"></i>22</h1>  
                               </div>
                          
                        </div>
                    </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                 <div class="card">
                        <h3 class="ps-4 pt-5 text-capitalize text-success">UX/UI</h3> 
                        <div class="card-body">
                            <h2 class="card-title text-capitalize  ps-2 pe-3" style="font-weight:600;">Where virtuality meets the reality</h2>
                            <p class="card-text fw-light fs-4 mt-5 mb-5 text-muted ps-2 pe-3">Excep teur sint occae cat cupid
atat non proident, sunt in culpa
qui officia deser unt mollit ..</p>

                           <div class="mt-5 d-flex align-items-center justify-content-between">
                             <h1 class="fs-4 fw-light"><i class="bx bx-user-pin text-warning pt-4 pe-3 fs-2 "></i>Nandini Sukh</h1>  
                             <h1 class="fs-4 fw-light"><i class="bx bx-heart text-muted pt-4 pe-3 fs-2"></i>22</h1>  
                               </div>
                          
                        </div>
                    </div>
            </div>
        </div>
    </section>



    <!-- get Update portion end-->


     <!-- start contact area -->
    <section class="sec contact-area">
     <div class="content">
    
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-10">
          

          <div class="row justify-content-center bg-light p-5 contact-area-row">
            <div class="col-md-6">
              
              <h3 class="heading mb-4 fs-1 text-capitalize">Let's talk about everything!</h3>
              <p class="fs-3 mb-4  text-muted">We'll never share your details with anyone else</p>

              <p><img src="img/undraw-contact.svg" alt="Image" class="img-fluid mt-3"></p>


            </div>
            <div class="col-md-6">
              
              <div class="mb-5">
                <div class="row mb-5">
                  <div class="col-md-12 form-group">
                    <asp:TextBox runat="server" type="text" class="form-control fs-4" name="name" ID="txtname" placeholder="Your name"> </asp:TextBox>
                  </div>
                </div>
                <div class="row mb-5">
                  <div class="col-md-12 form-group">
                    <asp:TextBox runat="server" type="email" class="form-control fs-4"  ID="txtemail" placeholder="Email"> </asp:TextBox>
                  </div>
                </div>
                <div class="row mb-5">
                  <div class="col-md-12 form-group">
                    <asp:TextBox runat="server" type="text" class="form-control fs-4" name="subject" ID="txtsub" placeholder="Subject"> </asp:TextBox>
                  </div>
                </div>
                <div class="row mb-5">
                  <div class="col-md-12 form-group">
                    <asp:TextBox runat="server" class="form-control fs-4 h-100 text-capitalize" TextMode="multiline" name="message" ID="txtmsg"  cols="30" rows="8" placeholder="Write Your Query"></asp:TextBox>
           
                  </div>
                </div>  
                <div class="row">
                  <div class="col-12">
                    <asp:Button runat="server" Text="Send Message" class="btn btn-primary button py-2 px-4 fs-4" ID="button" OnClick="button_Click"  />
                  <span class="submitting"></span>
                  </div>
                </div>
              </div>

              <div id="form-message-warning mt-4"></div> 
              <asp:Label runat="server" ID="status" class="fs-5"></asp:Label>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>

</section>



    
         <!-- end contact area -->


    <script src="JqueryScript/jquery-1.8.2.min.js"></script>
    <script src="JqueryScript/jquery.impulse.slider-0.4.js"></script>
    <script src="JqueryScript/jquery.validate.min.js"></script>
    


    <script type="text/javascript">
    $(window).load(function() {
        $('#slider').impulseslider({
            height: 300,
            width: 350,
            depth: 275,
            perspective: 2000,
            pauseTime: 1500,
            transitionDuration: 1000,
            transitionEffect: "ease-in-out",
            autostart: true,
            rightSelector: ".right",
            leftSelector: ".left",
            pauseSelector: ".pause",
            directionRight: true,
            containerSelector: "#slider-container",
            spinnerSelector: "#slider",
            images: ["img/img1.jpg", "img/img2.jpg", "img/img3.jpg", "img/img4.jpg", "img/img5.jpg"],
            imageDivClasses: ["face"]
        });
    });

</script>


  
</asp:Content>

