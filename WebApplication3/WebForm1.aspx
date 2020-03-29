<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
.bar1, .bar2, .bar3 {
  width: 15px;
  height: 1px;
  background-color: white;
  margin: 4px;
  transition: 0.4s;
}

.change .bar1 {-webkit-transform: rotate(-45deg) translate(2px, 4px);
  transform: rotate(-45deg) translate(2px, 4px);
  
}

.change .bar2 {opacity: 0;}

.change .bar3 {
  -webkit-transform: rotate(45deg) translate(-3px, -9px);
  transform: rotate(45deg) translate(-3px, -9px);
}




/* Create two equal columns that floats next to each other */
.column {
  float: left;
  width: 50%;
  padding: 10px;2
  height: 491px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
* {
  box-sizing: border-box;
}






img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 100%;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}



.active {
  background-color: #717171;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}



.content {
  padding: 16px;
}
.sticky {
  position: fixed;
  top: 0;
  width: 100%;
}
.sticky + .content {
  padding-top: 60px;
}


.header, .footer {
  background-color: #f1f1f1;
  padding: 30px;
  text-align: center;
}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}

.topnav .icon {
  display: none;
}

@media screen and (max-width: 600px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
}

@media screen and (max-width: 600px) {
  .topnav.responsive {position: relative;}
  .topnav.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
    
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
}
</style>

</head>
<body>
    <div class="header">
  <h2>Scroll Down</h2>
  <p>Scroll down to see the sticky effect.</p>
</div>

<div class="topnav" id="myTopnav">
  <a href="#home" class="active">Home</a>
  <a href="#news">News</a>
  <a href="#contact">Contact</a>
  <a href="#about">About</a>
  <a  class="icon" onclick="nav_cross(this)">
    <div class="bar1"></div>
    <div class="bar2"></div>
    <div class="bar3"></div>
  </a>
</div>

    
<form id="form1" runat="server">  
  

<div class="content" style="padding-left:16px">

 <div class="row">
     
  <div class="column" style="background-color:#aaa;">
    
        <div class="login-div">
    <fieldset >
        <legend>Login Form</legend>
                
            <p>
            <asp:Label ID="Label1" Text="User ID" runat="server"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" ToolTip="user name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </p>
        <p>
                <asp:CheckBox ID="chkPersistCookie" runat="server" autopostback="false"/>
        </p>
        <p>
            <asp:Label ID="Label2" Text="Password" runat="server"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ViewStateMode="Enabled"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox2" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </p>
       <p>            
            <asp:Button ID="Button1" CssClass="btlog" runat="server" Text="Login"  ValidateRequestMode="Enabled" CausesValidation="true" OnClick="Button1_Click"/>            
            <asp:Button ID="Button2" CssClass="btlog" runat="server" Text="Cancel" ValidateRequestMode="Disabled" CausesValidation="false" OnClick="Button2_Click"/>
        </p>
       
        </fieldset>
        </div>
        
  </div>
  <div class="column" style="background-color:#bbb;">
    
            <fieldset style="width:280px">
            <legend>Registration Form</legend>
            <table>            
                <tr>
                     <td>User Name:</td><td> <asp:textbox id="txt1" runat="server" ></asp:textbox></td>
                     <td> <asp:RequiredFieldValidator ID="validfname" runat="server" ControlToValidate="txt1" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Password:</td><td><asp:textbox ID="pwd" runat="server" TextMode="Password"></asp:textbox></td>
                    <td><asp:RequiredFieldValidator ID="validpwd" runat="server" ControlToValidate="pwd" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Confirm Password:</td><td><asp:textbox ID="Textbox3" runat="server" TextMode="Password"></asp:textbox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="Textbox3"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Email:</td><td><asp:TextBox ID="email" runat="server" TextMode="Email" ></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="validemail" runat="server" ControlToValidate="email" ErrorMessage="required!" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Mobile:</td><td><asp:TextBox ID="mobile" runat="server" TextMode ="Phone"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>DOB: </td><td><asp:TextBox ID="dob" runat="server" TextMode="Date" Width="168px"></asp:TextBox> </td>
                    <td><asp:RequiredFieldValidator ID="validdob" runat="server" ControlToValidate="dob" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>                
                <tr>
                    <td>Course: </td><td><asp:DropDownList ID="course" runat="server" datavaluefield="Course" Width="173px">
                        <asp:ListItem text="Select Course" Value="-1"></asp:ListItem>
                        <asp:ListItem Text ="BTech" Value ="0"></asp:ListItem>
                        <asp:ListItem Text ="MCA" Value ="1"></asp:ListItem>
                        <asp:ListItem Text ="MBA" Value="2"></asp:ListItem>
                                         </asp:DropDownList></td>
                    <td><asp:RequiredFieldValidator InitialValue="-1" ID="validcourse" runat="server" ControlToValidate="course" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Profile: </td>
                </tr>
                <tr>
                    <td></td><td><asp:FileUpload ID="imgupload" runat="server" Enabled="true" /></td>
                </tr>
               <tr>
                    <td><asp:Button ID="btn1" runat="server" Text="Submit" OnClick="btn1_Click"></asp:Button></td>
                    <td><asp:Button ID="btn2" runat="server" Text="Reset"></asp:Button></td>
                </tr>                
            </table>
          </fieldset>
      </div>
     </div>
    </div>
      </form>

  
<div class="footer">
  <h2>Scroll Down</h2>
  <p>Scroll down to see the sticky effect.</p>
</div>

<script>
window.onscroll = function() {nav_sticky()};

var myTopnav = document.getElementById("myTopnav");
var sticky = myTopnav.offsetTop;

function nav_sticky() {
  
  
     if (window.pageYOffset >= sticky) {
    myTopnav.classList.add("sticky")
  } else {
    myTopnav.classList.remove("sticky");
  }
}


function nav_cross(y) {
 if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) 
 {
 document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
 }
 
     
   y.classList.toggle("change");

  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}

var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  
  slides[slideIndex-1].style.display = "block";  
  
}



</script>

</body>
</html>
    
    
