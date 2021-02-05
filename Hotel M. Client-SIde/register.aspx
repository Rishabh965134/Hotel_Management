<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <html xmlns="http://www.w3.org/1999/xhtml">
 <head>
    <title></title>
     <link href="design.css" rel="stylesheet" />
    <style type="text/css">
        
 

        .auto-style30 {
            width: 22px;
        }
                
        .auto-style32 {
            width: 111px;
            text-align: right;
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style33 {
            text-align: right;
        }
        
        .auto-style35 {
            text-align: left;
        }
        .auto-style36 {
            text-align: center;
        }
        .auto-style37 {
            text-decoration: none;
            color: #000000;
        }
        
        .auto-style38 {
            width: 902px;
            height: 777px;
        }
        .auto-style39 {
            text-decoration: none;
            color: #FFFFFF;
            font-size: x-large;
        }
        .auto-style40 {
            color: #FFFFFF;
            font-size: x-large;
        }
        
        .auto-style42 {
            font-size: x-large;
        }
        
        </style>
</head>
<body>
    <div class="auto-style35" style="background-image: url('images/hotel1.jpeg')">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        
        <table align="center" class="auto-style38">
            <tr>
                <td class="auto-style36" colspan="2">&nbsp;</td>
                <td class="auto-style33">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">Name</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style33">
                    <asp:DropDownList ID="ddl_gender" runat="server" Height="30px" Width="66px">
                        <asp:ListItem>Mr</asp:ListItem>
                        <asp:ListItem>Ms</asp:ListItem>
                        <asp:ListItem>Mrs</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_name" placeholder="Full Name" runat="server" Height="30px" Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style32">Mobile No</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style33">
                    <asp:TextBox ID="txt_mobile" placeholder="Mobile Number" runat="server" Height="30px" Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style32">Address</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style33">
                    <asp:TextBox ID="txt_address" runat="server" Height="30px" Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style32">Email</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style33">
                    <asp:TextBox ID="txt_email" placeholder="Email" runat="server" Height="30px" Width="220px"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style32">Password</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style33">
                    <asp:TextBox ID="txt_password" placeholder="Password" runat="server" Height="30px" Width="220px" TextMode="Password"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style36" colspan="3">
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style42" Text="    "></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style33" colspan="3">
                    <asp:Button ID="btn_signUp" runat="server" CssClass="roundbtn" Height="45px" Width="130px" Text="Sign Up"  OnClick="btn_signUp_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
        </table>
        <div class="auto-style36">
            <asp:LinkButton ID="LinkButton10" runat="server" CssClass="auto-style37">Forgot Password...</asp:LinkButton>
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
        <br />
            <span class="auto-style40">For any Registration / Login related issue contact </span>
            <asp:LinkButton ID="LinkButton11" runat="server" CssClass="auto-style39">www.glennmanor.com</asp:LinkButton>
            <br />
        <br />

        
        </div>

        
    </div>
    </body>
</html>
</asp:Content>