<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="booked.aspx.cs" Inherits="booked" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

         #mid
        {
            padding : 5px;
            background : black;
            border-radius : 10px;
            opacity : 0.8;
        }

        td
        {
            color : white;
        }

        tr
        {
            text-align : center;
        }

        #Label1
        {
            font-size : 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="main" align="center">
        <br />
        <br />
        <br />
        <br />

        <div id="mid" align="center">

            <table class="auto-style1" align="center">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Text=""><u><b>-: BOOKING YOUR HALL :-</b></u></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td width="50%">
                        <asp:Label ID="Label2" runat="server" Text="Booking Number"></asp:Label>
                    </td>
                    <td width="50%">
                        <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td width="50%">
                        <asp:Label ID="Label3" runat="server" Text="User Name"></asp:Label>
                    </td>
                    <td width="50%">
                        <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td width="50%">
                        <asp:Label ID="Label4" runat="server" Text="Hall Number"></asp:Label>
                    </td>
                    <td width="50%">
                        <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td width="50%">
                        <asp:Label ID="Label5" runat="server" Text="Date"></asp:Label>
                    </td>
                    <td width="50%">
                        <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="CONFIRM" OnClick="Button1_Click" />
                        <br />
                        <br />
                        <asp:Label ID="Label10" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
    </div>
</asp:Content>

