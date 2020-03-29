<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication3.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
  color:cornflowerblue;
  width:50%;
  padding:200px;
}
    body {
    background-image:url("img/about-plan.jpg");
    background-repeat:no-repeat;
    background-size:cover;
    }


span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
   
        <p>
            <asp:Label ID="Label1" Text="User ID" runat="server"></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label2" Text="Password" runat="server"></asp:Label><asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ViewStateMode="Enabled"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox2" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </p>
        <p>
                <asp:CheckBox ID="chkPersistCookie" runat="server" autopostback="false"/>
        </p>
       <p>            
            <asp:Button ID="Button1" runat="server" Text="Login"  ValidateRequestMode="Enabled" CausesValidation="true" OnClick="Button1_Click"/>            
            <asp:Button ID="Button2" runat="server" Text="Cancel" ValidateRequestMode="Disabled" CausesValidation="false" OnClick="Button2_Click"/>
        </p>
       </div>
    
        </div>
    </form>
</body>
</html>
