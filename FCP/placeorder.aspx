<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="placeorder.aspx.cs" Inherits="placeorder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 421px;
        }
        .auto-style2 {
            height: 24px;
        }

        .txt_box
        {
            border-radius : 0.6em;
        }

        #view1
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

        #Label10
        {
            color : white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center" id="div_main">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
        

        <div align="center" id="view1">
            <table cellspacing="5px" class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="txt_box" ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Email-ID"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="txt_box" ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="txt_box" ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="txt_box" ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="PIN"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox CssClass="txt_box" ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Mobile Number"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="txt_box" ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Date of Birth"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="txt_box" ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Item Code"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="txt_box" ID="TextBox8" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Quantity"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox CssClass="txt_box" ID="TextBox9" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Reset" OnClick="Button1_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Next" OnClick="Button2_Click" />
                    </td>
                </tr>
            </table>
            <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
            <br />
        </div>
                <asp:HiddenField ID="HiddenField1" runat="server" />
                <asp:HiddenField ID="HiddenField2" runat="server" />
        <br />
        <br />
    </div>
</asp:Content>

