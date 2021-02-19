<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_Room.aspx.cs" Inherits="Admin_Room" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <head>
       <title>
       </title>
       <link href="design.css" rel="stylesheet" />
   </head>
    
        <table style="border-style: groove; border-width: thin; width: 1063px; margin-right: 87px;" align="center" border="1" cellpadding="2"cellspacing="0">

            <tr>
                <td colspan="3" style="text-align: center; background-color: #CCCCCC;">&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center; background-color: #CCCCCC;" colspan="3"><span class="auto-style9">Room Type</span>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_room_type" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: center; background-color: #CCCCCC;" colspan="3"><span class="auto-style9">Room Price </span>&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_room_price" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: center; background-color: #CCCCCC;" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Button ID="btn_add" runat="server" CssClass="roundbtn" Width="100" height="30" Text="Add Room" OnClick="btn_add_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_update" runat="server" CssClass="roundbtn" Width="120" height="30" Text="Update Room" OnClick="btn_update_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_delete" runat="server" CssClass="roundbtn" Width="100" height="30" Text="Delete Room" OnClick="btn_delete_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_view_items" runat="server" CssClass="roundbtn" Height="30px" Text="View Room" Width="90px" OnClick="btn_view_items_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_reset" runat="server" OnClick="btn_reset_Click" CssClass="roundbtn" Text="Reset" />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 353px; background-color: #CCCCCC;">&nbsp;</td>
                <td style="width: 353px; text-align: center; background-color: #CCCCCC;">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="237px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="402px">
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
                <td style="width: 353px; background-color: #CCCCCC;">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" style="background-color: #CCCCCC">&nbsp;</td>
            </tr>
        </table>
        <br />
 
</asp:Content>

