<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bookdetails.aspx.cs" Inherits="bookdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        #GridView1
        {
            align-content : center;
        }

        #mid
        {
            width : 60%;
        }
    </style>
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
                <legend>Booking Details</legend>

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3">
                    <Columns>
                        <asp:BoundField DataField="book_no" HeaderText="Booking Number" ReadOnly="True" SortExpression="book_no" />
                        <asp:BoundField DataField="usr_id" HeaderText="User ID" ReadOnly="True" SortExpression="usr_id" />
                        <asp:BoundField DataField="hall_no" HeaderText="Hall Number" ReadOnly="True" SortExpression="hall_no" />
                        <asp:BoundField DataField="date" HeaderText="Date" ReadOnly="True" SortExpression="date" />
                    </Columns>
                </asp:GridView>

            </fieldset>

        </div>
    </div>
    </form>
</body>
</html>
