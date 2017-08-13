<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="adminhome" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Menu</title>
        <link rel="stylesheet" type="text/css" href="css2/demo.css" />
        <link rel="stylesheet" type="text/css" href="css2/style1.css" />
		<!--[if IE]>
			<link rel="stylesheet" type="text/css" href="css/styleIE.css" />
		<![endif]-->
        <link href='http://fonts.googleapis.com/css?family=Josefin+Slab' rel='stylesheet' type='text/css' />
    </head>
    <body style="background-image: url(images/pattern.png), url(images/1.jpg);">
        <form id="form1" runat="server">
            <div align="right">
                <asp:Button ID="Button1" runat="server" Text="Logout!!!!" OnClick="Button1_Click" />
            </div>
        <div class="content">
            <br /><br /><br /><br /><br />
            <br /><br /><br /><br /><br />
            <br /><br /><br /><br /><br />
            <ul class="bmenu">
                <li><a href="admindetails.aspx">View Your Details</a></li>
                <li><a href="empdetails.aspx">Employee Details</a></li>
                <li><a href="bookdetails.aspx">Booking Details</a></li>
                <li><a href="outletdetails.aspx">Outlet Details</a></li>
                <li><a href="custdetails.aspx">Customer Details</a></li>
                <li><a href="game.aspx">Play Game(Free Time)</a></li>
            </ul>
        </div>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
        </form>
    </body>
</html>