<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NextPage.aspx.cs" Inherits="SessionMgt.NextPage" %>

<!DOCTYPE html>
<html>
<head>
    <title>Next Page</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-family: 'Roboto', Arial, sans-serif;
            background: linear-gradient(to right, #00b4db, #0083b0);
            animation: backgroundFade 8s ease-in-out infinite alternate;
        }

        @keyframes backgroundFade {
            0% {
                background: linear-gradient(to right, #00b4db, #0083b0);
            }
            50% {
                background: linear-gradient(to right, #0083b0, #00b4db);
            }
            100% {
                background: linear-gradient(to right, #00b4db, #0083b0);
            }
        }

        .container {
            max-width: 400px;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            font-family: 'Helvetica', sans-serif;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .button {
            padding: 10px 20px;
            background-color: #4caf50;
            color: white;
            border: none;
            border-radius: 3px;
            font-family: 'Arial', sans-serif;
            cursor: pointer;
            transition: transform 0.2s;
        }

        .button:hover,
        .button:active {
            transform: scale(0.95);
        }

        p {
            font-family: 'Verdana', sans-serif;
            font-size: 14px;
            margin-bottom: 10px;
        }

        b {
            font-weight: bold;
        }

        .label {
            display: inline-block;
            font-weight: normal;
        }
    </style>
</head>
<body>
    <form runat="server">
        <div class="container">
            <h2>Stored Inputs:</h2>
            <asp:Button ID="Button1" runat="server" Text="Show Session" OnClick="Button1_Click" CssClass="button" />
            <p><b>Name:</b> <asp:Label ID="Label1" runat="server" Visible="false" CssClass="label" /></p>
            <p><b>City:</b> <asp:Label ID="Label2" runat="server" Visible="false" CssClass="label" /></p>
            <p><b>Department:</b> <asp:Label ID="Label3" runat="server" Visible="false" CssClass="label" /></p>
            <p><b>Course:</b> <asp:Label ID="Label4" runat="server" Visible="false" CssClass="label" /></p>
            <p><b>Hobby:</b> <asp:Label ID="Label5" runat="server" Visible="false" CssClass="label" /></p>
            <p><b>Favorite Language:</b> <asp:Label ID="Label6" runat="server" Visible="false" CssClass="label" /></p>
            <p id="LabelTimeoutMessage" runat="server" style="display: none; color: red;"></p>
        </div>
    </form>
</body>
</html>
