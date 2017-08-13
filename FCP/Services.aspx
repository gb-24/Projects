<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="services.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        h1
        {
            font-size : 25px;
            color : #0094ff;
        }

        body
        {
            background : url(images/Cupcakes-food-31237025-1024-768.jpg);
            background-size : 100%, 100%;
        }

        .img_txt
        {
            font-family : Chiller;
            font-size : 32px;
        }

        .img_txt_span:hover
        {
            zoom : 1.5;
        }

        .img_txt_span
        {
            background : #ffd800;
            padding : 10px;
            border-radius : 15px;
        }

        .img_txt_span a
        {
            text-decoration : none;
            color : #ff006e;
        }
        .img_txt_span a:visited,:hover
        {
            text-decoration : none;
            color : #ff006e;
        }
        .img_txt_span a:active
        {
            text-decoration : none;
            color : #ff006e;
        }

        .zoomin
        {
            width: 200px;
            -webkit-transition: all 2s ease;
            -moz-transition: all 2s ease;
            -ms-transition: all 2s ease;
            transition: all 2s ease;
        }
            
        .zoomin:hover
        {
            width: 300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 align="center">SERVICES</h1>
    <br />
    <table width="100%" align="center" cellspacing="20px">
        <tr align="center">
            <td width="50%">
                <img class="zoomin" src="images/Fast-Food-Wallpaper.jpg" width="200px" />
            </td>
            <td class="img_txt"><span class="img_txt_span"><a href="itmoff.aspx">Items Offered</a></span></td>
        </tr>

        <tr align="center">
            <td width="50%">
                <img class="zoomin" src="images/food-desktop-backgrounds.jpg" width="200px" />
            </td>
            <td class="img_txt"><span class="img_txt_span"><a href="outlets.aspx">Outlets</a></span></td>
        </tr>
        
        <tr align="center">
            <td width="50%">
                <img class="zoomin" src="images/big_84933dba1d539f3e3c700fe7057a915d957fe755.jpg" width="200px" />
            </td>
            <td class="img_txt"><span class="img_txt_span"><a href="placeorder.aspx">Place Order</a></span></td>
        </tr>

        <tr align="center">
            <td width="50%">
                <img class="zoomin" src="images/jhdfuyak.jpg" width="200px" />
            </td>
            <td class="img_txt"><span class="img_txt_span"><a href="bookhalls.aspx">Book Party Halls</a></span></td>
        </tr>
    </table>
   <p align="center">&nbsp;</p>
</asp:Content>