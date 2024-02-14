<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Database_Connect.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Choose any<br />
            <br />
            1)
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/InsertPage.aspx">Insert</asp:HyperLink>
        </div>
        <p>
            2) <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/UpdatePage.aspx">Update</asp:HyperLink>
        </p>
        <p>
            3)
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/DeletePage.aspx">Delete</asp:HyperLink>
        </p>
        <p>
            4)
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/DisplayPage.aspx">Display</asp:HyperLink>
        </p>
    </form>
</body>
</html>
