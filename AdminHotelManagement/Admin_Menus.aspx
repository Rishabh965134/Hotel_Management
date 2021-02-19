<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_Menus.aspx.cs" Inherits="Admin_Menus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <head>
        <title></title>
        <link href="design.css" rel="stylesheet" />
    </head>
    <p>
        <br />
        <table align="center" style="border-style: groove; border-width: medium; width: 61%; height: 349px">
            <tr>
                <td colspan="3" style="background-color: #CCCCCC">&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right; background-color: #CCCCCC; width: 378px; height: 29px;">Food Type</td>
                <td style="width: 4px; background-color: #CCCCCC" rowspan="3">&nbsp;</td>
                <td style="background-color: #CCCCCC; height: 29px;">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; background-color: #CCCCCC; width: 378px;">Food Item</td>
                <td style="background-color: #CCCCCC">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; background-color: #CCCCCC; width: 378px;">Food Price</td>
                <td style="background-color: #CCCCCC">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center; background-color: #CCCCCC">
                    <asp:Button ID="btn_add" runat="server" CssClass="roundbtn" OnClick="btn_add_Click" Text="Add" />
&nbsp;
                    <asp:Button ID="btn_view" runat="server" CssClass="roundbtn" OnClick="btn_view_Click" Text="View" />
&nbsp;
                    <asp:Button ID="btn_delete" runat="server" CssClass="roundbtn" OnClick="btn_delete_Click" Text="Delete" />
&nbsp;
                    <asp:Button ID="btn_update" runat="server" OnClick="btn_update_Click" CssClass="roundbtn" style="height: 29px" Text="Update" />
&nbsp;
                    <asp:Button ID="btn_search" runat="server" CssClass="roundbtn" OnClick="btn_search_Click" Text="Search" />
&nbsp;&nbsp;
                    <asp:Button ID="btn_reset" runat="server" CssClass="roundbtn" OnClick="btn_reset_Click" Text="Reset" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="background-color: #CCCCCC">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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
                <td colspan="3" style="height: 41px; background-color: #CCCCCC"></td>
            </tr>
            <tr>
                <td colspan="3" style="background-color: #CCCCCC">&nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>

