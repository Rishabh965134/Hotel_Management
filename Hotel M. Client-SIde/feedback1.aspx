<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback1.aspx.cs" Inherits="feedback1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .error{
            color:red;
        }

        .auto-style9 {
            font-size: large;
            font-family: Georgia, "Times New Roman", Times, serif;
        }
        .auto-style11 {
            width: 358px;
            text-align: right;
            font-family: Georgia, "Times New Roman", Times, serif;
        }
        .auto-style12 {
            width: 379px;
        }
        .auto-style13 {
            font-family: Georgia, "Times New Roman", Times, serif;
        }
        .auto-style14 {
            width: 379px;
            font-family: Georgia, "Times New Roman", Times, serif;
        }
        .auto-style15 {
            font-family: Georgia, "Times New Roman", Times, serif;
            position: absolute;
            top: 341px;
            left: 771px;
            z-index: 1;
            height: 22px;
        }
        .auto-style16 {
            font-family: Georgia, "Times New Roman", Times, serif;
            position: absolute;
            top: 463px;
            left: 778px;
            z-index: 1;
            width: 87px;
            margin-top: 0px;
        }
        .auto-style17 {
            font-family: Georgia, "Times New Roman", Times, serif;
            position: absolute;
            top: 596px;
            left: 778px;
            z-index: 1;
        }
        .auto-style18 {
            font-family: Georgia, "Times New Roman", Times, serif;
            position: absolute;
            top: 736px;
            left: 781px;
            z-index: 1;
            bottom: 162px;
            width: 91px;
        }
        .auto-style19 {
            font-family: Georgia, "Times New Roman", Times, serif;
            position: absolute;
            top: 850px;
            left: 773px;
            z-index: 1;
        }
        .auto-style20 {
            font-family: Georgia, "Times New Roman", Times, serif;
            position: absolute;
            top: 978px;
            left: 773px;
            z-index: 1;
        }
        .auto-style21 {
            font-family: Georgia, "Times New Roman", Times, serif;
            font-weight: bold;
            background-color: #996600;
        }
        .auto-style22 {
            width: 358px;
            font-family: Georgia, "Times New Roman", Times, serif;
        }
        .auto-style23 {
            font-family: Georgia, "Times New Roman", Times, serif;
            text-align: center;
        }
        .auto-style24 {
            font-size: xx-large;
        }
        .auto-style25 {
            background-color: #996600;
        }
        .auto-style26 {
            background-color: #999966;
        }
        .auto-style27 {
            font-weight: bold;
            background-color: #996600;
        }
        .auto-style28 {
            width: 358px;
            font-family: Georgia, "Times New Roman", Times, serif;
            text-align: center;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server" class="auto-style26">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style23" colspan="3">
                    <asp:Panel ID="Panel1" runat="server">
                        <br class="auto-style25" />
                        <strong aria-dropeffect="popup"><span class="auto-style24"><span class="auto-style25">Glenn Manor Hotel &amp; Restaurrent</span><br /> </span></strong>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style12"><span class="auto-style9" style="color: #663300">
            You&#39;ve got Feedback to our Hotel Management Services ?</span><br class="auto-style9" style="color: #663300" />
            <span class="auto-style9" style="color: #663300">Tell Us !</span></td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">Name :</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox1" runat="server" Width="147px" CssClass="auto-style13"></asp:TextBox>
                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">Email :</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox2" runat="server" Width="147px" CssClass="auto-style13"></asp:TextBox>
                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">Address :</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox3" runat="server" Width="147px" CssClass="auto-style13"></asp:TextBox>
                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">Food Quality :</td>
                <td class="auto-style12">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="107px">
                <asp:ListItem>Excellent</asp:ListItem>
                <asp:ListItem>Good</asp:ListItem>
                <asp:ListItem>Average</asp:ListItem>
                <asp:ListItem>Dissatisfied</asp:ListItem>
            </asp:RadioButtonList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadioButtonList1" CssClass="auto-style15" ErrorMessage="* Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">Room Quality :</td>
                <td class="auto-style12">

            <asp:RadioButtonList ID="RadioButtonList2" runat="server" Width="107px">
                <asp:ListItem>Excellent</asp:ListItem>
                <asp:ListItem>Good</asp:ListItem>
                <asp:ListItem>Average</asp:ListItem>
                <asp:ListItem>Dissatisfied</asp:ListItem>
            </asp:RadioButtonList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="RadioButtonList2" CssClass="auto-style16" ErrorMessage="*Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">Overall Service Quality :</td>
                <td class="auto-style12">
            <asp:RadioButtonList ID="RadioButtonList3" runat="server" Width="107px">
                <asp:ListItem>Excellent</asp:ListItem>
                <asp:ListItem>Good</asp:ListItem>
                <asp:ListItem>Average</asp:ListItem>
                <asp:ListItem>Dissatisfied</asp:ListItem>
            </asp:RadioButtonList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList3" CssClass="auto-style17" ErrorMessage="* Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">Cleanliness :</td>
                <td class="auto-style12">
            <asp:RadioButtonList ID="RadioButtonList4" runat="server" Width="107px">
                <asp:ListItem>Excellent</asp:ListItem>
                <asp:ListItem>Good</asp:ListItem>
                <asp:ListItem>Average</asp:ListItem>
                <asp:ListItem>Dissatisfied</asp:ListItem>
            </asp:RadioButtonList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="RadioButtonList4" CssClass="auto-style18" ErrorMessage="* Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">Order Accuracy :</td>
                <td class="auto-style12">
            <asp:RadioButtonList ID="RadioButtonList5" runat="server" Width="107px">
                <asp:ListItem>Excellent</asp:ListItem>
                <asp:ListItem>Good</asp:ListItem>
                <asp:ListItem>Average</asp:ListItem>
                <asp:ListItem>Dissatisfied</asp:ListItem>
            </asp:RadioButtonList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="RadioButtonList5" CssClass="auto-style19" ErrorMessage="Please select Order accuracy" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">Overall Experience :</td>
                <td class="auto-style12">
            <asp:RadioButtonList ID="RadioButtonList6" runat="server" Width="107px">
                <asp:ListItem>Excellent</asp:ListItem>
                <asp:ListItem>Good</asp:ListItem>
                <asp:ListItem>Average</asp:ListItem>
                <asp:ListItem>Dissatisfied</asp:ListItem>
            </asp:RadioButtonList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="RadioButtonList6" CssClass="auto-style20" ErrorMessage="Please select .." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">Any Comments,Suggestion ? </td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox4" runat="server" Height="62px" TextMode="MultiLine" Width="277px" CssClass="auto-style13">type here...</asp:TextBox>
                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style27" OnClick="Button2_Click" Text="Clear" />
                    </strong></td>
                <td class="auto-style12">
                    <strong>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" CssClass="auto-style21" Height="31px" Width="86px" />
                    </strong>
                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.js"></script>
        <script src="feedback.js"></script>
</body>
</html>
