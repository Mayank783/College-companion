<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Exam_admin.aspx.cs" Inherits="WebApplication3.Result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">    
        
    <div style="font-family:Arial">
        
        <fieldset>
        <legend>Upload question paper or result </legend>
        <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" CausesValidation="True" Text="Question paper" GroupName="Exam" /><br/>
        <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" CausesValidation="True" Text="Result" GroupName="Exam" /><br/>
            
            <br/>
        </fieldset>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
     <div>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  OnRowCommand="GridView1_RowCommand" CellPadding="4" ForeColor="#333333" GridLines="None" Height="216px" Width="1079px">
             <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField HeaderText="Question_ paper" ShowHeader="false">
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
        
     </div>

         <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"  OnRowCommand="GridView2_RowCommand" CellPadding="4" ForeColor="#333333" GridLines="None" Height="216px" Width="1079px">
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
        
    </form>
</body>
</html>
