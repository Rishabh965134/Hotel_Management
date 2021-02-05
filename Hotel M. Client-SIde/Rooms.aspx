<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Rooms.aspx.cs" Inherits="Rooms" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
    <html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link href="design.css" rel="stylesheet" />
  <style type="text/css">

       .auto-style16 {
          width: 111px;
          background-color: #C0C0C0;
      }

        .auto-style17 {
            width: 1510px;
            height: 662px;
        }
        .auto-style18 {
            width: 223px;
            background-color: #C0C0C0;
        }
        .auto-style24 {
            text-align: left;
            font-size: large;
            background-color: #C0C0C0;
        }
        .auto-style26 {
            margin-right: 49px;
        }
        .auto-style29 {
            background-color: #C0C0C0;
        }

        .auto-style31 {
            background-color: #C0C0C0;
            text-align: center;
        }
        .auto-style32 {
            background-color: #C0C0C0;
            font-size: xx-large;
            text-align: left;
        }
        .auto-style33 {
            background-color: #C0C0C0;
            text-align: justify;
            height: 49px;
        }
        .auto-style39 {
            background-color: #C0C0C0;
            height: 28px;
            text-align: center;
            font-size: xx-large;
        }
        .auto-style46 {
            margin-left: 0px;
        }
        .auto-style47 {
            text-align: center;
        }
        
    .auto-style50 {
        background-color: #C0C0C0;
        width: 382px;
            height: 84px;
        }
            
        .auto-style53 {
            background-color: #C0C0C0;
            text-align: left;
            }
        .auto-style54 {
            background-color: #C0C0C0;
            text-align: right;
            }

        .auto-style55 {
            background-color: #C0C0C0;
            text-align: right;
            height: 49px;
        }

        .auto-style56 {
            width: 194px;
            background-color: #C0C0C0;
            height: 84px;
        }
        .auto-style58 {
            background-color: #C0C0C0;
            text-align: center;
            height: 84px;
        }
        .auto-style59 {
            background-color: #C0C0C0;
            height: 84px;
        }

        .auto-style61 {
            height: 36px;
            text-align: left;
            font-size: x-large;
            background-color: #C0C0C0;
        }
       
            .auto-style63 {
          width: 192px;
          background-color: #C0C0C0;
      }
      .auto-style64 {
          width: 195px;
          background-color: #C0C0C0;
          text-align: left;
      }
      .auto-style67 {
          background-color: #C0C0C0;
          text-align: center;
          height: 84px;
          width: 208px;
      }
      .auto-style68 {
          background-color: #C0C0C0;
          width: 320px;
          text-align: left;
      }
      .auto-style69 {
          background-color: #C0C0C0;
          width: 390px;
          text-align: left;
      }
      .auto-style70 {
          width: 382px;
          background-color: #C0C0C0;
          text-align: left;
      }
            </style>
</head>
<body style="height: 660px">
    <form id="form1" class="auto-style1">
    <div class="auto-style47">
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table class="auto-style17" border ="0" cellspacing="0" cellpadding="2"> 
            <tr>
                <td class="auto-style18" rowspan="11">
                </td>
                <td class="auto-style32" colspan="5">
                    Lets book a room for you Shall we....!!!</td>
                <td class="auto-style64">
                    &nbsp;</td>
                <td class="auto-style16" rowspan="11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style68" colspan="2" style="border-style: groove none none groove">
                    <asp:Label ID="Label1" runat="server" Text="Name:" CssClass="auto-style58"></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_name" runat="server" Height="25px" Width="230px"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td class="auto-style70" style="border-style: groove none none none">
                    <asp:Label ID="Label2" runat="server" Text="DOB:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_dob" runat="server" TextMode="Date" Width="232px"  Height="25px"  CssClass="auto-style26"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td class="auto-style69" colspan="2" style="border-style: groove none none none">
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Gender:" CssClass="auto-style58"></asp:Label>
                    <asp:RadioButtonList ID="radio_gender" runat="server" RepeatDirection="Horizontal" Width="203px" Height="32px" >
                        <asp:ListItem>Mr</asp:ListItem>
                        <asp:ListItem>Ms</asp:ListItem>
                        <asp:ListItem>Mrs</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    <br />
                </td>
                <td class="auto-style64" style="border-style: groove groove none none">
                    <asp:Label ID="Label6" runat="server" Text="Address:" CssClass="auto-style58"></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_address" runat="server" Height="25px" Width="227px" placeholder="House-No." CssClass="auto-style46"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style68" colspan="2" style="border-style: none none groove groove">
                    <asp:Label ID="Label4" runat="server" Text="Mobile:" CssClass="auto-style58"></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_mobile" placeholder="999-999-9999" runat="server" Height="25px" Width="230px"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style70" valign="top" style="border-style: none none groove none">
                    <asp:Label ID="Label5" runat="server" Text="Email:" CssClass="auto-style58"></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_email" runat="server" Height="25px" Width="228px" placeholder="abc@example.com"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td class="auto-style69" colspan="2" valign="top" style="border-style: none none groove none">State:<br />
                    <asp:DropDownList ID="ddl_state" runat="server" >
                        <asp:ListItem Selected="True">&lt;--Select State--&gt;</asp:ListItem>
                        <asp:ListItem>Andhra Pradesh</asp:ListItem>
                        <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                        <asp:ListItem>Assam</asp:ListItem>
                        <asp:ListItem>Chhatisgarh</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                        <asp:ListItem>Goa</asp:ListItem>
                        <asp:ListItem>Gujarat</asp:ListItem>
                        <asp:ListItem>Haryana</asp:ListItem>
                        <asp:ListItem>Himachal Pradesh</asp:ListItem>
                        <asp:ListItem>Jammu &amp; Kashmir</asp:ListItem>
                        <asp:ListItem>Jharkhand</asp:ListItem>
                        <asp:ListItem>Karnataka</asp:ListItem>
                        <asp:ListItem>Kerala</asp:ListItem>
                        <asp:ListItem>Ladakh</asp:ListItem>
                        <asp:ListItem>Lakshadweep</asp:ListItem>
                        <asp:ListItem>Madhya Pradesh</asp:ListItem>
                        <asp:ListItem>Maharashtra</asp:ListItem>
                        <asp:ListItem>Manipur</asp:ListItem>
                        <asp:ListItem>Meghalaya</asp:ListItem>
                        <asp:ListItem>Mizoram</asp:ListItem>
                        <asp:ListItem>Nagaland</asp:ListItem>
                        <asp:ListItem>Odisha</asp:ListItem>
                        <asp:ListItem>Puducherry</asp:ListItem>
                        <asp:ListItem>Punjab</asp:ListItem>
                        <asp:ListItem>Rajasthan</asp:ListItem>
                        <asp:ListItem>Sikkim</asp:ListItem>
                        <asp:ListItem>Tamil Nadu</asp:ListItem>
                        <asp:ListItem>Telangana</asp:ListItem>
                        <asp:ListItem>Tripura</asp:ListItem>
                        <asp:ListItem>Uttarakhand</asp:ListItem>
                        <asp:ListItem>Uttar Pradesh</asp:ListItem>
                        <asp:ListItem>West Bengal</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                </td>
                <td class="auto-style64" style="border-style: none groove groove none">
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style61" colspan="6">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT [roomtype] FROM [admin_room]"></asp:SqlDataSource>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style61" colspan="6">
                    Please fill the following details :</td>
            </tr>
            <tr>
                <td class="auto-style24" colspan="6">
                    &nbsp;</td>
            </tr>
            <tr valign="top">
                <td class="auto-style56" style="border-style: groove none groove none">
                    <span class="auto-style9">No of Adult:</span><br />
                    <br />
                    <asp:DropDownList ID="ddl_adult" runat="server" >
                        <asp:ListItem Selected="True">&lt;--Select--&gt;</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    </td>
                <td class="auto-style67" style="border-style: groove none groove none">
                    <span class="auto-style9">No of Children</span><br />
                    <br />
                    <asp:DropDownList ID="ddl_children" runat="server" >
                        <asp:ListItem>&lt;--Select--&gt;</asp:ListItem>
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    </td>
                <td class="auto-style50" style="border-style: groove none groove none">
&nbsp;<span class="auto-style9">What type of room you prefer:</span><br class="auto-style9" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;<br />
                    <asp:DropDownList ID="ddl" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="roomtype" DataValueField="roomtype" OnSelectedIndexChanged="ddl_SelectedIndexChanged">
                    </asp:DropDownList>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
                    </td>
                <td class="auto-style63" style="border-style: groove none groove none">Price<br />
                    <br />
                    <asp:Label ID="Label10" runat="server" Text="N/A"></asp:Label>
                </td>
                <td colspan="2" class="auto-style59" valign="top" style="border-style: groove groove groove none">
                    <span class="auto-style9">What floor you prefer:</span><br />
                    <br />
                    <asp:DropDownList ID="ddl_floor" runat="server" Width="109px" >
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    </td>
            </tr>
            <tr>
                <td colspan="6" class="auto-style31">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Ads/roomselection.xml" Height="450px" Width="1100px" BorderWidth="2px" />
                            <br />
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Timer ID="Timer1" runat="server" Interval="5000">
                            </asp:Timer>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="auto-style54" colspan="3" valign="top" style="border-style: groove none none groove">
                    <asp:Label ID="Label8" runat="server" Text="Entry Date:" CssClass="auto-style58"></asp:Label>
                    <span class="auto-style58">&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txt_entrydate" runat="server" Height="24px" Width="200px" TextMode="Date"></asp:TextBox>
                   <br />
                    <br />
                    <br />
                   </span>
                </td>
                <td class="auto-style53" colspan="3" valign="top" style="border-style: groove groove none none">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    Check In:&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_entry_time" runat="server" TextMode="Time" Width="80px"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="auto-style55" colspan="3" style="border-style: none none groove groove" >
                    <asp:Label ID="Label9" runat="server" Text="Departure Date:"></asp:Label>
                <asp:TextBox ID="txt_depdate" runat="server" Height="25px" Width="200px" TextMode="Date"></asp:TextBox>
                  <br />
                    <br />
                </td>
                <td class="auto-style33" colspan="3" valign="top" valign="top" style="border-style: none groove groove none">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    Check Out&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_dept_time" runat="server" TextMode="Time" Width="80px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="auto-style39" colspan="6">
                    
                   
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  
                   <asp:Button ID="btn_book" runat="server" CssClass="roundbtn" Height="50px" OnClick="btn_book_Click" Text="Book" Width="220px" />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_order" runat="server" CssClass="roundbtn" Height="50px" OnClick="btn_order_Click" Text="Order" Width="220px" />
                    <br />
                    
                        
                </td>
            </tr>
            </table>
        <br />
    
    </div>
    </form>
</body>
</html>
    </asp:Content>