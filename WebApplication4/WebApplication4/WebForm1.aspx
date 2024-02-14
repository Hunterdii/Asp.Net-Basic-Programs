<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="StudentResult.StudentResultPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Result</title>
   <style>
    body {
        font-family: 'Arial Black', sans-serif;
        background: linear-gradient(to right, #ff0000, #ff7f00, #ffff00, #00ff00, #0000ff, #8b00ff);
        background-size: 600% 100%;
        animation: rainbowBackground 10s ease infinite;
    }

    @keyframes rainbowBackground {
        0% {
            background-position: 0% 50%;
        }
        100% {
            background-position: 100% 50%;
        }
    }

    .container {
        width: 500px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    h1 {
        text-align: center;
        margin-bottom: 20px;
    }

    label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }

    input[type="text"],
    select {
        width: 100%;
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    button {
        padding: 8px 20px;
        background-color: #4CAF50;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    button:hover {
        background-color: #45a049;
    }

    .result {
        margin-top: 20px;
        padding: 10px;
        background-color: #f0f0f0;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    .result h3 {
        margin-top: 0;
    }

    .result p {
        margin: 5px 0;
    }
</style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Student Result Calculator</h1>
            <label for="txtName">Name:</label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br />

            <label for="cboDepartment">Department:</label>
            <asp:DropDownList ID="cboDepartment" runat="server">
                <asp:ListItem Value="BCA">BCA</asp:ListItem>
                <asp:ListItem Value="IMCA">IMCA</asp:ListItem>
                <asp:ListItem Value="BScIT">BScIT</asp:ListItem>
            </asp:DropDownList><br />

            <label for="cboCourse">Course:</label>
            <asp:DropDownList ID="cboCourse" runat="server">
                <asp:ListItem Value="AI">AI</asp:ListItem>
                <asp:ListItem Value="Blockchain">Blockchain</asp:ListItem>
                <asp:ListItem Value="Cyber Security and Forensic">Cyber Security and Forensic</asp:ListItem>
                <asp:ListItem Value="Full Stack">Full Stack</asp:ListItem>
                <asp:ListItem Value="Big Data Analytics">Big Data Analytics</asp:ListItem>
            </asp:DropDownList><br />

            <label for="txtCoreJava">Core Java:</label>
            <asp:TextBox ID="txtCoreJava" runat="server"></asp:TextBox><br />

            <label for="txtAspNet">ASP.NET:</label>
            <asp:TextBox ID="txtAspNet" runat="server"></asp:TextBox><br />

            <label for="txtDataStructure">Data Structure:</label>
            <asp:TextBox ID="txtDataStructure" runat="server"></asp:TextBox><br />

            <label for="txtOperatingSystem">Operating System:</label>
            <asp:TextBox ID="txtOperatingSystem" runat="server"></asp:TextBox><br />

            <label for="txtDCN">DCN:</label>
            <asp:TextBox ID="txtDCN" runat="server"></asp:TextBox><br />

            <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" /><br />

            <div class="result" runat="server" id="divResult" visible="false">
                <h3>Result:</h3>
                <p><asp:Label ID="lblName" runat="server"></asp:Label></p>
                <p><asp:Label ID="lblDepartment" runat="server"></asp:Label></p>
                <p><asp:Label ID="lblCourse" runat="server"></asp:Label></p>
                <p><asp:Label ID="lblTotalMarks" runat="server"></asp:Label></p>
                <p><asp:Label ID="lblAverage" runat="server"></asp:Label></p>
                <p><asp:Label ID="lblGrade" runat="server"></asp:Label></p>
                <p><asp:Label ID="lblGradeDescription" runat="server"></asp:Label></p>
            </div>
        </div>
    </form>
</body>
</html>
