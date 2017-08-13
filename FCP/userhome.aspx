<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userhome.aspx.cs" Inherits="userhome" %>

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
                        <legend><b>Employee Details</b></legend>

                        <table align="center">
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server">Employee ID</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label10" runat="server"></asp:Label>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server">Name</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label11" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="Label3" runat="server">Email-ID</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label12" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="Label4" runat="server">Address</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label13" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="Label5" runat="server">Designation</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label14" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="Label6" runat="server">Outlet</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label15" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="Label7" runat="server">Salary</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label16" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="Label8" runat="server">Contact No.</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label17" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="Label9" runat="server">Date of Birth</asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label18" runat="server"></asp:Label>
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
                        <legend><b>Edit Employee Details</b></legend>

                        <table align="center">
                            <tr>
                                <td>
                                    <asp:Label ID="Label19" runat="server" Text="Employee ID"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label28" runat="server"></asp:Label>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>
                                    <asp:Label ID="Label20" runat="server" Text="Name"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="Label21" runat="server" Text="Email-ID"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="Label22" runat="server" Text="Address"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="Label23" runat="server" Text="Designation"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label29" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="Label24" runat="server" Text="Outlet"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label30" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="Label25" runat="server" Text="Salary"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label31" runat="server"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="Label26" runat="server" Text="Contact No."></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="Label27" runat="server" Text="Date of Birth"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
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