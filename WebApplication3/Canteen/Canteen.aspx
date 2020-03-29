<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Canteen.aspx.cs" Inherits="WebApplication3.Canteen.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  
  <link href="https://fonts.googleapis.com/css?family=Cinzel:400,700|Montserrat:400,700|Roboto&display=swap" rel="stylesheet"> 

  <link rel="stylesheet" href="fonts/icomoon/style.css">

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">

  <link rel="stylesheet" href="css/jquery.fancybox.min.css">

  <link rel="stylesheet" href="css/bootstrap-datepicker.css">

  <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

  <link rel="stylesheet" href="css/aos.css">
  <link href="css/jquery.mb.YTPlayer.min.css" media="all" rel="stylesheet" type="text/css">

  <link rel="stylesheet" href="css/style.css">

    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
        }
    </style>

</head>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
    <form id="form1" runat="server">
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
            <a href="#" class="site-logo">
              <img src="images/logo.png" alt="Image" class="img-fluid">
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
                <li><a href="../Homepage.html" class="nav-link text-left">Home</a></li>
                <li><a href="about.html" class="nav-link text-left">About</a></li>
                <li><a href="../Exam_student.aspx" class="nav-link text-left">Examination</a></li>
                <li class="active"><a href="#" class="nav-link text-left">Canteen</a></li>
                <li><a href="contact.html" class="nav-link text-left">Contact</a></li>
              </ul>                                                                                                                                                                                                                                                                                         
            </nav>

          </div>
         
        </div>
      </div>

    </div>
    
    </div>

    
    
    
      
    
<div class="hero-2" style="background-image: url('images/hero_2.jpg');">
     <div class="container">
        <div class="row justify-content-center text-center align-items-center">
          <div class="col-md-8">
            <span class="sub-title">Welcome</span>
            <h2>Food For Everyone</h2>
          </div>
        </div>
      </div>
    </div>  
    <div class="site-section mt-5">
      <div class="container">

        <div class="row mb-5">
          <div class="col-12 section-title text-center mb-5">
            <h2 class="d-block">Menu</h2>
 
          </div>
        </div>
      You have <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label> products in your cart. <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Canteen/cart.aspx">Show Cart</asp:HyperLink>
<asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="FoodId" DataSourceID="SqlDataSource1" ForeColor="#333333" RepeatColumns="5" RepeatDirection="Horizontal"  OnItemCommand="DataList1_ItemCommand">
    <AlternatingItemStyle BackColor="White" />
    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <ItemStyle BackColor="#E3EAEB" />
    <ItemTemplate>
        <table class="auto-style1" style="border:0px;text-align:center;">
            <tr>
                <td style="text-transform:uppercase;">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Foodname") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Width="200px" Height="200px" ImageUrl='<%# Eval("image") %>' />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("FoodCost") %>'></asp:Label>
                    

              <div class="wine-actions">
                  Quantity <asp:DropDownList ID="DropDownList1" runat="server">
                
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                <!--<div class="rating">
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star-o"> </span>
                    
                </div>-->
                  <asp:LinkButton ID="Add" class="btn add" runat="server" CommandName="addtocart" CommandArgument='<%# Eval("FoodId")%>'><span class="icon-shopping-bag mr-3" >Add to Cart</span></asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
            </tr>
        </table>
        <br />
        <br />
    </ItemTemplate>
    <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
          </asp:DataList>
       <!-- <div class="row">
          
          <div class="col-lg-4 mb-5 col-md-6">

            <div class="wine_v_1 text-center pb-4">
              <a href="shop-single.html" class="thumbnail d-block mb-4"><img src="images/wine_2.png" alt="Image" class="img-fluid"></a>
              <div>
                <h3 class="heading mb-1"><a href="#">Samosa</a></h3>
                <span class="price">₹10.00</span>
              </div>
              

              <div class="wine-actions">
                  
                <h3 class="heading-2"><a href="#">Samosa</a></h3>
                <span class="price d-block">₹10.00</span>
                
                <div class="rating">
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star-o"></span>
                </div>
                
                <a href="cart.aspx" class="btn add"><span class="icon-shopping-bag mr-3"></span> Add to Cart</a>
              </div>
            </div>

          </div>

          <div class="col-lg-4 mb-5 col-md-6">
            <div class="wine_v_1 text-center pb-4">
              <a href="shop-single.html" class="thumbnail d-block mb-4"><img src="images/wine_3.png" alt="Image" class="img-fluid"></a>
              <div>
                <h3 class="heading mb-1"><a href="#">Burger</a></h3>
                <span class="price">₹20.00</span>
              </div>
              

              <div class="wine-actions">
                  
                <h3 class="heading-2"><a href="#">Burger</a></h3>
                <span class="price d-block"><del>₹30.00</del> ₹20.00</span>
                
                <div class="rating">
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star-o"></span>
                </div>
                
                <a href="cart.html" class="btn add"><span class="icon-shopping-bag mr-3"></span> Add to Cart</a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 mb-5 col-md-6">
            <div class="wine_v_1 text-center pb-4">
              <a href="shop-single.html" class="thumbnail d-block mb-4"><img src="images/wine_1.png" alt="Image" class="img-fluid"></a>
              <div>
                <h3 class="heading mb-1"><a href="#">Dosa</a></h3>
                <span class="price">₹60.00</span>
              </div>
              

              <div class="wine-actions">
                  
                <h3 class="heading-2"><a href="#">Dosa</a></h3>
                <span class="price d-block"><!-- <del>₹60.00</del>  ₹60.00</span>
                
                <div class="rating">
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star-o"></span>
                </div>
                
                <a href="cart.html" class="btn add"><span class="icon-shopping-bag mr-3"></span> Add to Cart</a>
              </div>
            </div>
          </div>


          <div class="col-lg-4 mb-5 col-md-6">

            <div class="wine_v_1 text-center pb-4">
              <a href="shop-single.html" class="thumbnail d-block mb-4"><img src="images/wine_2.png" alt="Image" class="img-fluid"></a>
              <div>
                <h3 class="heading mb-1"><a href="#"></a></h3>
                <span class="price">₹55.11</span>
              </div>
              

              <div class="wine-actions">
                  
                <h3 class="heading-2"><a href="#">Trius Cabernet France 2011</a></h3>
                <span class="price d-block">$629.00</span>
                
                <div class="rating">
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star-o"></span>
                </div>
                
                <a href="cart.html" class="btn add"><span class="icon-shopping-bag mr-3"></span> Add to Cart</a>
              </div>
            </div>

          </div>

          <div class="col-lg-4 mb-5 col-md-6">
            <div class="wine_v_1 text-center pb-4">
              <a href="shop-single.html" class="thumbnail d-block mb-4"><img src="images/wine_3.png" alt="Image" class="img-fluid"></a>
              <div>
                <h3 class="heading mb-1"><a href="#">Trius Cabernet France 2011</a></h3>
                <span class="price">$629.00</span>
              </div>
              

              <div class="wine-actions">
                  
                <h3 class="heading-2"><a href="#">Trius Cabernet France 2011</a></h3>
                <span class="price d-block"><del>$900.00</del> $629.00</span>
                
                <div class="rating">
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star-o"></span>
                </div>
                
                <a href="cart.html" class="btn add"><span class="icon-shopping-bag mr-3"></span> Add to Cart</a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 mb-5 col-md-6">
            <div class="wine_v_1 text-center pb-4">
              <a href="shop-single.html" class="thumbnail d-block mb-4"><img src="images/wine_1.png" alt="Image" class="img-fluid"></a>
              <div>
                <h3 class="heading mb-1"><a href="#">Trius Cabernet France 2011</a></h3>
                <span class="price">$629.00</span>
              </div>
              

              <div class="wine-actions">
                  
                <h3 class="heading-2"><a href="#">Trius Cabernet France 2011</a></h3>
                <span class="price d-block"><del>$900.00</del> $629.00</span>
                
                <div class="rating">
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star-o"></span>
                </div>
                
                <a href="cart.html" class="btn add"><span class="icon-shopping-bag mr-3"></span> Add to Cart</a>
              </div>
            </div>
          </div>


          <div class="col-lg-4 mb-5 col-md-6">

            <div class="wine_v_1 text-center pb-4">
              <a href="shop-single.html" class="thumbnail d-block mb-4"><img src="images/wine_2.png" alt="Image" class="img-fluid"></a>
              <div>
                <h3 class="heading mb-1"><a href="#">Trius Cabernet France 2011</a></h3>
                <span class="price">$629.00</span>
              </div>
              

              <div class="wine-actions">
                  
                <h3 class="heading-2"><a href="#">Trius Cabernet France 2011</a></h3>
                <span class="price d-block">$629.00</span>
                
                <div class="rating">
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star-o"></span>
                </div>
                
                <a href="cart.html" class="btn add"><span class="icon-shopping-bag mr-3"></span> Add to Cart</a>
              </div>
            </div>

          </div>

          <div class="col-lg-4 mb-5 col-md-6">
            <div class="wine_v_1 text-center pb-4">
              <a href="shop-single.html" class="thumbnail d-block mb-4"><img src="images/wine_3.png" alt="Image" class="img-fluid"></a>
              <div>
                <h3 class="heading mb-1"><a href="#">Trius Cabernet France 2011</a></h3>
                <span class="price">$629.00</span>
              </div>
              

              <div class="wine-actions">
                  
                <h3 class="heading-2"><a href="#">Trius Cabernet France 2011</a></h3>
                <span class="price d-block"><del>$900.00</del> $629.00</span>
                
                <div class="rating">
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star-o"></span>
                </div>
                
                <a href="cart.html" class="btn add"><span class="icon-shopping-bag mr-3"></span> Add to Cart</a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 mb-5 col-md-6">
            <div class="wine_v_1 text-center pb-4">
              <a href="shop-single.html" class="thumbnail d-block mb-4"><img src="images/wine_1.png" alt="Image" class="img-fluid"></a>
              <div>
                <h3 class="heading mb-1"><a href="#">Trius Cabernet France 2011</a></h3>
                <span class="price">$629.00</span>
              </div>
              

              <div class="wine-actions">
                  
                <h3 class="heading-2"><a href="#">Trius Cabernet France 2011</a></h3>
                <span class="price d-block"><del>$900.00</del> $629.00</span>
                
                <div class="rating">
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star"></span>
                  <span class="icon-star-o"></span>
                </div>
                
                <a href="cart.html" class="btn add"><span class="icon-shopping-bag mr-3"></span> Add to Cart</a>
              </div>
            </div>
          </div>

          

        </div>>
      </div>
    </div>

    

   <!--  <div class="site-section bg-light">
      <div class="container">
        <div class="owl-carousel owl-slide-3 owl-slide">
        
          <blockquote class="testimony">
            <img src="images/person_1.jpg" alt="Image">
            <p>&ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero sapiente beatae, nemo quasi quo neque consequatur rem porro reprehenderit, a dignissimos unde ut enim fugiat deleniti quae placeat in cumque?&rdquo;</p>
            <p class="small text-primary">&mdash; Collin Miller</p>
          </blockquote>
          <blockquote class="testimony">
            <img src="images/person_2.jpg" alt="Image">
            <p>&ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero sapiente beatae, nemo quasi quo neque consequatur rem porro reprehenderit, a dignissimos unde ut enim fugiat deleniti quae placeat in cumque?&rdquo;</p>
            <p class="small text-primary">&mdash; Harley Perkins</p>
          </blockquote>
          <blockquote class="testimony">
            <img src="images/person_3.jpg" alt="Image">
            <p>&ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero sapiente beatae, nemo quasi quo neque consequatur rem porro reprehenderit, a dignissimos unde ut enim fugiat deleniti quae placeat in cumque?&rdquo;</p>
            <p class="small text-primary">&mdash; Levi Morris</p>
          </blockquote>
          <blockquote class="testimony">
            <img src="images/person_1.jpg" alt="Image">
            <p>&ldquo;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero sapiente beatae, nemo quasi quo neque consequatur rem porro reprehenderit, a dignissimos unde ut enim fugiat deleniti quae placeat in cumque?&rdquo;</p>
            <p class="small text-primary">&mdash; Allie Smith</p>
          </blockquote>
        
        </div>
      </div>
    </div>
   -->

    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConString %>" SelectCommand="SELECT * FROM [menu]"></asp:SqlDataSource>
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
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved <i class="icon-heart text-danger" aria-hidden="true"></i> 
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>



            </div>
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
