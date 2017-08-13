<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bill.aspx.cs" Inherits="bill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 80%;
        }

        #table_heading
        {
            font-size : 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="main" align="center">
        <br />
        <br />

        <div id="bill">

            <table cellspacing="0" class="auto-style1">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server"><span id="table_heading"><u><b>YOUR BILL</b></u></span></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="User Id"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label16" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="User Email"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label17" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label18" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="City"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label19" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="PIN"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label20" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Mobile Number"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label21" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Date of Birth"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label22" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Order Code"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label23" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Order Date"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label24" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="BILL"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label25" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label12" runat="server" Text="Order Time"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label26" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label13" runat="server" Text="Delivery Time"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label27" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label14" runat="server" Text="Details"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label28" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="CONFIRM!!!!" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>

            <br />
            <br />
            <asp:Label ID="Label29" runat="server"></asp:Label>

        </div>
    </div>
</asp:Content>

