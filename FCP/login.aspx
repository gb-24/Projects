<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body
        {
            background-color : #232121;
        }

        #xyz
        {
            height : 150px;
        }

        #mid div
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

        a
        {
            text-decoration : none;
            color : darkgray;
        }

        #mid #xyz1:hover
        {
            background : #52a90e;
            color : white;
            -webkit-transition: all ease 0.7s;
            -moz-transition: all ease 0.7s;
            -o-transition: all ease 0.7s;
            -ms-transition: all ease 0.7s ;
            transition: all ease 0.5s ;
        }

        #mid #xyz2:hover
        {
            background : #b200ff;
            color : white;
            -webkit-transition: all ease 0.7s;
            -moz-transition: all ease 0.7s;
            -o-transition: all ease 0.7s;
            -ms-transition: all ease 0.7s ;
            transition: all ease 0.5s ;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="main" align="center">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <div id="mid" align="center">
            <table align="center" width="80%">
                <tr>
                    <td width="50%" id="xyz1"><div><a href="userlogin.aspx">USER LOGIN</a></div></td>
                    <td width="50%" id="xyz2"><div><a href="adminlogin.aspx">ADMIN LOGIN</a></div></td>
                </tr>
            </table>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>

