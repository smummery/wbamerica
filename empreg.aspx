<%@ Page Language="VB" AutoEventWireup="false" CodeFile="empreg.aspx.vb" Inherits="empreg" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        //Getting variable from asp.net code behind  
        var custom = "<%=custom %>";  

 
</script>
    <link href="images/style_redtie.css" rel="stylesheet" type="text/css" />
    <meta name="description" content="Food Service Industry Employment Services. 
      Working Better America connects Food Service Employers and prospective employees together" />
    <meta name="keywords" content="find employment at restaurants, find a job at a restaurant, restaurants hiring help, servers, bartenders
      waiters, concierge" />
    <style type="text/css">
         .graystyle
        
        { color:Gray;
          
        }
        .memberstyle
        { color:#000066;
          font-family:Arial;
          font-weight:bold;
          font-style:italic;
          
          text-align: center;
            float: left;
        }
        
        h2
        { color:#000066;
            text-align: center;
            font-family:Arial;
        }
        
        p
        {color:#339966;
            text-align: center;
            font-family:Arial;
            
            width: 225px;
        }
        
        p1
        {color:Blue;
         
        }
        
        .style3
        {
            width: 196px;
            font-weight: 700;
        }
        .style7
        {
            width: 912px;
        }
        .style9
        {
            width: 100%;
        }
        .style15
        {
            width: 149px;
        }
        .style17
        {
            width: 266px;
        }
        .style18
        {
            width: 196px;
        }
        .style19
        {
            top: 355px;
            left: 271px;
            height: 83px;
            width: 784px;
            float: right;
        }
        .style22
        {
            width: 184px;
        }
        .style25
        {
            width: 238px;
        }
        .style26
        {
            width: 171px;
        }
        .style28
        {
            width: 65px;
        }
        .style29
        {
            width: 170px;
        }
        </style>


</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager2" runat="server">
    </asp:ScriptManager>
    <div>
    <div>
    <div id="page" align="center">
        <div id="content" style="width: 800px; height: 887px;">
            <div id="logo">
                <div style="margin-top: 70px" class="whitetitle">
                    Hospitality Jobs</div>
                <br />
                <br />
            </div>
            <div id="topheader">
                <div align="center" class="mediumtitletext">
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#CC0000" PostBackUrl="~/Welcome.aspx">Work Better America</asp:LinkButton>
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium"
                        ForeColor="#CC0000" Text="Helping Hospitality Everywhere"></asp:Label><br />
                    <br />
                </div>
                <div id="toplinks" class="smallgraytext">
                    <a href="#">Home</a> | <a href="#">Sitemap</a> | <a href="#">Contact Us</a>
                    <br />
                </div>
            </div>
            <div id="menu">
                <div align="center" class="smallwhitetext" style="padding: 9px;">
                    <a href="#">Home</a> | <a href="#">About Us</a> | <a href="#">Products</a> | <a href="#">
                        Our Services</a> | <a href="#">Contact Us</a>
                </div>
            </div>
            <div id="submenu">
                <div align="center" class="smallredtext" style="padding: 9px;">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/mycandidates.aspx">My Applicants</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/newseekermap.aspx">Find Candidates</asp:LinkButton>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/employerprofile.aspx"  >View My Profile</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/logout.aspx"  >Log Out</asp:LinkButton>
                </div>

    </div>
            <table class="style1">
        <tr>
            <td class="style7">
                <h2> Keep Membership Current To Receive Job Applications</h2>
                                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                  <table class="style9">
                      <tr>
                          <td class="style18">
                              <asp:Label ID="expirylabel2" runat="server" Font-Names="Calibri" 
                                Font-Size="Medium" ForeColor="#000066"
                                Style="float: right" Text="Days Remaining:" Font-Bold="True"></asp:Label></td>
                          <td class="style17">
                              <asp:TextBox ID="ExpiryTextBox" runat="server" Style="float: left" Width="44px" BackColor="#CCFFCC"
                                MaxLength="30" TabIndex="13" Enabled="False" ValidationGroup="Profile"></asp:TextBox></td>
                          <td class="style15">
                             </td>
                          <td>
                              </td>
                      </tr>
                      <tr>
                          <td class="style18">
                              <asp:Label ID="Label23" runat="server" Font-Names="Calibri" 
                                Font-Size="Medium" ForeColor="#000066"
                                Style="float: right" Text="Renewal Date:" Font-Bold="True"></asp:Label></td>
                          <td class="style17">
                              <asp:TextBox ID="RenewalTextBox" runat="server" Style="float: left" Width="100px" BackColor="#CCFFCC"
                                MaxLength="30" TabIndex="13" Enabled="False" ValidationGroup="Profile"></asp:TextBox></td>
                          <td class="style15">
                              &nbsp;</td>
                         
                      </tr>
                  </table>

                

</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                <table class="style19" bgcolor="#d5e1f7" align="center">
                    <tr>
                        <td class="style28" >
                            &nbsp;</td>
                        <td class="style22" >
                            <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Small" 
                                ForeColor="#000066" Text="Membership Plan" Style="float:none" Font-Bold="True"></asp:Label>
                            </td>
                        <td class="style26" >
                           <asp:Label ID="Label14" runat="server" Font-Names="Arial" Font-Size="Small" 
                                ForeColor="#000066" Text="Monthly Cost" Font-Bold="True"></asp:Label></td>
                        <td class="style3">
                            <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Small" 
                                ForeColor="#000066" Text="# Hires" Font-Bold="True"></asp:Label>
                            </td>
                        <td class="style29">
                        <asp:Label ID="Label22" runat="server" Font-Names="Arial" Font-Size="Small" 
                                ForeColor="#000066" Text="Mobile Access" Font-Bold="True"></asp:Label></td>
                        <td class="style25">
                            <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Small" 
                                ForeColor="#000066" Text="Total Fee " Font-Bold="True" Font-Italic="true" Font-Underline="true"></asp:Label>
                            </td>
                    </tr>
                    <tr>
                        <td class="style28">
                            &nbsp;</td>
                        <td class="style22">
                            <asp:Label ID="Label5" runat="server" Font-Names="Arial" Font-Size="Small" 
                                ForeColor="#000066" Text="1 Year" Style="float:none" Font-Bold="False" 
                                Font-Italic="True"></asp:Label>
                            </td>
                        <td class="style26">
                            <asp:Label ID="Label15" runat="server" Font-Names="Arial" Font-Size="Small" 
                                ForeColor="#000066" Text="$5.83 per month" Font-Bold="False" 
                                Font-Italic="True"></asp:Label></td>
                        <td class="style3">
                            <asp:Label ID="Label6" runat="server" Font-Names="Arial" Font-Size="Small" 
                                ForeColor="#000066" Text="Unlimited" Font-Bold="False" 
                                Font-Italic="True"></asp:Label>
                            </td>
                        <td class="style29">
                            <asp:Label ID="Label7" runat="server" Font-Names="Arial" Font-Size="Small" 
                                ForeColor="#000066" Text="YES" Font-Bold="False" 
                                Font-Italic="True"></asp:Label>
                            </td>
                        <td class="style25">
                        <asp:Label ID="Label18" runat="server" Font-Names="Arial" Font-Size="Small" 
                                ForeColor="#000066" Text="$69.95" Font-Bold="False" 
                                Font-Italic="True"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="style28">
                            &nbsp;</td>
                        <td class="style22">
                            <asp:Label ID="Label8" runat="server" Font-Names="Arial" Font-Size="Small" 
                                ForeColor="#000066" Text="6 Months" Style="float:none" Font-Bold="False" 
                                Font-Italic="True"></asp:Label>
                            </td>
                        <td class="style26">
                            <asp:Label ID="Label16" runat="server" Font-Names="Arial" Font-Size="Small" 
                                ForeColor="#000066" Text="$8.33 per month" Font-Bold="False" 
                                Font-Italic="True"></asp:Label></td>
                        <td class="style3">
                            <asp:Label ID="Label9" runat="server" Font-Names="Arial" Font-Size="Small" 
                                ForeColor="#000066" Text="Unlimited" Font-Bold="False" 
                                Font-Italic="True"></asp:Label>
                            </td>
                        <td class="style29">
                            <asp:Label ID="Label10" runat="server" Font-Names="Arial" Font-Size="Small" 
                                ForeColor="#000066" Text="YES" Font-Bold="False" 
                                Font-Italic="True"></asp:Label>
                            </td>
                        <td class="style25">
                        <asp:Label ID="Label20" runat="server" Font-Names="Arial" Font-Size="Small" 
                                ForeColor="#000066" Text="$49.95" Font-Bold="False" 
                                Font-Italic="True"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="style28">
                            &nbsp;</td>
                        <td class="style22">
                            <asp:Label ID="Label11" runat="server" Font-Names="Arial" Font-Size="Small" 
                                ForeColor="#000066" Text="3 Months" Style="float:none" Font-Bold="False" 
                                Font-Italic="True"></asp:Label>
                            </td>
                        <td class="style26">
                            <asp:Label ID="Label17" runat="server" Font-Names="Arial" Font-Size="Small" 
                                ForeColor="#000066" Text="$9.98 per month" Font-Bold="False" 
                                Font-Italic="True"></asp:Label></td>
                        <td class="style3">
                            <asp:Label ID="Label12" runat="server" Font-Names="Arial" Font-Size="Small" 
                                ForeColor="#000066" Text="Unlimited" Font-Bold="False" 
                                Font-Italic="True"></asp:Label>
                            </td>
                        <td class="style29">
                            <asp:Label ID="Label13" runat="server" Font-Names="Arial" Font-Size="Small" 
                                ForeColor="#000066" Text="YES" Font-Bold="False" 
                                Font-Italic="True"></asp:Label>
                            </td>
                        <td class="style25">
                        <asp:Label ID="Label21" runat="server" Font-Names="Arial" Font-Size="Small" 
                                ForeColor="#000066" Text="$29.95" Font-Bold="False" 
                                Font-Italic="True"></asp:Label></td>
                    </tr>
                   </table>
                   <table class="style9">
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
    </div>
    </form>
</body>
<form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post" class="memberstyle" target="_top">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="7LD7ENQBPBX62">
<input type="hidden" name="custom" value="<%=custom %>" />
<table>
<tr><td><input type="hidden" name="on0"  value="Membership Options"  >Special Bonus Offer - Purchase Now and Receive Up To 3 Additional Months 
    Absolutely Free !</td></tr>
<tr><td>&nbsp;</td></tr><tr><td><select name="os0">
	<option value="12 Month + 3 Free">12 Month + 3 Free $69.95 USD</option>
	<option value="6 Months + 2 Free">6 Months + 2 Free $49.95 USD</option>
	<option value="3 Months + 1 Free">3 Months + 1 Free $29.95 USD</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="USD">
<input type="image" src="https://www.sandbox.paypal.com/en_US/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.sandbox.paypal.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>

</html>
