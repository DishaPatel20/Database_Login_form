<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Login_Form_Databse_.Dashborad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
          @import url('https://fonts.googleapis.com/css2?family=Sofia&family=Titan+One&display=swap');
        #btnLogout {
            background-color: #a40606;
            font-size: x-large;
            font-family: "Titan One", cursive;
            border-radius: 30px;
            background-image: linear-gradient(315deg, #a40606 0%, #d98324 74%);
           text-shadow: 3px 3px 4px rgb(238, 198, 198);
           outline:none; text-decoration:none;
        }
        body {
              margin:0;
            padding:0;
            background-image:url(Images/bg.jpg);
            background-size:cover;
            font-family: "Titan One", cursive;
            color:white;
            font-size:36px;
             position:absolute;
            left:35%;
            top:40%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:Button ID="btnLogout" runat="server" Height="45px" OnClick="btnLogout_Click" Text="LOGOUT" Width="165px" />
        
    </div>
    </form>
</body>
</html>
