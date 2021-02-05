<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Events.aspx.cs" Inherits="Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <head>
        <title></title>
        <link href="design.css" rel="stylesheet" />
    </head>
    
    <table style="width: 1518px" cellspacing="0" cellpadding="2" border="0">
    <tr>
        <td colspan="3" style="text-align: center">
            <asp:Image ID="Image5" runat="server" Height="650px" ImageUrl="~/images/mainFrame.jpg" Width="1513px" />
        </td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center; background-color: #FFFFFF; height: 147px;">
            <br />
            <span style="font-size: xx-large">
            <br />
            Memorable Events at Glenn Manor Hotel &amp; Resorts<br />
            </span>
            <br />
        </td>
    </tr>
    <tr valign="top">
        <td style="text-align: right; width: 758px; background-color: #FFFFFF;" colspan="2">
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            
            <asp:Image ID="Image12" runat="server" ImageUrl="~/images/premarriage.jpg" Width="480px" BorderStyle="Groove" />
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td style="text-align: left; width: 758px; background-color: #FFFFFF;" >
            <br />
            <br />
            <div style="width: 508px; height: 323px; background-color: #FFFFFF; font-size: large; color: #666666; text-align: justify;">
                What makes a wedding truly special at Glenn Manor Hotel is the range of specialized
           services on offer.With so much to organize,tou can relax in the knowledge that we will            take care of your every need, ensuring that your wedding that we will take care of your 
           
           every need,ensuring that your wedding day is everything you want it to be, Glenn Manor
            Hotel offer a perfect destination that ensures a blend of traditional and exquisite modern
            
            luxeries, making your wedding a memorable one. Choose Glenn Manor Hotel as your
            wedding destination and be rest assured that your wedding will be extra special
            </div>
            </td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center; background-color: #FFFFFF;">
            <br />
        </td>
    </tr>
    <tr valign="top">
        <td style="text-align: center; background-color: #FEFFFF;"><br />
         </td>
            
        <td style="text-align: center; background-color: #FEFFFF;">
         <div style="width: 566px; height: 305px">
                    <strong><span class="auto-style9" style="color: #000000">Haldi / Mehandi</span><span class="auto-style9" style="color: #666666"> </span>
                    <br style="color: #666666"/>
                    <span style="color: #666666">&nbsp;</span></strong><span class="auto-style9"><span style="color: #666666">The Haldi ceremony is the treasure trove of good memories and</span><br style="color: #666666" />
                    <span style="color: #666666">&nbsp;great pictures! Hers&#39;s a complete guide on how to plan yours, so 
            </span> 
            <br style="color: #666666" />
                    <span style="color: #666666">as to make the most of this very special occasion and there is no&nbsp;
            </span>
            <br style="color: #666666" />
                    <span style="color: #666666">better way to elaborate the significance of these M</span></span><em><strong><span class="auto-style9" style="color: #666666">ehandi</span></strong><span class="auto-style9" style="color: #666666"> </span> </em><span class="auto-style9"><span style="color: #666666">with&nbsp;&nbsp;
            </span>
            <br style="color: #666666" />
                    <span style="color: #666666">henna designs which blosson on the palms and feet of a bride. A</span><br style="color: #666666" />
                    <span style="color: #666666">&nbsp;traditional aspect of the ancient </span> </span> <em><strong><span class="auto-style9" style="color: #666666">Solah Shringaar</span></strong><span class="auto-style9" style="color: #666666">, </span> </em><span class="auto-style9"><span style="color: #666666">the Mehandi</span><br style="color: #666666" />
                    <span style="color: #666666">&nbsp;is an inalienable part of an Indian Bride&#39;s wedding look.And so&#39;s 
            </span> 
            <br style="color: #666666" />
                    <span style="color: #666666">the ritual around it.We pay homage here to the Mehandi 
            </span> 
            <br style="color: #666666" />
                    <span style="color: #666666">ceremony, explaning what it&#39;s all about and how you would find 
            </span> 
            <br style="color: #666666" />
                    <span style="color: #666666">it in every cultural sub-set in India</span><br />
                    </span></div></td>
            
        <td style="text-align: left; background-color: #FEFFFF; ">
            &nbsp;
            <asp:Image ID="Image6" runat="server" ImageUrl="~/images/haldi.jpeg" Width="470px" BorderStyle="Groove" />
        </td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center; background-color: #FFFFFF;">&nbsp;</td>
    </tr>
    <tr valign="top">
        <td colspan="3" style="text-align: center; background-color: #F0F0F0;">
            <br />
            <span class="auto-style9">
            &nbsp;&nbsp;
            Name</span>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <span class="auto-style9">&nbsp;Date</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_enq_date" runat="server" TextMode="Date"></asp:TextBox>
            <span class="auto-style9">&nbsp; Time</span>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_enq_time" runat="server" TextMode="Time"></asp:TextBox>
            &nbsp;&nbsp; &nbsp; <span class="auto-style9">No of Guest&nbsp; </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Enquire Now" Height="45px" Width="130px" OnClick="Button2_Click" CssClass="roundbtn" />
            <br />
            <asp:Label ID="Label2" runat="server" Text="    "></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center; background-color: #FFFFFF;">&nbsp;</td>
    </tr>
    <tr valign="top">
        <td style="background-color: #FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        <td style="text-align: center; background-color: #FFFFFF;">
            <div style="width: 480px; height: 432px; background-color: #996600;">
            <asp:Image ID="Image8" runat="server" ImageUrl="~/images/marriage.jpg" Width="470px" Height="350px" BorderStyle="Groove" />
            <br />
            <strong><span class="auto-style9">Marriage</span></strong><br class="auto-style9" />
            <span class="auto-style9">Step into the most exciting part of your grand wedding with 
                <br />
                the perfect ambiance created by us</span></div></td>
        <td style="text-align: center; background-color: #FFFFFF;">
            <div style="background-color: #996600; width: 481px; height: 433px;">
            <asp:Image ID="Image10" runat="server" ImageUrl="~/images/engagement.jpg" Width="470px" BorderStyle="Groove" />
            <br />
            <strong><span class="auto-style9">Engagement</span></strong><br class="auto-style9" />
            <span class="auto-style9">Announce your love amongst magnificence of the Glenn Manor venues in a way that the world would never forget!</span></div>

        </td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center; background-color: #FFFFFF;">&nbsp;</td>
    </tr>
    <tr valign="top">
        <td style="text-align: center; background-color: #FFFFFF; height: 433px;"></td>
        <td style="text-align: center; background-color: #FFFFFF; height: 433px;">
            <div style="background-color: #996600; width: 480px; height: 427px;">
            <asp:Image ID="Image11" runat="server" ImageUrl="~/images/reception.jpg" Width="470px" Height="350px" BorderStyle="Groove" BorderWidth="4px" />
            <br />
            <span class="auto-style9"><strong>Reception</strong></span><br class="auto-style9" />
            <span class="auto-style9">A wedding reception is a special celebration that is held after<br />
&nbsp;the marriage cermony make it special with Glenn Manor</span>
                </div>

        </td>
        <td style="text-align: center; background-color: #FFFFFF; height: 433px;">
           <div style="width: 477px; height: 424px; background-color: #996600">
             <asp:Image ID="Image13" runat="server" ImageUrl="~/images/business.jpg" Width="470px" BorderStyle="Groove" BorderWidth="4px" Height="350px" />
         
            <strong><span class="auto-style9">Business Meeting</span><br class="auto-style9" />
            </strong><span class="auto-style9">Plan your important meeting with perfect enviorment at Glenn Manor</span>
               </div></td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center; background-color: #FFFFFF;">&nbsp;</td>
    </tr>
    <tr valign="top">
        <td colspan="2" style="text-align: right">
            Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td style="text-align: left">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_name" runat="server" Width="120px"></asp:TextBox>
        </td>
    </tr>
    <tr valign="top">
        <td colspan="2" style="text-align: right">
            Mobile No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td style="text-align: left">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_mobile" runat="server" Width="120px"></asp:TextBox>
        </td>
    </tr>
    <tr valign="top">
        <td colspan="2" style="text-align: right">
            Event&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td style="text-align: left">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddl_event" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="event_name" DataValueField="event_name" OnSelectedIndexChanged="ddl_event_SelectedIndexChanged">
            </asp:DropDownList>
&nbsp;&nbsp;
        </td>
    </tr>
    <tr valign="top">
        <td colspan="2" style="text-align: right">
            Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td style="text-align: left">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="N/A"></asp:Label>
        </td>
    </tr>
    <tr valign="top">
        <td colspan="2" style="text-align: right">
            Date( Start )&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td style="text-align: left">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_start_date" runat="server" TextMode="Date" Width="120px"></asp:TextBox>
        </td>
    </tr>
    <tr valign="top">
        <td colspan="2" style="text-align: right">
            Date( End )&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td style="text-align: left">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_end_date" runat="server" TextMode="Date" Width="120px"></asp:TextBox>
        </td>
    </tr>
    <tr valign="top">
        <td colspan="2" style="text-align: right">
            Time( Start )&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td style="text-align: left">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_time_start" runat="server" TextMode="Time" Width="120px"></asp:TextBox>
        </td>
    </tr>
    <tr valign="top">
        <td colspan="2" style="text-align: right">
            Time( End )&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td style="text-align: left">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_time_end" runat="server" TextMode="Time" Width="120px"></asp:TextBox>
        </td>
    </tr>
    <tr valign="top">
        <td colspan="2" style="text-align: right">
            No of Guest&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td style="text-align: left">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_no_of_guest" runat="server" Width="120px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center; background-color: #FFFFFF;">
            <br />
            <asp:Button ID="Book" runat="server" OnClick="Book_Click" Text="Book" Height="45px" Width="130px" CssClass="roundbtn" />
        </td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center; background-color: #FFFFFF;">
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT [event_name] FROM [admin_event]"></asp:SqlDataSource>
            <br />
        </td>
    </tr>
</table>
</asp:Content>

