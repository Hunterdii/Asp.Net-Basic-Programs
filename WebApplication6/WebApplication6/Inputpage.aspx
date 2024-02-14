<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InputPage.aspx.cs" Inherits="SessionMgt.InputPage" %>

<!DOCTYPE html>
<html>
<head>
    <title>Input Page</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-family: 'Roboto', Arial, sans-serif;
            background-color: #f5f5f5;
            animation: backgroundFade 8s ease-in-out infinite alternate;
        }
        
        @keyframes backgroundFade {
            0% {
                background-color: #f5f5f5;
            }
            50% {
                background-color: #45a049;
            }
            100% {
                background-color: #f5f5f5;
            }
        }
        
        .container {
            max-width: 400px;
            padding: 20px;
            background-color: #f5f5f5;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        
        .container label {
            font-weight: bold;
        }
        
        .container input[type="text"] {
            width: 100%;
            padding: 5px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        
        .container button {
            width: 100%;
            padding: 10px;
            background-color: #4caf50;
            color: white;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        
        .container button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <form runat="server">
        <div class="container">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" runat="server" /><br />

            <label for="city">City:</label>
            <input type="text" id="city" name="city" runat="server" /><br />

            <label for="department">Department:</label>
            <input type="text" id="department" name="department" runat="server" /><br />

            <label for="course">Course:</label>
            <input type="text" id="course" name="course" runat="server" /><br />

            <label for="hobby">Hobby:</label>
            <input type="text" id="hobby" name="hobby" runat="server" /><br />

            <label for="favLanguage">Favorite Language:</label>
            <input type="text" id="favLanguage" name="favLanguage" runat="server" /><br />

            <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
        </div>
    </form>
</body>
</html>
