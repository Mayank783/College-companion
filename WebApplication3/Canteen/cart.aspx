<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="WebApplication3.Canteen.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

  
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
            <h2 class="d-block">Cart</h2>
          </div>
        </div>
        <div class="row mb-5">
          </div>
            <div class="site-blocks-table">
               You have <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> items in your cart.<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Canteen/Canteen.aspx">Continue Shopping</asp:HyperLink>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" ShowFooter="True" ViewStateMode="Enabled" OnRowDeleting="GridView1_RowDeleting">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="sno" HeaderText="Sno.">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FoodId" HeaderText="FoodId">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Foodname" HeaderText="Food Name">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FoodCost" HeaderText="Price" />
                        <asp:ImageField DataImageUrlField="image" HeaderText="Image">
                            <ControlStyle Height="150px" Width="150px" />
                            <ItemStyle Height="50px" Width="50px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="quantity" HeaderText="Quantity">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:CommandField HeaderText="Delete" ShowDeleteButton="True"  />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <!--<table class="table table-bordered">
                <thead>
                  <tr>
                    <th class="product-thumbnail">Image</th>
                    <th class="product-name">Product</th>
                    <th class="product-price">Price</th>
                    <th class="product-quantity">Quantity</th>
                    <th class="product-total">Total</th>
                    <th class="product-remove">Remove</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td class="product-thumbnail">
                      <img src="images/wine_1.png" alt="Image" class="img-fluid">
                    </td>
                    <td class="product-name">
                      <h2 class="h5 cart-product-title text-black">Trius Cabernet France 2011</h2>
                    </td>
                    <td>$55.00</td>
                    <td>
                      <div class="input-group mb-3" style="max-width: 120px;">
                        <div class="input-group-prepend">
                          <button class="btn btn-outline-primary js-btn-minus" type="button">&minus;</button>
                        </div>
                        <input type="text" class="form-control text-center border mr-0" value="1" placeholder=""
                          aria-label="Example text with button addon" aria-describedby="button-addon1">
                        <div class="input-group-append">
                          <button class="btn btn-outline-primary js-btn-plus" type="button">&plus;</button>
                        </div>
                      </div>
    
                    </td>
                    <td>$49.00</td>
                    <td><a href="#" class="btn btn-primary height-auto btn-sm">X</a></td>
                  </tr>
    
                  <tr>
                    <td class="product-thumbnail">
                      <img src="images/wine_2.png" alt="Image" class="img-fluid">
                    </td>
                    <td class="product-name">
                      <h2 class="h5 cart-product-title text-black">Trius Cabernet France 2011</h2>
                    </td>
                    <td>$49.00</td>
                    <td>
                      <div class="input-group mb-3" style="max-width: 120px;">
                        <div class="input-group-prepend">
                          <button class="btn btn-outline-primary js-btn-minus" type="button">&minus;</button>
                        </div>
                        <input type="text" class="form-control text-center border mr-0" value="1" placeholder=""
                          aria-label="Example text with button addon" aria-describedby="button-addon1">
                        <div class="input-group-append">
                          <button class="btn btn-outline-primary js-btn-plus" type="button">&plus;</button>
                        </div>
                      </div>
    
                    </td>
                    <td>$49.00</td>
                    <td><a href="#" class="btn btn-primary height-auto btn-sm">X</a></td>
                  </tr>
                </tbody>
              </table>-->
            </div>
          </div>
    
      </div>
    </div>
<!--
    <div class="site-section pt-5 bg-light">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <div class="row mb-5">
              <div class="col-md-6 mb-3 mb-md-0">
                <asp:Button id="order" class="btn btn-outline-primary btn-md btn-block" runat="server" Text="Place order"/>
              </div>
                 <div class="col-md-6">
                <button class="btn btn-outline-primary btn-md btn-block">Continue</button>
              </div>
            </div>
            <!--<div class="row">
              <div class="col-md-12">
                <label class="text-black h4" for="coupon">Coupon</label>
                <p>Enter your coupon code if you have one.</p>
              </div>
              <div class="col-md-8 mb-3 mb-md-0">
                <input type="text" class="form-control py-3" id="coupon" placeholder="Coupon Code">
              </div>
              <div class="col-md-4">
                <button class="btn btn-primary btn-md px-4">Apply Coupon</button>
              </div>
            </div>
          </div>
         -->
                <div class="row">
                  <div class="col-md-12">
                      <input type="hidden" runat="server" id="key" name="key" value="gtKFFx" />
                        <input type="hidden" runat="server" id="salt" name="salt" value="eCwWELxi" />
                    <input type="hidden" runat="server" id="hash" name="hash" value=""  />
                    <input type="hidden" runat="server" id="txnid" name="txnid" value="" />
                    <asp:LinkButton class="btn btn-primary btn-lg btn-block" runat="server" OnClick="Unnamed1_Click">Proceed To
                      Checkout</asp:LinkButton>
                  </div>
                </div>
              </div>
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
