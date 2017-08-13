<%@ Page Language="C#" AutoEventWireup="true" CodeFile="empdetails.aspx.cs" Inherits="empdetails" %>

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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" CellPadding="5" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                <Columns>
                    <asp:BoundField DataField="emp_id" HeaderText="ID" SortExpression="emp_id" />
                    <asp:BoundField DataField="emp_name" HeaderText="Name" ReadOnly="True" SortExpression="emp_name" />
                    <asp:BoundField DataField="emp_email" HeaderText="E-Mail" ReadOnly="True" SortExpression="emp_email" />
                    <asp:BoundField DataField="addr" HeaderText="Address" ReadOnly="True" SortExpression="addr" />
                    <asp:BoundField DataField="desig" HeaderText="Designation" SortExpression="desig" />
                    <asp:BoundField DataField="outlet" HeaderText="Outlet" SortExpression="outlet" />
                    <asp:BoundField DataField="sal" HeaderText="Salary" SortExpression="sal" />
                    <asp:BoundField DataField="contactno" HeaderText="Contact Number" ReadOnly="True" SortExpression="contactno" />
                    <asp:BoundField DataField="dob" HeaderText="Date Of Birth" ReadOnly="True" SortExpression="dob" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
    </form>
</body>
</html>
