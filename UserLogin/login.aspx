<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="UserLogin.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome</title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
        }
        .auto-style2 {
            margin-left: 80px;
        }
        .auto-style3 {
            margin-left: 720px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
            <h1>Login</h1>
        <h1>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/register.aspx">Dont Have account, Create New Account</asp:HyperLink>
        </h1>
        <p>&nbsp;</p>
        
        <div>
            <table align="center" class="auto-style2">
                <tr>
                    <td class="auto-style1">
                        <br />

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">User name</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtUsername" placeholder="Username" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">Password</td> 
                    <td class="auto-style1">
                        <asp:TextBox ID="txtConfirmPasswrd" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style1">
                    <asp:Button ID="btnLogin" colspan="20" runat="server" Text="Login" Width="165px" OnClick="btnLogin_Click" />

                    </td>
              </tr>
                    </table>
        </div>
        <p class="auto-style3">
            <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
        </p>
    </form>
</body>
</html>
