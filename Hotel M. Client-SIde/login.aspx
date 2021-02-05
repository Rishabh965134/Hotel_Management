<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link href="design.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style28 {
            width: 53%;
            height: 307px;
        }
        .auto-style40 {
            color: #FFFFFF;
            font-size: x-large;
        }
        .auto-style39 {
            text-decoration: none;
            color: #FFFFFF;
            font-size: x-large;
        }
        .auto-style41 {
            text-align: center;
        }
        .auto-style42 {
        font-size: x-large;
        width: 190px;
        text-align: right;
        color: #FFFFFF;
    }
        .auto-style43 {
        width: 21px;
        color: #FFFFFF;
    }
        .auto-style44 {
            text-align: right;
        }
    .auto-style45 {
    }
        .auto-style48 {
            font-size: medium;
            width: 55%;
            height: 351px;
        }
        .auto-style49 {
            font-size: large;
            color: #FFFFFF;
        }
    .auto-style50 {
        font-size: x-large;
    }
    </style>
</head>
<body>
    <div style="background-image: url('images/abba.jpg')" class="auto-style41">
    
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
<table align="center" class="auto-style48" cellpadding="2" boder="0" cellspacing="0">
            <tr>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style44">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style42">Email</td>
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style44">
                    <asp:TextBox ID="txt_email" placeholder="Email" runat="server" Height="30px" Width="220px" CssClass="auto-style45"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style49" Text="    "></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style42">Password</td>
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style44">
                    <asp:TextBox ID="txt_password" placeholder="Password" runat="server" Height="30px" Width="220px" TextMode="Password" CssClass="auto-style45"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style49" Text="   "></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3" class="auto-style41">
                    <strong>
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style50" Text="    "></asp:Label>
                    </strong> </td>
            </tr>
            <tr>
                <td colspan="3" class="auto-style44">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Sign In" Height="45px" Width="130px" CssClass="roundbtn" />
                    <span class="auto-style45">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> </td>
            </tr>
        </table>
        <div class="auto-style41">
        <br />
        <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        <br />
            <span class="auto-style40">For any Registration / Login related issue contact </span>
            <asp:LinkButton ID="LinkButton11" runat="server" CssClass="auto-style39">www.glennmanor.com</asp:LinkButton>
<br />

    
        </div>

    
    </div>

</body>
</html>
</asp:Content>
