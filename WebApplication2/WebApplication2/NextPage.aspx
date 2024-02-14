<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NextPage.aspx.cs" Inherits="YourNamespace.NextPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Next Page</title>
    <style>
        body {
            background-color: #121212;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
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
        }

        p {
            margin-bottom: 10px;
        }

        .info-label {
            display: inline-block;
            width: 120px;
            font-weight: bold;
        }

        .info-value {
            display: inline-block;
            color: #FF6B6B;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Next Page</h1>
            <p>
                Welcome, <span class="info-value"><%: Request.QueryString["FirstName"] %></span> <span class="info-value"><%: Request.QueryString["LastName"] %></span>!
            </p>
            <p>
                You have selected the course: <span class="info-value"><%: Request.QueryString["Course"] %></span>.
            </p>
        </div>
    </form>
</body>
</html>
