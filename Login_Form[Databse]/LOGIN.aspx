<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LOGIN.aspx.cs" Inherits="Login_Form_Databse_.LOGIN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        @import url('https://fonts.googleapis.com/css2?family=Sofia&family=Titan+One&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Changa:wght@400;500;700&display=swap');
        table {
            margin:auto;
            width:356px;
            border:2px black ridge;
            height: 375px;
        }
        .auto-style3 {
            width: 132px;
            text-align: center;
        }
        .auto-style4 {
            text-align: center;
            height: 46px;
        }
        .auto-style5 {
            height: 46px;
            width: 206px;
        }
        body {
            margin:0;
            padding:0;
            background-image:url(Images/bg.jpg);
            background-size:cover;

        }
        .login {
            position:absolute;
    left:50%;
    transform:translate(-50%,50%);
    width:350px;
    height:420px;
    box-sizing:border-box;
    
        }
        .user {
             width:100px;
    height:100px;
    overflow:hidden;
    top:calc(-108px/2);
    left:calc(50%, -50px);
        position:absolute;
    right: calc(35% );

        }
        #login {
        font-family: 'Titan One', cursive;
        font-size:36px;
        text-shadow: 0 0 30px #F9DBBD;
        color:white;
        text-align:center;
        
        }
        #uname, #pwd , #check{
           font-family: 'Changa', sans-serif;
           font-size:x-large;
        }
        table {
           box-shadow:  0 0 10px 5px rgba(0,0,0,0.6);
    border-radius:25px;
        }
        #txtUname, #txtPwd {
            font-family: 'Changa', sans-serif;
            border-radius:20px;
            font-size:larger;
            box-shadow: 1px 1px 4px 2px rgb(190, 187, 187);
            outline:none; text-decoration:none;
        }
        #RequiredFieldValidator1, #RequiredFieldValidator2 {
            text-shadow: 2px 2px 3px rgb(255, 255, 255);
        }
        .auto-style6 {
            width: 206px;
        }
        #btnLogin {
           background-color: #a40606;
            font-size: x-large;
            font-family: "Titan One", cursive;
            border-radius: 30px;
            background-image: linear-gradient(315deg, #a40606 0%, #d98324 74%);
           text-shadow: 3px 3px 4px rgb(238, 198, 198);
           outline:none; text-decoration:none;
        }
            #btnLogin:hover {
                transform:scale(1.3,1.2);
            }
    </style>
   <%-- <script type="text/javascript">
        function ShowPassword(checkbox) {
            var Password = document.getElementById('txtPwd');
            if (checkbox.checked == true) {
                Password.setAttribute("type", "text");
            } else {
                Password.setAttribute("type", "password");
            }
        }
    </script>--%>
</head>
<body>
    <form id="form1" runat="server">
    <div class="login">
        <img src="Images/users.png" alt="Alternate Text" class="user" />
        <table cellpadding="4" cellspacing="4" >
            <tr>
                <td" class="auto-style2" colspan="2" "></td>
            </tr>
            <tr>
                <td" class="auto-style2" colspan="2" "></td>
            </tr>
            <tr>
                <td id="login" class="auto-style2" colspan="2" >LOGIN FORM</td>
            </tr>
            <tr>
                <td class="auto-style3" id="uname">USER NAME</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtUname" runat="server" style="margin-left: 0px" Width="196px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUname" Display="Dynamic" ErrorMessage="Please Enter Your Name" ForeColor="Red" SetFocusOnError="True" Font-Bold="False" Font-Names="Arial Black" Font-Size="Medium"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" id="pwd">PASSWORD</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtPwd" runat="server" style="margin-left: 0px" Width="196px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" Display="Dynamic" ErrorMessage="Please Enter Your Password" ForeColor="Red" SetFocusOnError="True" Font-Bold="False" Font-Names="Arial Black" Font-Size="Medium"></asp:RequiredFieldValidator>
                </td>
                 
            </tr>
            <tr>
                <td></td>
                <td class="auto-style6"><input id="check" type="checkbox" onchange="document.getElementById('txtPwd').type = this.checked ? 'text' : 'password' " />Show Password</td>
                <%--<td><input type="checkbox" onclick="ShowPassword(this)" />Show Password</td>--%>

            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:Button ID="btnLogin" runat="server" Height="45px" Text="LOGIN" Width="133px" OnClick="btnLogin_Click" />
                </td>
            </tr>
            <tr>

            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
