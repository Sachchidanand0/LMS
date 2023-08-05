<%@ Page Title="" Language="C#" MasterPageFile="~/sPortal.master" AutoEventWireup="true" CodeFile="notes.aspx.cs" Inherits="notes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <style>
       .notes-header{
           width: 100vw;
           height: 100vh;
          
       }

      .right-side {
    margin-top: 3rem;
    padding: 3rem;
    text-align: justify;
}

 .right-side h1 {
    font-size: 5rem;
    font-weight: 600;
    color: indigo;
    text-transform: capitalize;
}

 .right-side p {
    font-size: 1.7rem;
    font-weight: 500;
}

 .line-strok div {
    padding: 5px;
    background: linear-gradient(45deg, #05abe0 0%, #8200f4 100%);
    border-radius: 15px;
}

 .left-side {
     width: 550px;
    background: linear-gradient(45deg, #05abe0 0%, #8200f4 100%);
    border-radius: 50%;
}

 .notes-section h1{
     font-size : 3rem;
     color:#3D5FE9 !important;
     font-weight:600;
 }

 a{
     text-decoration: none;
 }

 .card{
   background-color: lavenderblush;
     border : 2px dotted #8f00c7;
     cursor:pointer;
 }

 .card-title{
     color: #ce1e53;
 }

 .btnn{
     background:none;
     outline:none;
     border:none;
 }
@media(max-width: 956px){
    .right-side h1{
        font-size: 4rem;
    }
}

@media(max-width: 790px){
    .notes-header{
        width: 100vw;
        height: 45vh;
    }

  
    .right-side h1{
        font-size: 3rem;
    }

    .right-side p{
        font-size: 1.5rem;
    }

   
}



     @media (max-width: 667px){

         .notes-section h1{
             font-size: 2rem;
         } 

         .notes-header p{
             margin-right:10rem;
             font-size: 1rem;
             text-align: justify;
         }

         .left-side{
             width: 660px;
             margin:auto;
         }

         .notes-section{
             margin-top: 100px;
         }
     }

     @media (max-width: 1024px){
          .left-side{
             width: 300px;
             margin:auto;
         }
         
     }
}
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="container-fluid notes-header">
        <div class="row">
            <div class=" right-side col-lg-6 col-md-6 col-sm-6 col-12">
                 <h1>what you learn is <br/>your forever</h1>
                 <div class="w-75 line-strok mt-3 mb-4">
          <div></div>
        </div>
        <p class="pt-3 text-secondary">Lorem ipsum dolor sit amet consectetur adipisicing elit. A, omnis tempora et
          sapiente fugiat molestiae ipsum amet incidunt architecto voluptatem, consectetur nemo ducimus corrupti.
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum similique placeat aperiam.
        </p>

</div>
            <div class="left-side col-lg-6 col-md-6 col-sm-6 col-12 ms-5 ps-5">
                <img src="img/notesimg.png" class="img-fluid" />
            </div>
        </div>
    </section>

    <section class="container-fluid my-5 py-5 notes-section">
        <h1 class="text-center text-secondary w-50 mx-auto">Computer Science > All Notes</h1>
        <div class="w-50 mx-auto">
            <hr />
        </div>
    </section>

    <section class="container my-5 py-5 w-75 mx-auto">
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-4 col-12">
     <div class="card " style="width: 18rem;">
  <div class="card-body">

    <h2 class="card-title mb-5 py-5">IT Tools Notes</h2>
      <div class="d-flex justify-content-between">
      <div><asp:LinkButton runat="server" href="notes/ITOOLS.pdf" class="card-link fs-2 text-secondary">Notes</asp:LinkButton></div>
    
   <div> <asp:LinkButton runat="server" href="notes/ITOOLS.pdf" class="card-link ms-5 ps-5 fs-1 fw-bold text-secondary">&gt;</asp:LinkButton></div>
          </div>
  </div>
</div>
            </div>
   <div class="col-lg-3 col-md-4 col-sm-4 col-12">
     <div class="card" style="width: 18rem;">
  <div class="card-body">

    <h2 class="card-title mb-5 py-5">OS Notes</h2>
      <div class="d-flex justify-content-between">
      <div><asp:LinkButton runat="server" href="notes/os.pdf" class="card-link fs-2 text-secondary">Notes</asp:LinkButton></div>
    
   <div> <asp:LinkButton runat="server" href="notes/os.pdf" class="card-link ms-5 ps-5 fs-1 fw-bold text-secondary">&gt;</asp:LinkButton></div>
          </div>
  </div>
</div>
            </div>
          <div class="col-lg-3 col-md-4 col-sm-4 col-12">
     <div class="card" style="width: 18rem;">
  <div class="card-body ">

    <h2 class="card-title mb-5 py-5">SPM Notes</h2>
      <div class="d-flex justify-content-between">
      <div><asp:LinkButton runat="server" href="#" class="card-link fs-2 text-secondary">Notes</asp:LinkButton></div>
    
   <div> <asp:LinkButton runat="server" href="#" class="card-link ms-5 ps-5 fs-1 fw-bold text-secondary">&gt;</asp:LinkButton></div>
          </div>
  </div>
</div>
            </div>
             <div class="col-lg-3 col-md-4 col-sm-4 col-12">
     <div class="card " style="width: 18rem;">
  <div class="card-body">

    <h2 class="card-title mb-5 py-5">DSA Notes</h2>
      <div class="d-flex justify-content-between">
      <div><asp:LinkButton runat="server" href="notes/DSA.pdf" class="card-link fs-2 text-secondary">Notes</asp:LinkButton></div>
    
   <div> <asp:LinkButton runat="server" href="notes/DSA.pdf" class="card-link ms-5 ps-5 fs-1 fw-bold text-secondary">&gt;</asp:LinkButton></div>
          </div>
  </div>
</div>
            </div>
        </div>
        <div class="row my-5 ">
   <div class="col-lg-3 col-md-4 col-sm-4 col-12">
     <div class="card" style="width: 18rem;">
  <div class="card-body">

    <h2 class="card-title mb-5 py-5">HTML5 Notes</h2>
      <div class="d-flex justify-content-between">
      <div><asp:LinkButton runat="server" href="notes/HTML.pdf" class="card-link fs-2 text-secondary">Notes</asp:LinkButton></div>
    
   <div> <asp:LinkButton runat="server" href="notes/HTML.pdf" class="card-link ms-5 ps-5 fs-1 fw-bold text-secondary">&gt;</asp:LinkButton></div>
          </div>
  </div>
</div>
            </div>
             <div class="col-lg-3 col-md-4 col-sm-4 col-12">
     <div class="card" style="width: 18rem;">
  <div class="card-body">

    <h2 class="card-title mb-5 py-5">CSS3 Notes</h2>
      <div class="d-flex justify-content-between">
      <div><asp:LinkButton runat="server" href="notes/CSS.pdf" class="card-link fs-2 text-secondary">Notes</asp:LinkButton></div>
    
   <div> <asp:LinkButton runat="server" href="notes/CSS.pdf" class="card-link ms-5 ps-5 fs-1 fw-bold text-secondary">&gt;</asp:LinkButton></div>
          </div>
  </div>
</div>
            </div>
             <div class="col-lg-3 col-md-4 col-sm-4 col-12">
     <div class="card" style="width: 18rem;">
  <div class="card-body">

    <h2 class="card-title mb-5 py-5">JS Notes</h2>
      <div class="d-flex justify-content-between">
      <div><asp:LinkButton runat="server" href="#" class="card-link fs-2 text-secondary">Notes</asp:LinkButton></div>
    
   <div> <asp:LinkButton runat="server" href="#" class="card-link ms-5 ps-5 fs-1 fw-bold text-secondary">&gt;</asp:LinkButton></div>
          </div>
  </div>
</div>
            </div>
             <div class="col-lg-3 col-md-4 col-sm-4 col-12">
     <div class="card" style="width: 18rem;">
  <div class="card-body">

    <h2 class="card-title mb-5 py-5">DBMS Notes</h2>
      <div class="d-flex justify-content-between">
      <div><asp:LinkButton runat="server" href="notes/dbms.pdf" class="card-link fs-2 text-secondary">Notes</asp:LinkButton></div>
    
   <div> <asp:LinkButton runat="server" href="notes/dbms.pdf" class="card-link ms-5 ps-5 fs-1 fw-bold text-secondary">&gt;</asp:LinkButton></div>
          </div>
  </div>
</div>
            </div>
        </div>
        <div class="row ">
   <div class="col-lg-3 col-md-4 col-sm-4 col-12">
     <div class="card" style="width: 18rem;">
  <div class="card-body">

    <h2 class="card-title mb-5 py-5">JAVA Notes</h2>
      <div class="d-flex justify-content-between">
      <div><asp:LinkButton runat="server" href="notes/java.pdf" class="card-link fs-2 text-secondary">Notes</asp:LinkButton></div>
    
   <div> <asp:LinkButton runat="server" href="notes/java.pdf" class="card-link ms-5 ps-5 fs-1 fw-bold text-secondary">&gt;</asp:LinkButton></div>
          </div>
  </div>
</div>
            </div>
             <div class="col-lg-3 col-md-4 col-sm-4 col-12 mx-auto">
     <div class="card" style="width: 18rem;">
  <div class="card-body">

    <h2 class="card-title mb-5 py-5">JCode Notes</h2>
      <div class="d-flex justify-content-between">
      <div><asp:LinkButton runat="server" href="notes/JAVACODE.pdf" class="card-link fs-2 text-secondary">Notes</asp:LinkButton></div>
    
   <div> <asp:LinkButton runat="server" href="notes/JAVACODE.pdf" class="card-link ms-5 ps-5 fs-1 fw-bold text-secondary">&gt;</asp:LinkButton></div>
          </div>
  </div>
</div>
            </div>
      <div class="col-lg-3 col-md-4 col-sm-4 col-12">
     <div class="card" style="width: 18rem;">
  <div class="card-body">
      
    <h2 class="card-title mb-5 py-5">C Notes</h2>
      <div class="d-flex justify-content-between">
      <div><asp:Button runat="server" class="card-link fs-2 text-secondary btnn" Text="Notes" ID="note" OnClick="note_Click" /></div>
    
   <div> <asp:Button runat="server" class="card-link ms-5 ps-5 fs-1 fw-bold text-secondary btnn" Text="&gt;" ID="symbtn" OnClick="symbtn_Click" /></div>
          </div>
  </div>
</div>
            </div>
      <div class="col-lg-3 col-md-4 col-sm-4 col-12">
     <div class="card" style="width: 18rem;">
  <div class="card-body">

    <h2 class="card-title mb-5 py-5">CN Notes</h2>
      <div class="d-flex justify-content-between">
      <div><asp:LinkButton runat="server" href="notes/computernetwork.pdf" class="card-link fs-2 text-secondary">Notes</asp:LinkButton></div>
    
   <div> <asp:LinkButton runat="server" href="notes/computernetwork.pdf" class="card-link ms-5 ps-5 fs-1 fw-bold text-secondary">&gt;</asp:LinkButton></div>
          </div>
  </div>
</div>
            </div>
        </div>
         
        <div class="row mt-5">
   <div class="col-lg-3 col-md-4 col-sm-4 col-12">
     <div class="card" style="width: 18rem;">
  <div class="card-body">

    <h2 class="card-title mb-5 py-5">Cloud Notes</h2>
      <div class="d-flex justify-content-between">
      <div><asp:LinkButton runat="server" href="notes/cloudnotes.pdf" class="card-link fs-2 text-secondary">Notes</asp:LinkButton></div>
    
   <div> <asp:LinkButton runat="server" href="notes/cloudnotes.pdf" class="card-link ms-5 ps-5 fs-1 fw-bold text-secondary">&gt;</asp:LinkButton></div>
          </div>
  </div>
</div>
            </div>
             <div class="col-lg-3 col-md-4 col-sm-4 col-12">
     <div class="card" style="width: 18rem;">
  <div class="card-body">

    <h2 class="card-title mb-5 py-5">DMining Notes</h2>
      <div class="d-flex justify-content-between">
      <div><asp:LinkButton runat="server" href="notes/miningnotes.pdf" class="card-link fs-2 text-secondary">Notes</asp:LinkButton></div>
    
   <div> <asp:LinkButton runat="server" href="notes/miningnotes.pdf" class="card-link ms-5 ps-5 fs-1 fw-bold text-secondary">&gt;</asp:LinkButton></div>
          </div>
  </div>
</div>
            </div>
             <div class="col-lg-3 col-md-4 col-sm-4 col-12">
     <div class="card" style="width: 18rem;">
  <div class="card-body">

    <h2 class="card-title mb-5 py-5">Compiler Notes</h2>
      <div class="d-flex justify-content-between">
      <div><asp:LinkButton runat="server" href="notes/compilernotes.pdf" class="card-link fs-2 text-secondary">Notes</asp:LinkButton></div>
    
   <div> <asp:LinkButton runat="server" href="notes/compilernotes.pdf" class="card-link ms-5 ps-5 fs-1 fw-bold text-secondary">&gt;</asp:LinkButton></div>
          </div>
  </div>
</div>
            </div>
             <div class="col-lg-3 col-md-4 col-sm-4 col-12">
     <div class="card" style="width: 18rem;">
  <div class="card-body">

    <h2 class="card-title mb-5 py-5">OR Notes</h2>
      <div class="d-flex justify-content-between">
      <div><asp:LinkButton runat="server" href="notes/or.pdf" class="card-link fs-2 text-secondary">Notes</asp:LinkButton></div>
    
   <div> <asp:LinkButton runat="server" href="notes/or.pdf" class="card-link ms-5 ps-5 fs-1 fw-bold text-secondary">&gt;</asp:LinkButton></div>
          </div>
  </div>
</div>
            </div>
        </div>
        <div class="row mt-5">
             <div class="col-lg-3 col-md-4 col-sm-4 col-12">
     <div class="card" style="width: 18rem;">
  <div class="card-body">

    <h2 class="card-title mb-5 py-5">COA Notes</h2>
      <div class="d-flex justify-content-between">
      <div><asp:LinkButton runat="server" href="notes/COA.pdf" class="card-link fs-2 text-secondary">Notes</asp:LinkButton></div>
    
   <div> <asp:LinkButton runat="server" href="notes/COA.pdf" class="card-link ms-5 ps-5 fs-1 fw-bold text-secondary">&gt;</asp:LinkButton></div>
          </div>
  </div>
</div>
            </div>
   <div class="col-lg-3 col-md-4 col-sm-4 col-12">
     <div class="card" style="width: 18rem;">
  <div class="card-body">

    <h2 class="card-title mb-5 py-5">Stats Notes</h2>
      <div class="d-flex justify-content-between">
      <div><asp:LinkButton runat="server" href="notes/statistics.pdf" class="card-link fs-2 text-secondary">Notes</asp:LinkButton></div>
    
   <div> <asp:LinkButton runat="server" href="notes/statistics.pdf" class="card-link ms-5 ps-5 fs-1 fw-bold text-secondary">&gt;</asp:LinkButton></div>
          </div>
  </div>
</div>
            </div>
             <div class="col-lg-3 col-md-4 col-sm-4 col-12">
     <div class="card" style="width: 18rem;">
  <div class="card-body">

    <h2 class="card-title mb-5 py-5">Matrix Notes</h2>
      <div class="d-flex justify-content-between">
      <div><asp:LinkButton runat="server" href="notes/matrix.pdf" class="card-link fs-2 text-secondary">Notes</asp:LinkButton></div>
    
   <div> <asp:LinkButton runat="server" href="notes/matrix.pdf" class="card-link ms-5 ps-5 fs-1 fw-bold text-secondary">&gt;</asp:LinkButton></div>
          </div>
  </div>
</div>
            </div>
             <div class="col-lg-3 col-md-4 col-sm-4 col-12">
     <div class="card" style="width: 18rem;">
  <div class="card-body">

    <h2 class="card-title mb-5 py-5">Diff. Notes</h2>
      <div class="d-flex justify-content-between">
      <div><asp:LinkButton runat="server" href="notes/diff.pdf" class="card-link fs-2 text-secondary">Notes</asp:LinkButton></div>
    
   <div> <asp:LinkButton runat="server" href="notes/diff.pdf" class="card-link ms-5 ps-5 fs-1 fw-bold text-secondary">&gt;</asp:LinkButton></div>
          </div>
  </div>
</div>
            </div>
             
        </div>
    </section>
</asp:Content>

