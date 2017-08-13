<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body
        {
            background : url(images/food_candy_sprinkling_frosting_68588_1920x1080.jpg);
            background-size : 100%, 100%;
        }

        #content
        {
            width : 900px;
            margin : 0px 0px 20px 225px;
            color : white;
            font-family: 'Comic Sans MS';
            font-size : 15px;
        }

        h1
        {
            font-size : 25px;
            color : #0094ff;
        }

        #content_txt
        {
            background-color : black;
            padding : 5px;
            border-radius : 10px;
            opacity: 0.8;
        }

        #content_table
        {
            background-color : black;
            padding : 5px;
            border-radius : 10px;
            opacity : 0.8;
        }

        #content_txt_span
        {
            opacity : unset;
        }

        .auto-style1
        {
            width: 403px;
        }

        .glow
        {
            border : 2px solid #dadada;
            border-radius : 7px;
        }

        .glow:focus
        {
            border-color : #9ecaed;
            outline : none;
            box-shadow : 0010px #9ecaed;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <hr />
    <h1 align="center">CONTACT US</h1>
    <hr />

    <div id="content">
        <div id="content_txt">Please take a moment to tell us what you think about our website, our products, our organisation, or anything else that comes to mind. <br />We welcome all of your comments and suggestions that will help us serve you better. And.... Please visit us often!</div>
        <br />
        <br />
        <div id="content_table">
            <table align="center" cellspacing="20px">
                <tr>
                    <td>Name</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txt_name" runat="server" CssClass="glow"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Email Id</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txt_eid" runat="server" CssClass="glow"></asp:TextBox><td>
                </tr>

                <tr>
                    <td>Message</td>
                    <td class="auto-style1"><textarea rows="8" cols="50" id="txt_msg" runat="server" CssClass="glow"></textarea></td>
                </tr>

                <tr align="center">
                    <td colspan="2">

                        <asp:Button ID="Button1" runat="server" Text="Post!" Width="57px" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" />

                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>