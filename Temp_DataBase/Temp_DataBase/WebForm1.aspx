<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Temp_DataBase.WebForm1" %>

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
            ID:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>
            Name:
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p>
            ERN:
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" ClientIDMode="Static" OnClick="Button1_Click" Text="Submit" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Next Page" />
        <p>
            &nbsp;</p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </form>
</body>
</html>
