<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userorder.aspx.cs" Inherits="userorder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head>

<title></title>   
            <link href="design.css" rel="stylesheet" />
             <style type="text/css">
       
             
             
        .auto-style28 {
            width: 1143px;
            height: 674px;
            background-color: #666699;
        }
        .auto-style33 {
            width: 39px;
        }
               
             
             
        .auto-style38 {
            width: 305px;
            font-size: large;
        }
        .auto-style39 {
            width: 266px;
            background-color: #CCFF66;
        }
        .auto-style40 {
            width: 241px;
            background-color: #FFFF99;
        }
        .auto-style41 {
            width: 252px;
            text-align: center;
        }
        .auto-style43 {
            text-align: center;
        }
        .auto-style44 {
            width: 252px;
            text-align: center;
            font-size: large;
        }
        .auto-style45 {
            width: 251px;
            text-align: center;
        }
        .auto-style46 {
            width: 252px;
            text-align: left;
        }
        .auto-style47 {
            text-align: center;
            font-size: large;
        }
        .auto-style48 {
            width: 251px;
            text-align: center;
            font-size: large;
        }
        .auto-style49 {
            text-align: center;
            font-size: x-large;
        }
       
             
             
        .auto-style50 {
            width: 252px;
            text-align: left;
            height: 34px;
        }
       
             
             
        .auto-style51 {
            font-size: large;
            text-align: right;
        }
        .auto-style52 {
            width: 179px;
        }
       
       
             
             
        .auto-style53 {
            font-size: large;
            text-align: justify;
        }
       
       
             
             
        .auto-style54 {
            text-align: left;
            font-size: large;
        }
        .auto-style55 {
            font-weight: bold;
        }
       
       
             
             
        .auto-style56 {
        background-color: #996600;
    }
       
       
             
             
        </style>
 
  </head>
<body>
    <div class="auto-style67">
    
        <br />
&nbsp;
        <table align="center" cellpadding="3" cellspacing="3" class="auto-style28" border ="1" style="border-style: double; ">
            <tr>
                <td class="auto-style39" colspan="6">&nbsp;&nbsp; Bill To : &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40" colspan="6">&nbsp;&nbsp;</td>
            </tr>
            <tr valign="top">
                <td class="auto-style52" rowspan="15">&nbsp;</td>
                <td class="auto-style50" colspan="4"><span class="auto-style9">&nbsp;&nbsp;&nbsp; Name :-&nbsp;</span><asp:Label ID="lbl_name" runat="server" CssClass="auto-style9"></asp:Label>
                    <br class="auto-style9" />
                    <span class="auto-style9">&nbsp;&nbsp;&nbsp;</span><br class="auto-style9" />
                    <span class="auto-style9">&nbsp;&nbsp;&nbsp; Phone :-&nbsp;&nbsp; </span>
                    <asp:Label ID="lbl_phn" runat="server" Text="N/A" CssClass="auto-style9"></asp:Label>
                    <br class="auto-style9" />
                    <span class="auto-style9">&nbsp;&nbsp;</span><br class="auto-style9" />
                    <span class="auto-style9">&nbsp; &nbsp; Email&nbsp; :-&nbsp;&nbsp; </span>
                    <asp:Label ID="lbl_email" runat="server" Text="N/A" CssClass="auto-style9"></asp:Label>
                    <br class="auto-style9" />
                    <span class="auto-style9">&nbsp;&nbsp;&nbsp;</span><br class="auto-style9" />
                    <span class="auto-style9">&nbsp;&nbsp;&nbsp; Address :- </span>
                    <asp:Label ID="lbl_address" runat="server" Text="N/A" CssClass="auto-style9"></asp:Label>
&nbsp;<br class="auto-style9" />
                    </td>
                <td class="auto-style33" rowspan="15">
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Image ID="Image5" runat="server" ImageUrl="~/images/burger.jpg" Width="170px" />
                    <br />
                    <br />
                    <br />
                    <asp:Image ID="Image6" runat="server" ImageUrl="~/images/cake.jpg" Width="170px" />
                    <br />
                    <br />
                    <br />
                    <asp:Image ID="Image7" runat="server" Height="200px" ImageUrl="~/images/food.jpg" Width="170px" />
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
                </td>
            </tr>
            <tr valign="top">
                <td class="auto-style46" colspan="4"><span class="auto-style9">&nbsp;&nbsp; Receipt No :-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><asp:Label ID="lbl_renu" runat="server" CssClass="auto-style9" Text="N/A"></asp:Label>
                    <span class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp; </span> </td>
            </tr>
            <tr valign="top">
                <td class="auto-style46" colspan="4"><span class="auto-style9">&nbsp;&nbsp; Receipt Date :-&nbsp; 
                    </span> 
                    <asp:Label ID="lbl_re" runat="server" Text="N/A" CssClass="auto-style9"></asp:Label>
                </td>
            </tr>
            <tr valign="top">
                <td class="auto-style38" colspan="4">&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style47" colspan="2">Room</td>
                <td class="auto-style43" colspan="2"><span class="auto-style9">Beverage</span></td>
            </tr>
            <tr valign="top">
                <td class="auto-style48">
                    Type</td>
                <td class="auto-style45">
                    <span class="auto-style9">Total Guest</span><br class="auto-style9" />
                    <span class="auto-style9">(Adult + Children)</span></td>
                <td class="auto-style44">Item Type</td>
                <td class="auto-style44">Item Name</td>
            </tr>
            <tr valign="top">
                <td class="auto-style43"  >
                    <asp:Label ID="lbl_room_type" runat="server" Text="N/A"></asp:Label>
                    </td>
                <td class="auto-style45">
                    <asp:Label ID="lbl_guest" runat="server" Text="N/A"></asp:Label>
                    </td>
                <td class="auto-style41">
                    <asp:Label ID="lbl_food_type" runat="server" Text="N/A"></asp:Label>
                    </td>
                <td class="auto-style44">
                    <asp:Label ID="lbl_food_item" runat="server" Text="N/A"></asp:Label>
                </td>
            </tr>
            <tr valign="top">
                <td class="auto-style47">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style47">&nbsp;</td>
                <td class="auto-style47">&nbsp;</td>
                <td class="auto-style47">&nbsp;</td>
            </tr>
            <tr valign="top">
                <td colspan="2" class="auto-style9">Tax :-
                    <asp:Label ID="lbl_tax" runat="server" Text="0"></asp:Label>
                </td>
                <td colspan="2" class="auto-style53"Total Amount :&nbsp;&nbsp; </span>
                    Tax :-
                    <asp:Label ID="lbl_food_tax" runat="server" Text="N/A"></asp:Label>
                </td>
            </tr>
            <tr valign="top">
                <td colspan="2" class="auto-style9">Room Bill :-
                    <asp:Label ID="room_bill" runat="server" Text="0"></asp:Label>
                </td>
                <td colspan="2" class="auto-style53"Total Amount :&nbsp;&nbsp; </span>
                    Food Bill :-
                    <asp:Label ID="lbl_food_price" runat="server" Text="0"></asp:Label>
                </td>
            </tr>
            <tr valign="top">
                <td colspan="4" class="auto-style51">
                    &nbsp;</td>
            </tr>
            <tr valign="top">
                <td colspan="2" class="auto-style51">
                    &nbsp;</td>
                <td colspan="2" class="auto-style54">
                    Total Bill : -
                    <asp:Label ID="lbl_totprice" runat="server" CssClass="auto-style9" Text="0"></asp:Label>
                </td>
            </tr>
            <tr valign="top">
                <td colspan="4" class="auto-style51">
                    <br />
                    <br class="auto-style56" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <strong> 
                    <asp:Button ID="Button2" OnClick="Button2_Click" runat="server" Text="Pay Now"  Width="110px" CssClass="roundbtn" Height="30px" />
                    </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
               
            </tr>
            <tr valign="top">
                <td colspan="4" class="auto-style49">
                    <asp:Button ID="Button3" runat="server" OnClientClick="javascript:window.print();" Text="Print" CssClass="roundbtn" Height="30px" Width="110px" />
                    </br>
                    &nbsp; Thank You for your Service</td>
            </tr>
            </table>
        <br />
    <br />
        <br />
        <br />

    </div>
</body>
</html>
   </asp:Content>
