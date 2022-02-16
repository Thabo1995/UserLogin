<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="UserLogin.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
            <h1>Register New User</h1>
        <br />
        <br />
        <br />
        <br />
        <div>
                <table align="center">
                     <tr>
                        <td>First Name</td>
                        <td>
                            <asp:TextBox ID="txtFirstname" placeholder="First Name" runat="server"></asp:TextBox></td>
                    </tr>
                         <tr>
                        <td>Last Name</td>
                        <td>
                            <asp:TextBox ID="txtLastname" placeholder="Last Name" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Username</td>
                        <td>
                            <asp:TextBox ID="txtUsername" placeholder="Username" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td>
                            <asp:TextBox ID="txtPasswrd" TextMode="Password" placeholder="Password" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Confirm Password</td>
                        <td>
                            <asp:TextBox ID="txtConfirmPasswrd" TextMode="Password" placeholder="Confirm Password" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" /></td>
                    </tr>
                     <tr>
                        <td></td>
                        <td>
                            <asp:Label ID="lblSuccessMessage" runat="server" ForeColor="green"></asp:Label></td>
                    </tr>
                      <tr>
                        <td></td>
                        <td>
                            <asp:Label ID="lblErrorMessage" runat="server" ForeColor="red" Text=""></asp:Label></td>
                    </tr>
                </table>
        </div>
    </form>
</body>
</html>
