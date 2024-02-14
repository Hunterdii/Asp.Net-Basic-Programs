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
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
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
        }
        
        .button:hover {
            background-color: #45a049;
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
            <button type="button" onclick="showStoredInputs()" class="button">Show Inputs</button>
            <p><b>Enrollment Number:</b> <span id="Label1" style="display: none;" class="label"></span></p>
            <p><b>Semester:</b> <span id="Label2" style="display: none;" class="label"></span></p>
            <p><b>Email:</b> <span id="Label3" style="display: none;" class="label"></span></p>
        </div>
    </form>

    <script>
        function getCookie(name) {
            var cookieName = name + "=";
            var decodedCookie = decodeURIComponent(document.cookie);
            var cookieArray = decodedCookie.split(';');
            for (var i = 0; i < cookieArray.length; i++) {
                var cookie = cookieArray[i];
                while (cookie.charAt(0) === ' ') {
                    cookie = cookie.substring(1);
                }
                if (cookie.indexOf(cookieName) === 0) {
                    return cookie.substring(cookieName.length, cookie.length);
                }
            }
            return "";
        }

        function showStoredInputs() {
            document.getElementById("Label1").innerHTML = getCookie("enrollment");
            document.getElementById("Label2").innerHTML = getCookie("semester");
            document.getElementById("Label3").innerHTML = getCookie("email");

            document.getElementById("Label1").style.display = "block";
            document.getElementById("Label2").style.display = "block";
            document.getElementById("Label3").style.display = "block";
        }
    </script>
</body>
</html>
