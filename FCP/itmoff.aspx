<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="itmoff.aspx.cs" Inherits="itmoff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body
        {
            background : url(images/egs_healthy_food_wallpaper_hd_.jpg);
            background-size : 100% 100%;
        }

        h2
        {
            align : center;
            color : #0094ff;
        }

        h3
        {
            color : #04b227;
        }

        #GridView1
        {
            align : center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <hr />
    <h2>ITEMS OFFERED</h2>
    <hr />

    <div id="div_body_txt">
        <h3>
            <u>Here is the list of items we offer :&#8628;</u>
        </h3>
    </div>

    <div align="center">

        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="80%">
            <Columns>
                <asp:BoundField DataField="itm_code" HeaderText="Code" ReadOnly="True" SortExpression="itm_code" />
                <asp:BoundField DataField="itm_name" HeaderText="Name" ReadOnly="True" SortExpression="itm_name" />
                <asp:BoundField DataField="itm_price" HeaderText="Price (Rs)" ReadOnly="True" SortExpression="itm_price" />
                <asp:BoundField DataField="itm_image" HeaderText="Image" ReadOnly="True" SortExpression="itm_image" />
            </Columns>
        </asp:GridView>

    </div>
</asp:Content>

