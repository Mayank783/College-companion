<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Buynow.aspx.cs" Inherits="WebApplication3.Buynow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

    <style>
        table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #4CAF50;
  color: white;
}

    </style>

  
  <link href="https://fonts.googleapis.com/css?family=Cinzel:400,700|Montserrat:400,700|Roboto&display=swap" rel="stylesheet"/> 

  <link rel="stylesheet" href="fonts/icomoon/style.css"/>

  <link rel="stylesheet" href="css/bootstrap.min.css"/>
  <link rel="stylesheet" href="css/jquery-ui.css"/>
  <link rel="stylesheet" href="css/owl.carousel.min.css"/>
  <link rel="stylesheet" href="css/owl.theme.default.min.css"/>
  <link rel="stylesheet" href="css/owl.theme.default.min.css"/>

  <link rel="stylesheet" href="css/jquery.fancybox.min.css"/>

  <link rel="stylesheet" href="css/bootstrap-datepicker.css"/>

  <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css"/>

  <link rel="stylesheet" href="css/aos.css"/>
  <link href="css/jquery.mb.YTPlayer.min.css" media="all" rel="stylesheet" type="text/css"/>

  <link rel="stylesheet" href="css/style.css"/>


    </head>
<body  data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
    <form id="form1" runat="server" >
    <div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>


    
    <div class="header-top">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-12 text-center">
            <a href="index.html" class="site-logo">
              <img src="images/logo.png" alt="Image" class="img-fluid"/>
            </a>
          </div>
          <a href="#" class="mx-auto d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black"><span
                class="icon-menu h3"></span></a>
        </div>
      </div>
      


      
      <div class="site-navbar py-2 js-sticky-header site-navbar-target d-none pl-0 d-lg-block" role="banner">

      <div class="container">
        <div class="d-flex align-items-center">
          
          <div class="mx-auto">
            <nav class="site-navigation position-relative text-left" role="navigation">
              <ul class="site-menu main-menu js-clone-nav mx-auto d-none pl-0 d-lg-block border-none">
                <li class="active"><a href="index.html" class="nav-link text-left">Home</a></li>
                <li><a href="about.html" class="nav-link text-left">About</a></li>
                <li><a href="shop.html" class="nav-link text-left">Wines</a></li>
                <li><a href="shop.html" class="nav-link text-left">Shop</a></li>
                <li><a href="contact.html" class="nav-link text-left">Contact</a></li>
              </ul>                                                                                                                                                                                                                                                                                         
            </nav>

          </div>
         
        </div>
      </div>

    </div>
    
    </div>

    
    
    

      
    

    <div class="site-section  pb-0">
      <div class="container">
        <div class="row mb-5 justify-content-center">
          <div class="col-7 section-title text-center mb-5">
            <h2 class="d-block">Buy Now</h2>
          </div>
        </div>
        <div class="row mb-5">

            

            <table style="width:100%;">
                <tr>
                    <td>&nbsp; Name</td>
                    <td>&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;Email</td>
                    <td>&nbsp;<asp:TextBox ID="TextBox2" runat="server">
                              </asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Field"></asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid Email" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)"></asp:RegularExpressionValidator>

                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;Mobile no.</td>
                    <td>&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid Mobile no." ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <input type="hidden" runat="server" id="key" name="key" value="gtKFFx" />
                        <input type="hidden" runat="server" id="salt" name="salt" value="eCwWELxi" />
                        <input type="hidden" runat="server" id="hash" name="hash" value=""  />
                        <input type="hidden" runat="server" id="txnid" name="txnid" value="" />
                        <asp:LinkButton class="btn btn-primary btn-lg btn-block" ID="Button1" runat="server" Text="Pay Now" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>

            

          </div>
            <div class="site-blocks-table">

                 </div>
          </div>
    
      </div>
    </div>
         <div class="footer">
      <div class="container">
        
        <div class="row">
          <div class="col-12 text-center">
            <div class="social-icons">
              <a href="#"><span class="icon-facebook"></span></a>
              <a href="#"><span class="icon-twitter"></span></a>
              <a href="#"><span class="icon-youtube"></span></a>
              <a href="#"><span class="icon-instagram"></span></a>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-12">
            <div class="copyright">
                <p>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>



            </div>
          </div>
        </div>
      </div>
    </div>
    

 
  <!-- .site-wrap -->


  <!-- loader -->
  <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#ff5e15"/></svg></div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.fancybox.min.js"></script>
  <script src="js/jquery.sticky.js"></script>
  <script src="js/jquery.mb.YTPlayer.min.js"></script>




  <script src="js/main.js"></script>
    </form>
</body>
</html>
