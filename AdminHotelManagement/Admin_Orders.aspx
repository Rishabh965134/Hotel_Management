<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_Orders.aspx.cs" Inherits="Admin_Orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <head>
        <title></title>
        <link href="design.css" rel="stylesheet" />
    </head>
    <p>
        <br />
        <table align="center" style="width: 71%; height: 396px">
            <tr>
                <td colspan="3" style="height: 35px; background-color: #CCCCCC"></td>
            </tr>
            <tr>
                <td style="width: 481px; text-align: right; background-color: #CCCCCC">Order Name</td>
                <td rowspan="3" style="width: 32px; background-color: #CCCCCC">&nbsp;</td>
                <td style="background-color: #CCCCCC">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 481px; text-align: right; background-color: #CCCCCC">Order Date</td>
                <td style="background-color: #CCCCCC">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 481px; background-color: #CCCCCC">&nbsp;</td>
                <td style="background-color: #CCCCCC">
                    <asp:Button ID="Button2" runat="server" CssClass="roundbtn" Text="Search" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="background-color: #CCCCCC">
                    <asp:GridView ID="GridView1" runat="server" Height="173px" Width="334px" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="background-color: #CCCCCC">&nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>

