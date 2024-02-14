<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeletePage.aspx.cs" Inherits="Database_Connect.DeletePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            ID
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Return to Menu" />
        <p>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
