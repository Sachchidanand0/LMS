<%@ Page Title="" Language="C#" MasterPageFile="~/sPortal.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<style>
		/* contact us page Css*/

[tabindex="-1"]:focus {
    outline: 0 !important;
}

hr {
    -webkit-box-sizing: content-box;
    box-sizing: content-box;
    height: 0;
    overflow: visible;
}


abbr[title],
abbr[data-original-title] {
    text-decoration: underline;
    -webkit-text-decoration: underline dotted;
    text-decoration: underline dotted;
    cursor: help;
    border-bottom: 0;
    text-decoration-skip-ink: none;
}


address {
    margin-bottom: 1rem;
    font-style: normal;
    line-height: inherit;
}


.ftco-section {
    padding: 7em 0;
}

.ftco-no-pt {
    padding-top: 0;
}

.ftco-no-pb {
    padding-bottom: 0;
}

.heading-section {
    font-size: 28px;
    color: #000;
}

.img {
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center center;
}

.form-control {
    height: 36px;
    background: #fff;
    color: rgba(0, 0, 0, 0.8);
    font-size: 14px;
    border-radius: 2px;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
    border: 1px solid rgba(0, 0, 0, 0.1);
}

    .form-control::-webkit-input-placeholder {
        /* Chrome/Opera/Safari */
        color: rgba(0, 0, 0, 0.3) !important;
    }

    .form-control::-moz-placeholder {
        /* Firefox 19+ */
        color: rgba(0, 0, 0, 0.3) !important;
    }

    .form-control:-ms-input-placeholder {
        /* IE 0+ */
        color: rgba(0, 0, 0, 0.3) !important;
    }

    .form-control:-moz-placeholder {
        /* Firefox 18- */
        color: rgba(0, 0, 0, 0.3) !important;
    }

    .form-control:focus, .form-control:active {
        border-color: #881da8 !important;
    }

textarea.form-control {
    height: inherit !important;
}

.wrapper {
    width: 100%;
}

.contact-wrap {
    background: #fff;
}

@media (max-width: 767.98px) {
    .info-wrap {
        height: 400px;
    }
}

.dbox {
    width: 100%;
    margin-bottom: 25px;
}

@media (max-width: 767.98px) {
    .dbox {
        margin-bottom: 25px !important;
        padding: 0 20px;
    }
}

.dbox p {
    margin-bottom: 0;
}

    .dbox p span {
        font-weight: 500;
        color: #000;
    }

    .dbox p a {
        color: #881da8;
    }

.dbox .icon {
    width: 60px;
    height: 60px;
    border-radius: 50%;
    background: #881da8;
    margin: 0 auto;
    margin-bottom: 20px;
}

    .dbox .icon span {
        font-size: 20px;
        color: #fff;
    }

.dbox .text {
    width: 100%;
}

@media (prefers-reduced-motion: reduce) {
    .btn {
        -webkit-transition: none;
        -o-transition: none;
        transition: none;
    }
}

.btn:hover, .btn:active, .btn:focus {
    outline: none !important;
}

.contactForm .label {
    color: #000;
    text-transform: uppercase;
    font-size: 12px;
    font-weight: 600;
}

.contactForm .form-control {
    border: none;
    border-bottom: 1px solid rgba(0, 0, 0, 0.1);
    padding: 0;
}

#contactForm .error {
    color: red;
    font-size: 12px;
}

#contactForm .form-control {
    font-size: 16px;
}

#message {
    resize: vertical;
}

#form-message-warning, #form-message-success {
    display: none;
}

#form-message-warning {
    color: red;
}

#form-message-success {
    color: #28a745;
    font-size: 18px;
    font-weight: 500;
}

.submitting {
    float: left;
    width: 100%;
    padding: 10px 0;
    display: none;
    font-size: 16px;
    font-weight: bold;
}

/* contact page css end */
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h1 class=" display-3  fw-bold" style="color: darkblue; text-shadow: 1px 1px 2px #000;">Contact Form</h1>
					<hr class="w-75 mx-auto mb-5" style="color: darkmagenta" />
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-12">
					<div class="wrapper">
						<div class="row mb-5">
							<div class="col-md-3">
								<div class="dbox w-100 text-center">
			        		<div class="icon d-flex align-items-center justify-content-center">
			        			<span class="fa fa-map-marker"></span>
			        		</div>
			        		<div class="text">
				            <p class="fs-4 fw-light"><span class="fs-3 text-muted">Address:</span> 198 West 21th Street</p>
				          </div>
			          </div>
							</div>
							<div class="col-md-3">
								<div class="dbox w-100 text-center ">
			        		<div class="icon d-flex align-items-center justify-content-center" >
			        			<span class="fa fa-phone"></span>
			        		</div>
			        		<div class="text">
				            <p class="fs-4"><span class="fs-3 text-muted">Phone:</span> <a href="tel://1234567920">+91 8765786576</a></p>
				          </div>
			          </div>
							</div>
							<div class="col-md-3">
								<div class="dbox w-100 text-center">
			        		<div class="icon d-flex align-items-center justify-content-center">
			        			<span class="fa fa-paper-plane"></span>
			        		</div>
			        		<div class="text">
				            <p class="fs-4"><span class="fs-3 text-muted">Email:</span> <a href="#">fridayfun2904@gmail.com</a></p>
				          </div>
			          </div>
							</div>
							<div class="col-md-3">
								<div class="dbox w-100 text-center">
			        		<div class="icon d-flex align-items-center justify-content-center">
			        			<span class="fa fa-globe"></span>
			        		</div>
			        		<div class="text">
				            <p class="fs-4"><span class="fs-3 text-muted">Website:</span> <a href="#">s-portal.com</a></p>
				          </div>
			          </div>
							</div>
						</div>
						<div class="row no-gutters">
							<div class="col-md-7">
								<div class="contact-wrap w-100 p-md-5 p-4">
									<h1 class="mb-5 text-capitalize" style="color:darkblue; text-shadow: 1px 1px 2px #000;">Let's have a chat</h1>
									<div id="form-message-warning" class="mb-4"></div> 
				      		<div id="form-message-success" class="mb-4">
				            Your message was sent, thank you!
				      		</div>
									<div  id="contactForm" name="contactForm" class="contactForm ">
										<div class="row">
											<div class="col-md-6 mt-4 mb-4">
												<div class="form-group">
													<label class="label mb-4 fs-3 text-muted" for="name" style="text-shadow: 1px 1px 1px #000;">Full Name</label>
													<asp:TextBox runat="server" type="text" class="form-control" name="name"	ID="txtname" placeholder="Name"></asp:TextBox>
												</div>
											</div>
											<div class="col-md-6 mt-4 mb-4"> 
												<div class="form-group" >
													<label class="label mb-4 fs-3 text-muted" for="email" style="text-shadow: 1px 1px 1px #000;">Email Address</label>
													<asp:TextBox runat="server" type="email" class="form-control" name="email" ID="txtemail" placeholder="Email"></asp:TextBox>
												</div>
											</div>
											<div class="col-md-12 mt-4 mb-4">
												<div class="form-group">
													<label class="label mb-4 fs-3 text-muted" for="subject" style="text-shadow: 1px 0px 1px #000;">Subject</label>
													<asp:TextBox runat="server" type="text" class="form-control" name="subject" ID="txtsub" placeholder="Subject"></asp:TextBox>
												</div>
											</div>
											<div class="col-md-12 mt-4 mb-4">
												<div class="form-group">
													<label class="label mb-4 fs-3 text-muted" for="#" style="text-shadow: 1px 1px 1px #000;">Message</label>
													<asp:TextBox runat="server" name="message" class="form-control" ID="txtmsg" cols="30" rows="4" placeholder="Write Your Query Here...!"></asp:TextBox>
												</div>
											</div>
											<div class="col-md-12 mt-4 mb-4">
												<div class="form-group">
													<asp:Button runat="server" type="submit" Text="Send Message" class="btn button" ID="send_btn" OnClick="send_btn_Click"/>
													<div class="submitting" >
														<asp:Label runat="server" ID="status"></asp:Label>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-5 d-flex align-items-stretch">
								<div class="info-wrap w-100 p-5 img" style="background-image: url(img/c-img3.jpg);">
			          </div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>



	<!-- script file -->

	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.validate.min.js"></script>
  <script src="js/main.js"></script>
</asp:Content>

