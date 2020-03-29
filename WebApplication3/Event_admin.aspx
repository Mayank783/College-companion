<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Event_admin.aspx.cs" Inherits="WebApplication3.Event_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

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
.topnav {
  overflow: hidden;
  background-color: #333;
    position: fixed;
  top: 0;
  width: 100%;
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
  .topnav.responsive {}
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




/* Create two equal columns that floats next to each other */
.column {
  float: left;
  width: 50%;
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
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













.content {
  padding: 16px;
}

.header{
margin-top: 45px;

}

.header, .footer {
  background-color: #f1f1f1;
  padding: 30px;
  text-align: center;
}

body  {
  

  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}




.right-corner-container {     
    position:fixed;     
    right:20px;     
    bottom:20px; 
}
.right-corner-container .right-corner-container-button {     
     height: 40px;     
     width: 62px;     
     border:none;    
     background-color:#6FB583;     
     border-radius: 62px;        /*Transform the square into rectangle, sync that value with the width/height*/    
          box-shadow:2px 2px 5px rgb(25, 73, 15);     
     cursor:pointer; 
}

</style>

</head>
<body>
    <form id="form1" runat="server">
    
        
<div class="header">
  <h2>Scroll Down</h2>
  <p>Scroll down to see the sticky effect.</p>
</div>

<div class="topnav" id="myTopnav">
  <a href="#home" class="active">Home</a>
  <a href="#news">News</a>
  <a href="#contact">Contact</a>
  <a href="#about">About</a>
  <a class="icon" onclick="nav_cross(this)">
    <div class="bar1"></div>
    <div class="bar2"></div>
    <div class="bar3"></div>
  </a>
</div>
        
    <div>    
        <asp:Image ID="Image1" runat="server" Width="205px" /><br />
    <asp:FileUpload ID="FileUpload1" runat="server" /><br/>
        <asp:Button ID="Button1" runat="server" Text="Upload" />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </div>
<div class="footer">
  <h2>Scroll Down</h2>
  <p>Scroll down to see the sticky effect.</p>
</div>

<script>



function nav_cross(y) {

 
     
   y.classList.toggle("change");

  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}




</script>
    </form>
</body>
</html>
