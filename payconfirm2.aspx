<%@ Page Language="VB" AutoEventWireup="false" CodeFile="payconfirm2.aspx.vb" Inherits="payconfirm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            
        </tr>
    </table>
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Payment received"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:Label ID="PaymentLabel" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="FirstNameLabel" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="PayPalGrid" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" 
                        EmptyDataText="There are no data records to display." Font-Size="XX-Small" 
                        Visible="False">
                        <Columns>
                            <asp:BoundField DataField="UserID" HeaderText="UserID" 
                                SortExpression="UserID" />
                            <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                                SortExpression="FirstName" />
                            <asp:BoundField DataField="LastName" HeaderText="LastName" 
                                SortExpression="LastName" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="PayGuid" HeaderText="PayGuid" 
                                SortExpression="PayGuid" />
                            <asp:BoundField DataField="JoinDate" HeaderText="JoinDate" 
                                SortExpression="JoinDate" />
                            <asp:BoundField DataField="PaidDate" HeaderText="PaidDate" 
                                SortExpression="PaidDate" />
                            <asp:BoundField DataField="MemberPeriod" HeaderText="MemberPeriod" 
                                SortExpression="MemberPeriod" />
                            <asp:BoundField DataField="ExpiryDate" HeaderText="ExpiryDate" 
                                SortExpression="ExpiryDate" />
                            <asp:BoundField DataField="Valid" HeaderText="Valid" SortExpression="Valid" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                        SelectCommand="SELECT [UserID], [FirstName], [LastName], [Email], [PayGuid], [JoinDate], [PaidDate], [MemberPeriod], [ExpiryDate], [Valid] FROM [PayPalTest] WHERE ([UserID] = @UserID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="UserID" PropertyName="Text" 
                                Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
