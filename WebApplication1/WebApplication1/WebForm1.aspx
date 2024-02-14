<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Beautiful Page with Cool Animations</title>
    <style>
        @keyframes slideIn {
            0% {
                opacity: 0;
                transform: translateY(-50px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }
        
        @keyframes gradientAnimation {
            0% {
                background-position: 0% 50%;
            }
            50% {
                background-position: 100% 50%;
            }
            100% {
                background-position: 0% 50%;
            }
        }
        
        body {
            font-family: Arial, sans-serif;
            animation: gradientAnimation 10s ease infinite;
            background: linear-gradient(135deg, #F093FB 0%, #F5576C 100%);
            background-size: 400% 400%;
        }
        
        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            animation: slideIn 1s ease-in-out;
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        
        .form-group input[type="text"] {
            width: 100%;
            padding: 8px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 3px;
            transition: border-color 0.3s ease;
        }
        
        .form-group input[type="text"]:focus {
            border-color: #0099ff;
        }
        
        .form-group .error-message {
            color: red;
            font-size: 12px;
            margin-top: 5px;
        }
        
        .form-group .success-message {
            color: #009900;
            font-size: 12px;
            margin-top: 5px;
        }
        
        .button-container {
            text-align: center;
        }
        
        .submit-button {
            padding: 10px 20px;
            font-size: 14px;
            font-weight: bold;
            color: #fff;
            background-color: #0099ff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        
        .submit-button:hover {
            background-color: #0077cc;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="form-group">
                <label for="TextBox1">Name:</label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox-animation"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ControlToValidate="TextBox1" ErrorMessage="* Please Enter Full Name"
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="TextBox2">Phone no:</label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox-animation" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server"
                    ControlToValidate="TextBox2" ErrorMessage="*Invalid Number" ForeColor="Black"
                    MaximumValue="99999999999" MinimumValue="11111111111"></asp:RangeValidator>
            </div>

            <div class="form-group">
                <label for="TextBox3">Email ID:</label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox-animation"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                    ControlToValidate="TextBox3" ErrorMessage="*Invalid Email" ForeColor="#009900"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>

            <div class="form-group">
                <label for="TextBox4">Address:</label>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox-animation"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ControlToValidate="TextBox4" ErrorMessage="*Please Enter correct Address"
                    ForeColor="Maroon"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="TextBox5">Confirm Email ID:</label>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox-animation"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server"
                    ControlToCompare="TextBox3" ControlToValidate="TextBox5"
                    ErrorMessage="*Confirm Email with Previous" ForeColor="Blue"></asp:CompareValidator>
            </div>

            <div class="form-group">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </div>

            <div class="button-container">
                <asp:Button ID="Button1" runat="server" BorderColor="#FF0066"
                    onclick="Button1_Click" Text="SUBMIT" CssClass="submit-button" />
            </div>
        </div>
    </form>
</body>
</html>
