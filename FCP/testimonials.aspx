﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="testimonials.aspx.cs" Inherits="testimonials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body
        {
            background : url(images/Fast-Food-Wallpaper.jpg);
            background-size : 100%, 100%;
        }

           @-moz-keyframes spinningH {
              from {
                -moz-transform: rotateX(0deg) rotateY(0deg);
              }
              to{
                -moz-transform: rotateX(360deg) rotateY(360deg);
              }
            }

            @-webkit-keyframes spinningH {
              from {
                -webkit-transform: rotateX(0deg) rotateY(0deg);
              }
              to{
                -webkit-transform: rotateX(360deg) rotateY(360deg);
              }
            }

            @-o-keyframes spinningH {
              from {
                -o-transform: rotateX(0deg) rotateY(0deg);
              }
              to{
                -o-transform: rotateX(360deg) rotateY(360deg);
              }
            }

            @-ms-keyframes spinningH {
              from {
                -ms-transform: rotateX(0deg) rotateY(0deg);
              }
              to{
                -ms-transform: rotateX(360deg) rotateY(360deg);
              }
            }

            @keyframes spinningH {
              from {
                transform: rotateX(0deg) rotateY(0deg);
              }
              to{
                transform: rotateX(360deg) rotateY(360deg);
              }
            }

             #container {
              -webkit-perspective : 1000px;
              -moz-perspective    : 1000px;
              -o-perspective      : 1000px;
              -ms-perspective     : 1000px;
              perspective         : 1000px;

              -webkit-perspective-origin  : 50% 50%;
              -moz-perspective-origin     : 50% 50%;
              -moz-transform-origin       : 50% 50%;
              -o-perspective-origin       : 50% 50%;
              -ms-perspective-origin      : 50% 50%;
              perspective-origin          : 50% 50%;
             }

            .animate {
              -webkit-animation : spinningH 6s infinite linear;
              -moz-animation    : spinningH 6s infinite linear;
              -o-animation      : spinningH 6s infinite linear;
              -ms-animation     : spinningH 6s infinite linear;
              animation         : spinningH 6s infinite linear;
            }

            #cube {
              position: relative;
              margin: 0 auto;
              height: 400px;
              width: 400px;

              -webkit-transition  : -webkit-transform 2s linear;
              -moz-transition     : -moz-transform 2s linear;
              -o-transition       : -o-transform 2s linear;
              -ms-transition      : -ms-transform 2s linear;
              transition          : transform 2s linear;

              -webkit-transform-style : preserve-3d;
              -moz-transform-style    : preserve-3d;
              -o-transform-style      : preserve-3d;
              -ms-transform-style     : preserve-3d;
              transform-style         : preserve-3d;
            }

            #cube>div {
              position: absolute;
              height: 360px;
              width: 360px;
              padding: 20px;
              opacity: 0.9;
              background-position:center center;
            }

            #cube div:nth-child(1) {
              -webkit-transform : translateZ(200px);
              -moz-transform    : translateZ(200px);
              -o-transform      : translateZ(200px);
              -ms-transform     : translateZ(200px);
              transform         : translateZ(200px);
              background-color  : #2E272F;
              background-image: url(images/big_84933dba1d539f3e3c700fe7057a915d957fe755.jpg);
              background-size : 100% 100%;
              background-repeat : no-repeat;
            }

            #cube div:nth-child(2) {
              -webkit-transform : rotateY(90deg) translateZ(200px);
              -moz-transform    : rotateY(90deg) translateZ(200px);
              -o-transform      : rotateY(90deg) translateZ(200px);
              -ms-transform     : rotateY(90deg) translateZ(200px);
              transform         : rotateY(90deg) translateZ(200px);
              background-color  : #2D3A4D;
              background-image: url(images/7017765-chocolate-valentine-gift.jpg);
              background-size : 100% 100%;
              background-repeat : no-repeat;
            }

            #cube div:nth-child(3) {
              -webkit-transform : rotateY(180deg) translateZ(200px);
              -moz-transform    : rotateY(180deg) translateZ(200px);
              -o-transform      : rotateY(180deg) translateZ(200px);
              -ms-transform     : rotateY(180deg) translateZ(200px);
              transform         : rotateY(180deg) translateZ(200px);
              background-color  : #2D1C12;
              background-image: url(images/Chane-Food-Photography-Wallpaper-Free-Download-For-Desktop-Mobile-820998484556.jpg);
              background-size : 100% 100%;
              background-repeat : no-repeat;
            }

            #cube div:nth-child(4) {
              -webkit-transform : rotateY(-90deg) translateZ(200px);
              -moz-transform    : rotateY(-90deg) translateZ(200px);
              -o-transform      : rotateY(-90deg) translateZ(200px);
              -ms-transform     : rotateY(-90deg) translateZ(200px);
              transform         : rotateY(-90deg) translateZ(200px);
              background-color  : #693C1F;
              background-image  : url(images/lemon-roast-chicken-free-desktop-wallpaper-5000x3333.jpg);
              background-size : 100% 100%;
              background-repeat : no-repeat;
            }

            #cube div:nth-child(5) {
              -webkit-transform : rotateX(-90deg) translateZ(200px) rotate(180deg);
              -moz-transform    : rotateX(-90deg) translateZ(200px) rotate(180deg);
              -o-transform      : rotateX(-90deg) translateZ(200px) rotate(180deg);
              -ms-transform     : rotateX(-90deg) translateZ(200px) rotate(180deg);
              transform         : rotateX(-90deg) translateZ(200px) rotate(180deg);
              background-color  : #955122;
              background-image  : url(images/hinh-nen-do-an-cho-desktop-30.jpg);
              background-size : 100% 100%;
              background-repeat :no-repeat;
            }

            #cube div:nth-child(6)  {
              -webkit-transform : rotateX(90deg) translateZ(200px);
              -moz-transform    : rotateX(90deg) translateZ(200px);
              -o-transform      : rotateX(90deg) translateZ(200px);
              -ms-transform     : rotateX(90deg) translateZ(200px);
              transform         : rotateX(90deg) translateZ(200px);
              background-color  : #E34C26;
              background-image: url(images/phpThumb_generated_thumbnail-17.jpeg);
              background-size : 100% 100%;
              background-repeat :no-repeat;
              text-align:center;  
            }

            #div_abovecube
            {
                height : 200px;
            }

            #div_belowcube
            {
                height : 200px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="div_abovecube"></div>
    <div id="container">
        <div id="cube" class="animate">
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        </div>
    </div>
    <div id="div_belowcube"></div>
</asp:Content>