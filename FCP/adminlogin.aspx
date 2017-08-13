<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body
        {
            background-image : url(images/qn0eMW8.jpg);
            background-size : 100% 100%;
        }

        tr
        {
            align-content : center;
        }

        #table_this
        {
            width : 70%;
            padding-left : 500px;
        }

        #mid td
        {
            width : 50%;
        }

        img
        {
            -webkit-filter: grayscale(100%);
            filter: grayscale(100%);
            float : left;
        }

        .txt
        {
            background: #333;
            color: #ccc;
            width: 150px;
            padding: 6px 15px 6px 35px;
            transition: 500ms all ease;
            border: 1px solid #333;
            border-radius: 40px;
            height : 40px;
        }

        .txt:hover
        {
            background : #1f699f;
            box-shadow: 12px 13px 0px rgba(204, 211, 51, 0.38),
            -11px -14px 0px rgba(241, 96, 0, 0.28),
            18px -24px 0px rgba(0, 0, 0, 0.34),
            33px -6px 0px rgba(39, 74, 214, 0.28);
            width : 250px;
        }

        .txt:focus
        {
            background :#071045;
        }

        #userlogin
        {
            font-size : 70px;
            color : #010644;
        }

        a
        {
            text-decoration : none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="main">
        <br /><br /><br />

        <div id="userlogin" align="center">
            ADMIN&nbsp; LOGIN
        </div>

        <br /><br />

        <div id="mid">
            <table id="table_this">
                <tr>
                    <td>
                        <img src="images/avatar.png" height="60px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox CssClass="txt" ID="TextBox1" runat="server" placeholder="Username"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
          
                <tr>
                    <td>
                        <img src="images/password-icon.png.gif" height="60px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox CssClass="txt" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>

        <br />

        <div align="center">
            <asp:Button ID="Button1" runat="server" Text="Reset" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button2_Click" /><br /><br />
        </div>
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <asp:HiddenField ID="HiddenField2" runat="server" />
        <br /><br /><br />
        <br /><br /><br />
    </div>
</asp:Content>