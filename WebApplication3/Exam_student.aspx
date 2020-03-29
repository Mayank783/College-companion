<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Exam_student.aspx.cs" Inherits="WebApplication3.Exam_student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <link href="https://fonts.googleapis.com/css?family=Cinzel:400,700|Montserrat:400,700|Roboto&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="Canteen/fonts/icomoon/style.css">

    <link rel="stylesheet" href="Canteen/css/bootstrap.min.css">
    <link rel="stylesheet" href="Canteen/css/jquery-ui.css">
    <link rel="stylesheet" href="Canteen/css/owl.carousel.min.css">
    <link rel="stylesheet" href="Canteen/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="Canteen/css/owl.theme.default.min.css">

    <link rel="stylesheet" href="Canteen/css/jquery.fancybox.min.css">

    <link rel="stylesheet" href="Canteen/css/bootstrap-datepicker.css">

    <link rel="stylesheet" href="Canteen/fonts/flaticon/font/flaticon.css">

    <link rel="stylesheet" href="Canteen/css/aos.css">
    <link href="Canteen/css/jquery.mb.YTPlayer.min.css" media="all" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="Canteen/css/style.css">

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
                            <a href="index.html" class="site-logo">
                                <img src="Canteen/images/logo.png" alt="Image" class="img-fluid">
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
                                        <li><a href="Homepage.html" class="nav-link text-left">Home</a></li>
                                        <li><a href="about.html" class="nav-link text-left">About</a></li>
                                        <li class="active"><a href="#" class="nav-link text-left">Examination</a></li>
                                        <li ><a href="Canteen/Canteen.aspx" class="nav-link text-left">Canteen</a></li>
                                        <li><a href="contact.html" class="nav-link text-left">Contact</a></li>
                                    </ul>
                                </nav>

                            </div>

                        </div>
                    </div>

                </div>

            </div>






            <div class="hero-2" style="background-image: url('Canteen/images/Books.jpg');">
                <div class="container">
                    <div class="row justify-content-center text-center align-items-center">
                        <div class="col-md-8">
                            
                            <h2>Exam And Results</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="site-section mt-5">
                <div class="container">

                    
                        <div>

                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" CellPadding="4" ForeColor="#333333" GridLines="None" Height="216px" Width="1080px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:TemplateField HeaderText="Question paper" ShowHeader="false">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("File") %>' CommandName="Download" Text='<%# Eval("File") %>'></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView2_RowCommand" CellPadding="4" ForeColor="#333333" GridLines="None" Height="216px" Width="1079px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:TemplateField HeaderText="Result" ShowHeader="false">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("File") %>' CommandName="Download" Text='<%# Eval("File") %>'></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
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
                                                Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                                                All rights reserved <i class="icon-heart text-danger" aria-hidden="true"></i>
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
                    <div id="loader" class="show fullscreen">
                        <svg class="circular" width="48px" height="48px">
                            <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
                            <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#ff5e15" />
                        </svg></div>

                    <script src="Canteen/js/jquery-3.3.1.min.js"></script>
                    <script src="Canteen/js/jquery-migrate-3.0.1.min.js"></script>
                    <script src="Canteen/js/jquery-ui.js"></script>
                    <script src="Canteen/js/popper.min.js"></script>
                    <script src="Canteen/js/bootstrap.min.js"></script>
                    <script src="Canteen/js/owl.carousel.min.js"></script>
                    <script src="Canteen/js/jquery.stellar.min.js"></script>
                    <script src="Canteen/js/jquery.countdown.min.js"></script>
                    <script src="Canteen/js/bootstrap-datepicker.min.js"></script>
                    <script src="Canteen/js/jquery.easing.1.3.js"></script>
                    <script src="Canteen/js/aos.js"></script>
                    <script src="Canteen/js/jquery.fancybox.min.js"></script>
                    <script src="Canteen/js/jquery.sticky.js"></script>
                    <script src="Canteen/js/jquery.mb.YTPlayer.min.js"></script>




                    <script src="Canteen/js/main.js"></script>
    </form>
</body>
</html>
