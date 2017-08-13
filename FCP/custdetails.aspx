<%@ Page Language="C#" AutoEventWireup="true" CodeFile="custdetails.aspx.cs" Inherits="custdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="right">
            <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" />
        </div>
    <div id="main" align="center">
        <br />
        <br />
        <div id="mid" align="center">
            <fieldset>
                <legend>Customer Details</legend>

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3">
                    <Columns>
                        <asp:BoundField DataField="usr_id" HeaderText="Customer ID" ReadOnly="True" SortExpression="usr_id" />
                        <asp:BoundField DataField="usr_email" HeaderText="Customer E-Mail" ReadOnly="True" SortExpression="usr_email" />
                        <asp:BoundField DataField="addr" HeaderText="Address" ReadOnly="True" SortExpression="addr" />
                        <asp:BoundField DataField="city" HeaderText="City" ReadOnly="True" SortExpression="city" />
                        <asp:BoundField DataField="pinc" HeaderText="PIN Code" ReadOnly="True" SortExpression="pinc" />
                        <asp:BoundField DataField="mob_no" HeaderText="Mobile Number" ReadOnly="True" SortExpression="mob_no" />
                        <asp:BoundField DataField="dob" HeaderText="Date Of Birth" ReadOnly="True" SortExpression="dob" />
                    </Columns>
                </asp:GridView>
            </fieldset>
        </div>
    </div>
    </form>
</body>
</html>
