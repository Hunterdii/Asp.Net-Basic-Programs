<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QueryString.aspx.cs" Inherits="YourNamespace.QueryString" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>QueryString</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@900&display=swap');

        body {
            background-color: #121212;
            font-family: 'Roboto', sans-serif;
            color: #FFF;
        }

        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 2px solid #333;
            border-radius: 10px;
            background-color: #222;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
            font-weight: 900;
            text-transform: capitalize;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        .input-field {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #999;
            border-radius: 5px;
            background-color: #333;
            color: #FFF;
            font-family: 'Roboto', sans-serif;
            text-transform: capitalize;
        }

        .submit-btn {
            display: block;
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #FF6B6B;
            color: #FFF;
            font-size: 16px;
            text-align: center;
            cursor: pointer;
            transition: background-color 0.3s ease;
            font-family: 'Roboto', sans-serif;
            text-transform: capitalize;
        }

        .submit-btn:hover {
            background-color: #F7485A;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Query String</h1>
            <label for="txtFirstName">First Name:</label>
            <asp:TextBox ID="txtFirstName" CssClass="input-field" runat="server"></asp:TextBox>
            <br />
            <label for="txtLastName">Last Name:</label>
            <asp:TextBox ID="txtLastName" CssClass="input-field" runat="server"></asp:TextBox>
            <br />
            <label for="ddlCourse">Course:</label>
            <asp:DropDownList ID="ddlCourse" CssClass="input-field" runat="server">
                <asp:ListItem Text="CSF"></asp:ListItem>
                <asp:ListItem Text="Full Stack"></asp:ListItem>
                <asp:ListItem Text="Big Data Analytics"></asp:ListItem>
                <asp:ListItem Text="AI"></asp:ListItem>
                <asp:ListItem Text="Blockchain"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Button ID="btnSubmit" CssClass="submit-btn" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        </div>
    </form>
</body>
</html>
