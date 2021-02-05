<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="usermenu.aspx.cs" Inherits="usermenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <head>
       <title></title>
       <link href="design.css" rel="stylesheet" />
   </head>
     <body>
    <table class="auto-style13" style="width: 1504px" border="0" cellspacing="0" cellpadding="2">
    <tr>
        <td style="height: 56px; background-color: #FFFFFF;" colspan="2"><strong>
            <span class="auto-style9">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT [itemtype] FROM [admin_menu]"></asp:SqlDataSource>
            </span>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" style="font-size: xx-large; color: #FF0000; " Text="&quot; Laughter is brightest, where food is best.&quot;"></asp:Label>
            </strong></td>
    </tr>
    <tr>
        <td style="border-style: groove groove groove groove; background-color: #996600; text-align: center;" colspan="2">
            <span class="auto-style9">
            <br />
            </span>
            <span class="auto-style9" style="font-size: x-large">
            Please select the type</span><span class="auto-style9"><br />
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="itemtype" DataValueField="itemtype">
            </asp:DropDownList>
            <br />
            <br />
            Name&nbsp;
            </span>
            <span class="auto-style9" style="font-family: 'MV Boli'">
            &nbsp;
            <asp:TextBox ID="txtname" runat="server" Height="18px" style="margin-top: 0px" Width="127px"></asp:TextBox>
            </span>
            <span class="auto-style9">
            <span class="auto-style9" style="font-family: Default">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mobile No&nbsp;&nbsp; &nbsp; </span></span>
            <span class="auto-style9" style="font-family: 'MV Boli'">
            <asp:TextBox ID="txtphn" runat="server" Width="131px" style="font-family: Default"></asp:TextBox>
            <span class="auto-style9">
&nbsp;</span></span><span class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email&nbsp;&nbsp;
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp; Address&nbsp;&nbsp;<span style="font-family: 'MV Boli'"><asp:TextBox ID="txtadd" runat="server" Width="137px"></asp:TextBox>
            </span>
            &nbsp;<br />
            </span>
        </td>
    </tr>
    <tr>
        <td style="background-color: #C0C0C0; text-align: center;" colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="background-color: #C0C0C0; text-align: center;" colspan="2">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Ads/menuitems.xml" BorderWidth="2px" Height="400px" Width="1100px" />
                    <asp:Timer ID="Timer1" runat="server">
                    </asp:Timer>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
    </tr>
    <tr>
        <td style="background-color: #C0C0C0; text-align: center;" colspan="2">
            &nbsp;</td>
    </tr>
    <tr valign="top">
        <td style="border-style: groove none groove groove; text-align: right; width: 540px;">
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <asp:Image ID="Image5" runat="server" BorderWidth="2px" ImageUrl="~/images/drink.jpg" />
        </td>
        <td style="border-style: groove groove groove none;">
            <div style="text-align: center">
                <span class="auto-style9" style="font-size: x-large">
                <div style="text-align: center">
                    <strong>
                    <br />
                    Please select an Item</strong><br />
                    </span><span class="auto-style9"><br />
                </div>
                <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" Height="199px"  Width="467px" CssClass="auto-style28" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-left: 220px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="itemname" HeaderText="itemname" SortExpression="itemname" />
                    <asp:BoundField DataField="itemprice" HeaderText="itemprice" SortExpression="itemprice" />
                </Columns>
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
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT [itemname], [itemprice] FROM [admin_menu] WHERE ([itemtype] = @itemtype)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="itemtype" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <div style="text-align: center">
                        <br />
                        <span class="auto-style9">Selected Item :
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style9" Text="N/A"></asp:Label>
                        <br class="auto-style9" />
                        Selected Item price :
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style9" Text="N/A"></asp:Label>
                        <br />
                        <br />
                        </span>
                    </div>
                </div>
                <br />
                </span>
            </div>
        </td>
    </tr>
    <tr>
        <td style="text-align: center; height: 25px; background-color: #C0C0C0;" colspan="2">
            <br />
            <strong>
            <asp:Button ID="Button3" runat="server" CssClass="roundbtn" Height="50px" Text="Order Now." Width="180px" OnClick="Button3_Click" />
            <br />
            </strong>
        </td>
    </tr>
    <tr>
        <td style="text-align: center; height: 25px; background-color: #C0C0C0;" colspan="2">
            &nbsp;</tr>
    </table>
        </body>
</asp:Content>
