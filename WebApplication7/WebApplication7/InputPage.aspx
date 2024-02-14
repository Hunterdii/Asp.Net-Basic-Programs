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
            font-family: Arial, sans-serif;
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
        
        .container input[type="text"],
        .container input[type="email"],
        .container select {
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
            <label for="enrollment">Enrollment Number:</label>
            <input type="text" id="enrollment" name="enrollment" runat="server" /><br />

            <label for="semester">Semester:</label>
            <select id="semester" name="semester" runat="server">
                <option value="1">Semester 1</option>
                <option value="2">Semester 2</option>
                <option value="3">Semester 3</option>
                <option value="4">Semester 4</option>
                <option value="5">Semester 5</option>
                <option value="6">Semester 6</option>
            </select><br />

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" runat="server" /><br />

            <label for="confirmEmail">Confirm Email:</label>
            <input type="email" id="confirmEmail" name="confirmEmail" runat="server" /><br />

            <asp:CompareValidator ID="confirmEmailValidator" runat="server"
                ControlToValidate="confirmEmail"
                ControlToCompare="email"
                Operator="Equal"
                ErrorMessage="Email and Confirm Email must match."
                CssClass="error-message" /><br />

            <button type="button" onclick="saveInputs()">Submit</button>
        </div>
    </form>
    
    <script>
        function saveInputs() {
            var enrollment = document.getElementById("enrollment").value;
            var semester = document.getElementById("semester").value;
            var email = document.getElementById("email").value;
            var confirmEmail = document.getElementById("confirmEmail").value;

            if (email !== confirmEmail) {
                alert("Email and Confirm Email must match.");
                return;
            }
            document.cookie = "enrollment=" + enrollment;
            document.cookie = "semester=" + semester;
            document.cookie = "email=" + email;

            window.location.href = "NextPage.aspx";
        }
    </script>
</body>
</html>
