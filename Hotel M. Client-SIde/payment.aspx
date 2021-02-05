<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center">
        <br />
        <span style="font-size: xx-large">Please select your payment gatway</span>
    </p>
    <table align="center" style="width: 1305px; height: 461px" border="2" cellspacing ="2" cellpadding="2">
        <tr>
            <td style="height: 55px; text-align: center; width: 434px; background-color: #996600;">
                UPI</td>
            <td style="height: 55px; text-align: center; width: 434px; background-color: #996600;">
                Debit Card</td>
            <td style="height: 55px; text-align: center; width: 435px; background-color: #996600;">
                Credit Card</td>
        </tr>
        <tr valign="top">
            <td style="width: 434px; text-align: center; background-color: #999999;">
                <br />
                <br />
                <asp:Image ID="Image5" runat="server" ImageUrl="~/images/QR.png" Width="200px" />
                <br />
                <br />
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="  "></asp:Label>
                <br />
                <asp:Button ID="btn_upi" runat="server" OnClick="btn_upi_Click" Text="Pay" Width="60px" />
            </td>
            <td style="width: 434px; text-align: justify; background-color: #999999;">
                <br />
                Please enter your debit card number<br />
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                Please enter enter expiry month /year<br />
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <br />
                Please enter your CVV number<br />
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <br />
                <br />
                Please enter the Otp that has been sent to registered number<br />
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_DC" runat="server" OnClick="btn_DC_Click" Text="Pay" Width="60px" />
            </td>
            <td style="width: 435px; text-align: justify; background-color: #999999;">
                <br />
                Please enter your credit card number<br />
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <br />
                <br />
                Please enter enter expiry month /year<br />
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <br />
                <br />
                Please enter your CVV number<br />
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                <br />
                <br />
                Please enter the Otp that has been sent to registered number<br />
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_CC" runat="server" OnClick="btn_CC_Click" Text="Pay" Width="60px" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
</asp:Content>

