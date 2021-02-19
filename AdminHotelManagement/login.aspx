<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="design.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 400px;
            height: 471px;
            border: 1px solid #000000;
        }
        .auto-style4 {
            text-align: center;
            height: 157px;
        }
        .newStyle1 {
            background-image: url('images/background.png');
        }
    </style>
</head>
<body style="height: 820px; width: 1205px; text-align: center;" class="newStyle1">
    <form runat="server">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <table align="center" cellpadding="2" cellspacing="0" class="auto-style1" CssClass="table">
                <tr valign="top">
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr valign="top">
                    <td class="auto-style4">
                        Username/Email<br />
                        <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                        <br />
                        Password<br />
                        <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr valign="top">
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" CssClass="roundbtn" Text="Sign In" Height="40px" OnClick="Button1_Click" Width="90px" />
                        <br />
                        <asp:LinkButton ID="LinkButton1" runat="server" style="color: #000000">Sign Up</asp:LinkButton>
                        <br />
                        <asp:LinkButton ID="LinkButton2" runat="server" style="color: #000000">Forgot Password</asp:LinkButton>
                    </td>
                </tr>
            </table>
        <br />
        <br />
<br />

        </form>
</body>
</html>
