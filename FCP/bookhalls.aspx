<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bookhalls.aspx.cs" Inherits="bookhalls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .txt_box
        {
            border-radius : 0.6em;
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
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td width="50%">
                        <asp:Label ID="Label2" runat="server">User Name</asp:Label>
                    </td>
                    <td width="50%">
                        <asp:TextBox ID="TextBox1" CssClass="txt_box" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td width="50%">
                        <asp:Label ID="Label3" runat="server">Hall Number</asp:Label>
                    </td>
                    <td width="50%">
                        <asp:TextBox ID="TextBox2" CssClass="txt_box" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <br />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Next" />
                        <br />
                        <br />
                        <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="Note : You need to be a Previous User"></asp:Label>
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                    </td>
                </tr>
            </table>

        </div>
    </div>
</asp:Content>

