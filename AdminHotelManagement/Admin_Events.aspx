<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_Events.aspx.cs" Inherits="Admin_Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <head>
        <title></title>
        <link href="design.css" rel="stylesheet" />
    </head>
    
        <br />
        <table align="center" style="width: 78%; height: 238px">
            <tr>
                <td colspan="3" style="height: 26px; background-color: #CCCCCC"></td>
            </tr>
            <tr>
                <td style="width: 557px; text-align: right; background-color: #CCCCCC">Event Name</td>
                <td rowspan="2" style="width: 16px; background-color: #CCCCCC">&nbsp;</td>
                <td style="background-color: #CCCCCC">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 557px; text-align: right; background-color: #CCCCCC">Event Price</td>
                <td style="background-color: #CCCCCC">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center; background-color: #CCCCCC">
                    <asp:Button ID="btn_add" CssClass="roundbtn" runat="server" Text="Add" OnClick="btn_add_Click" />
&nbsp;&nbsp;
                    <asp:Button ID="btn_update" CssClass="roundbtn" runat="server" Text="Update" OnClick="btn_update_Click" />
&nbsp;&nbsp;
                    <asp:Button ID="btn_delete" CssClass="roundbtn" runat="server" Text="Delete" OnClick="btn_delete_Click" />
&nbsp;&nbsp;
                    <asp:Button ID="btn_view" CssClass="roundbtn" runat="server" Text="View" OnClick="btn_view_Click" />
&nbsp;&nbsp;
                    <asp:Button ID="btn_reset" CssClass="roundbtn" runat="server" Text="Reset" OnClick="btn_reset_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="background-color: #CCCCCC">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="192px" Width="313px">
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
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    
</asp:Content>

