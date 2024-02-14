<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Form.WebForm1" %>

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
            <asp:Label ID="Label1" runat="server" Text="Student Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter a name" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <asp:Label ID="Label2" runat="server" Text="Mobile no."></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Out of Range Number" ForeColor="Red" MaximumValue="9999999999" MinimumValue="11111111111"></asp:RangeValidator>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Select Your Course"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>BCA</asp:ListItem>
                <asp:ListItem>BSC</asp:ListItem>
                <asp:ListItem>No Preference</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Marks1"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
        </p>
        <asp:Label ID="Label5" runat="server" Text="Marks2"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="Label6" runat="server" Text="Marks3"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label7" runat="server" Text="Marks4"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="Label8" runat="server" Text="Marks5"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label9" runat="server" Text="Total"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server" OnTextChanged="TextBox8_TextChanged"></asp:TextBox>
        <p>
            <asp:Label ID="Label10" runat="server" Text="Average"></asp:Label>
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label11" runat="server" Text="Result"></asp:Label>
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
        </p>
    </form>
</body>
</html>
