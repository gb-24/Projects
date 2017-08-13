<%@ Page Language="C#" AutoEventWireup="true" CodeFile="outletdetails.aspx.cs" Inherits="outletdetils" %>

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
                <legend>Outlet Details</legend>

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3">
                    <Columns>
                        <asp:BoundField DataField="outlet_no" HeaderText="Outlet Number" ReadOnly="True" SortExpression="outlet_no" />
                        <asp:BoundField DataField="outlet_pos" HeaderText="Outlet Position" ReadOnly="True" SortExpression="outlet_pos" />
                        <asp:BoundField DataField="addr" HeaderText="Address" ReadOnly="True" SortExpression="addr" />
                        <asp:BoundField DataField="status" HeaderText="Status" ReadOnly="True" SortExpression="status" />
                    </Columns>
                </asp:GridView>
            </fieldset>

        </div>    
    </div>
    </form>
</body>
</html>
