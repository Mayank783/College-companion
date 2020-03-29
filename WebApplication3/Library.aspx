<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Library.aspx.cs" Inherits="WebApplication3.Library" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
            <style>
body {
  background-image: url("~/img/library.jpg");
  background-repeat: repeat-x;
  background-size: 100%;
}
.col:hover {
background:  linear-gradient(to left, #33ccff 0%, #99ff99 100%);
}
#col1:hover{
background: red;
}
table {
  border-collapse: collapse;
  width: 100%;
}
th, td {
  padding: 8px;
  text-align: left;
}


</style>
</head>
<body>
    <form id="form1" runat="server">
        
<h2>Library Management</h2>
        
  <table id="t1"><tr> <td><b  style="color: Pink;">Issue date:</b></td>
  <td ><asp:Textbox id="textbox1" CssClass="col" type ="date" name="issue date" runat="server"/></td></tr>
  
  <tr><td><b style="color:#808080;">Return date:</b></td>
  <td><asp:Textbox id="textbox2" CssClass="col" type="date" name="return date" runat="server"/></td></tr>
 
  <tr><td><b style="color:#808080;">Add Book:</b></td>
  <td ><asp:Textbox id="textbox3" CssClass="col" type="text" name="add book" runat="server"/></td></tr>

  <tr><td><b style="color:#808080;">Delete book:</b></td>
  <td><asp:Textbox id="textbox4" CssClass="col" type="text" name="delete book" runat="server"/></td></tr>
  
  <tr><td><asp:Button ID="Button1" runat="server" Text="Add Book" />&nbsp
      <asp:Button ID="Button2" runat="server" Text="Delete Book" />&nbsp
  <asp:Textbox  type= "button" name="cancel" value="cancel" runat="server"/></td>  </tr></table>

   
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Book_name" HeaderText="Book_name" SortExpression="Book_name" />
                <asp:BoundField DataField="Due_date" HeaderText="Due_date" SortExpression="Due_date" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConString %>" SelectCommand="SELECT [Book name] AS Book_name, [Due date] AS Due_date FROM [Books]"></asp:SqlDataSource>
    </form>
</body>
</html>
