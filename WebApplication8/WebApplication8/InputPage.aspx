<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InputPage.aspx.cs" Inherits="SessionMgt.InputPage" %>

<!DOCTYPE html>
<html>
<head>
    <title>Input Page</title>
</head>
<body>
    <form runat="server">
        <div>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" runat="server" /><br />

            <asp:Button ID="btnCreateCookie" runat="server" Text="Create Cookie" OnClick="btnCreateCookie_Click" />
            <asp:Button ID="btnCheckCookie" runat="server" Text="Check Cookie" OnClick="btnCheckCookie_Click" />

            <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
            <asp:TextBox ID="TextBox2" runat="server" ReadOnly="true"></asp:TextBox>
        </div>
    </form>
</body>
</html>
