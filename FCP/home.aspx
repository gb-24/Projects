<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body
        {
            background : url(images/Cupcakes-food-31237025-1024-768.jpg);
            background-size : 100%, 100%;
        }

        #links div
        {
            text-align:center;
            padding:100px 20px 100px 20px;
            background:black;
            color : white;
            height : 200px
            line-height:60px;
            transition: opacity 0.5s;
            -webkit-transition: all ease 0.5s;
            -moz-transition: all ease 0.5s;
            -o-transition: all ease 0.5s;
            -ms-transition: all ease 0.5s ;
            transition: all ease 0.5s ;
            border:1px solid #ff3000;
            border-radius:5px;
            opacity : 0.8;
        }

        #links #services:hover
        {
            background : #0094ff;
            color : white;
            -webkit-transition: all ease 0.7s;
            -moz-transition: all ease 0.7s;
            -o-transition: all ease 0.7s;
            -ms-transition: all ease 0.7s ;
            transition: all ease 0.5s ;
        }
        
        #links #abtus:hover
        {
            background : #b6ff00;
            color : white;
            -webkit-transition: all ease 0.7s;
            -moz-transition: all ease 0.7s;
            -o-transition: all ease 0.7s;
            -ms-transition: all ease 0.7s ;
            transition: all ease 0.5s ;
        }
        
        #links #contactus:hover
        {
            background : #ffd800;
            color : white;
            -webkit-transition: all ease 0.7s;
            -moz-transition: all ease 0.7s;
            -o-transition: all ease 0.7s;
            -ms-transition: all ease 0.7s ;
            transition: all ease 0.5s ;
        }
        
        #links #testimonials:hover
        {
            background : #ff0000;
            color : white;
            -webkit-transition: all ease 0.7s;
            -moz-transition: all ease 0.7s;
            -o-transition: all ease 0.7s;
            -ms-transition: all ease 0.7s ;
            transition: all ease 0.5s ;
        }

        #services
        {

        }

        a
        {
            text-decoration : none;
            color : darkgray;
        }
        .auto-style1 {
            width: 250px;
        }
        .auto-style2 {
            width: 80%;
        }

        .button
        {
            border-radius: 4px;
            background-color: #f4511e;
            border: none;
            color: #FFFFFF;
            text-align: center;
            font-size: 28px;
            padding: 20px;
            width: 200px;
            transition: all 0.5s;
            cursor: pointer;
            margin: 5px;
        }

        .button span
        {
            cursor: pointer;
            display: inline-block;
            position: relative;
            transition: 0.5s;
        }

        .button span:after
        {
            content: '>>';
            position: absolute;
            opacity: 0;
            top: 0;
            right: -20px;
            transition: 0.5s;
        }

        .button:hover span
        {
            padding-right: 25px;
        }

        .button:hover span:after
        {
            opacity: 1;
            right: 0;
        }
    </style>

    <script>
        function redirect()
        {
            window.location = "login.aspx";
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="right">
        <asp:Button ID="Button1" runat="server" Text="Login >>" OnClick="Button1_Click1" />
        <!--<button class="button" onclick="redirect();"><span>Login&nbsp;&nbsp; </span></button>//-->
    </div>

    <div align="center" id="links">
        <table cellspacing="20px" class="auto-style2">
            <tr>
                <td width="50%"><div id="services"><a href="services.aspx">SERVICES</a></div></td>
                <td class="auto-style1" width="50%"><div id="abtus"><a href="abtus.aspx">ABOUT US</a></div></td>
            </tr>
            
            <tr>
                <td width="50%"><div id="contactus"><a href="contactus.aspx">CONTACT US</a></div></td>
                <td class="auto-style1" width="50%"><div id="testimonials"><a href="testimonials.aspx">TESTIMONIALS</a></div></td>
            </tr>

            <%--<tr>
                <td width="50%"><div id="userlogin"><a href="userlogin.aspx">USER LOGIN</a></div></td>
                <td class="auto-style1" width="50%"><div id="adminlogin"><a href="adminlogin.aspx">ADMIN LOGIN</a></div></td>
            </tr>--%>
        </table>
    </div>
</asp:Content>