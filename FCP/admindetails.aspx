<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admindetails.aspx.cs" Inherits="adminhome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        table
        {
            width : 70%;
        }

        td
        {
            width : 50%;
        }

        #mid
        {
            width : 60%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="main" align="center">
        <br />
        <br />
        <div id="mid" align="center">
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                    <div align="right">
                        <asp:Button ID="Button3" runat="server" Text="Logout!" OnClick="Button3_Click" />
                    </div>
                    <fieldset>
                        <legend><b>Admin Details</b></legend>

                        <table align="center">
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server">Email-ID</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label10" runat="server"></asp:Label>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server">Address</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label11" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server">Contact No</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label12" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </fieldset>

                    <div align="center">
                        <br /><br />
                        <asp:Button ID="Button1" runat="server" Text="Edit" OnClick="Button1_Click" />
                    </div>
                </asp:View>

                <asp:View ID="View2" runat="server">
                    <fieldset>
                        <legend><b>Edit Admin Details</b></legend>

                        <table align="center">
                            <tr>
                                <td>
                                    <asp:Label ID="Label19" runat="server" Text="Email-ID"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>
                                    <asp:Label ID="Label20" runat="server" Text="Address"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="Label21" runat="server" Text="Contact No"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </fieldset>

                    <br /><br /><br />
                    <asp:Button ID="Button2" runat="server" Text="Confirm!!!!" OnClick="Button2_Click" />
                </asp:View>
            </asp:MultiView>
        </div>
    </div>
    </form>
</body>
</html>