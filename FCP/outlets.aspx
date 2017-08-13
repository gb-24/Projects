<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="outlets.aspx.cs" Inherits="outlets" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body
        {
            background : url(images/map.jpg);
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
    <h2>OUTLETS</h2>
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
                <asp:BoundField DataField="outlet_no" HeaderText="Outlet Number" ReadOnly="True" SortExpression="outlet_no" />
                <asp:BoundField DataField="outlet_pos" HeaderText="Area" ReadOnly="True" SortExpression="outlet_pos" />
                <asp:BoundField DataField="addr" HeaderText="Address" ReadOnly="True" SortExpression="addr" />
                <asp:BoundField DataField="status" HeaderText="Status" ReadOnly="True" SortExpression="status" />
            </Columns>
        </asp:GridView>

    </div>
</asp:Content>

