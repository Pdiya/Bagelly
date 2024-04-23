<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Bagelly</title>
    <meta charset="utf-8" >
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" />
    <link href="file:///C:/Users/2124B/Downloads/bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="stylesheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form" runat="server">
    <div>
    
            <!---NAVBAR--->
 <nav class="navbar navbar-expand-lg  fixed-top ">
  <div class="container-fluid sticky-top">
    <a class="navbar-brand" href="#">
<img id="logo" src="icons/logo.png" height="70px" class="rounded-circle" /></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
         <li class="nav-item">
          <a class="nav-link  font-weight-bolder text-white" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active font-weight-bolder text-white" aria-current="page" href="#">Men</a>
        </li>
       <li class="nav-item">
          <a class="nav-link active font-weight-bolder text-white" aria-current="page" href="#">Women</a>
        </li>
      </ul>

    
          <ul class="navbar-nav me-auto mb-5 mb-lg-0 ml-auto">
        <li class="nav-item">
          <a class="nav-link active font-weight-bolder text-white" aria-current="page" href="#">
           <img src="icons/user.png" height="30px" width="30px" />
          Register</a>
           
        </li>
       <li class="nav-item">
          <a class="nav-link active font-weight-bolder text-white" aria-current="page" href="#">
          <img src="icons/login.png" height="30px" width="30px" />
          LogIn</a>
        </li>
      </ul>
     
      </nav>
        </div>
        </div>
        </div>
   
    <!-----NAVBAR OVER--->


    <!------CONTENT----->

        <!--Section: Contact v.2-->
 <section class="text-gray-600 pt-5">
  <div class="container px-5 py-24 mx-auto pt-5">
    <!--Section heading-->
    <h2 class="h1-responsive font-weight-bold text-center my-4 mt-5">Contact us</h2>
    <!--Section description-->
    <p class="text-center w-responsive mx-auto mb-5">Do you have any questions? Please do not hesitate to contact 
    us directly. Our team will come back to you within
        a matter of hours to help you.</p>

    <div class="row">

        <!--Grid column-->
        <div class="col-md-9 mb-md-0 mb-5">
           

                <!--Grid row-->
                <div class="row">

                    <!--Grid column-->
                    <div class="col-md-6">
                        <div class="md-form mb-0">
                        <label for="name" class="">Your name</label>
                        <asp:TextBox ID="name_txt" runat="server" class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="name_txt"  runat="server" ErrorMessage="*Name Required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                            
                        </div>
                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-md-6">
                        <div class="md-form mb-0">
                        <label for="email" class="">Your email</label>
                             <asp:TextBox ID="email_txt" runat="server" class="form-control"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="email_txt"  runat="server" ErrorMessage="*Email Required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email_txt"
    ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
    Display = "Dynamic" ErrorMessage = "Invalid email address" Font-Size="Small" />
                        </div>
                    </div>
                    <!--Grid column-->

                </div>
                <!--Grid row-->

                <!--Grid row-->
                <div class="row">
                    <div class="col-md-12">
                        <div class="md-form mb-0">
                         <label for="subject" class="">Subject</label>
                             <asp:TextBox ID="subject_txt" runat="server" class="form-control"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="subject_txt"  runat="server" ErrorMessage="*Subject Required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <!--Grid row-->

                <!--Grid row-->
                <div class="row">

                    <!--Grid column-->
                    <div class="col-md-12">

                        <div class="md-form">
                        <label for="message">Your message</label>
                         <asp:TextBox ID="message_txt" runat="server" class="form-control md-textarea" TextMode="MultiLine"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="message_txt"  runat="server" ErrorMessage="*Message Required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            
                        </div>

                    </div>
                </div>
                <!--Grid row-->

           
            <div class="text-center text-md-left">
            <asp:Button ID="contact_btn" runat="server" Text="Send" class="btn btn-primary" 
                    onclick="contact_btn_Click"></asp:Button>
               
            </div>
            <div class="status"></div>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-md-3 text-center text-left">
            <img src="images/map.jpg" height="200px" />
        </div>
        <!--Grid column-->

    </div>
    </div>

</section>
<br />
<br />

<!--Section: Contact v.2-->

    <!------CONTENT END ------->




      <!----FOOTER----->

<footer class=" text-center text-white">
  <!-- Grid container -->
  <div class="container p-4">
    <!-- Section: Social media -->
    <section class="mb-4">
      <!-- Facebook -->
      <a class="btn btn-floating m-1" href="https://www.facebook.com/" role="button"
        ><img src="icons/face.png" height="30px" /></a>

      <!-- Twitter -->
     <a class="btn btn-floating m-1" href="https://twitter.com/" role="button"
        ><img src="icons/twit.png" height="30px" /></a>

      <!-- Google -->
      <a class="btn btn-floating m-1" href="https://www.google.com/" role="button"
        ><img src="icons/google.png" height="30px" /></a>

      <!-- Instagram -->
      <a class="btn btn-floating m-1" href="https://www.instagram.com/" role="button"
        ><img src="icons/insta.png" height="30px" /></a>

      <!-- Linkedin -->
       <a class="btn btn-floating m-1" href="https://www.linkedin.com/" role="button"
        ><img src="icons/link.png" height="30px" /></a>

      <!-- Github -->
      <a class="btn btn-floating m-1" href="https://github.com/" role="button"
        ><img src="icons/git.png" height="30px" /></a>
    </section>
    <!-- Section: Social media -->

    <!-- Section: Form -->
    <section class="">
      <form action="">
        <!--Grid row-->
        <div class="row d-flex justify-content-center">
          <!--Grid column-->
          <div class="col-auto">
            <p class="pt-2">
              <strong>Sign up for our newsletter</strong>
            </p>
          </div>
          <!--Grid column-->

          <!--Grid column-->
          <div class="col-md-5 col-12">
            <!-- Email input -->
            <div class="form-outline form-white mb-4">
              
              <asp:TextBox ID="contact_txt" runat="server" class="form-control"></asp:TextBox>
             
            </div>
          </div>
          <!--Grid column-->

          <!--Grid column-->
          <div class="col-auto">
            <!-- Submit button -->
           
          </div>
          <!--Grid column-->
        </div>
        <!--Grid row-->
      </form>
    </section>
    <!-- Section: Form -->

  

    <!-- Section: Links -->
    <section class="">
      <!--Grid row-->
      <div class="row">
        <!--Grid column-->
        <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
          

          <ul class="list-unstyled mb-0">
            <li class="text-left">
              <a href="terms.aspx" class="text-white ">Terms of use</a>
            </li>
             <li class="text-left">
              <a href="officer.aspx" class="text-white">Grievance Officer</a>
            </li>
             <li class="text-left">
              <a href="privacy.aspx" class="text-white">Privacy Policy</a>
            </li>
            <li class="text-left">
              <a href="tc.aspx" class="text-white">T & C</a>
            </li>
          </ul>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
          

          <ul class="list-unstyled mb-0">
            <li class="text-left">
              <a href="Default.aspx" class="text-white">Home</a>
            </li>
             <li class="text-left">
              <a href="contact.aspx" class="text-white">Contact Us</a>
            </li>
           <li class="text-left">
              <a href="https://play.google.com/" class="text-white">Bagelly App Download</a>
            </li>
           
          </ul>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
        
        <h6 class="title-font font-medium text-gray-900 tracking-widest text-m mb-0">REGISTERED OFFICE ADDRESS</h2>
          <div class="flex xl:flex-nowrap md:flex-nowrap lg:flex-wrap flex-wrap justify-center items-end md:justify-start">
          <div class="relative w-40 sm:w-auto xl:mr-4 lg:mr-0 sm:mr-4 mr-2">
            <label for="footer-field" class="leading-7 text-sm text-gray-100 text-left">Buildings Alyssa,<br />

Varthur Hobli,<br />
Bengaluru – 560103, India</label>
          </div>
        </div>
        </div>
        <!--Grid column-->
      </div>
      <!--Grid row-->
    </section>
    <!-- Section: Links -->
  </div>
  <!-- Grid container -->

  <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
    © 2020 Copyright:
    <a class="text-white" href="https://mdbootstrap.com/">Bagelly.com</a>
  </div>
  <!-- Copyright -->
</footer>


   <!-----FOOTER OVER---->


    </div>
    </form>
</body>
</html>
