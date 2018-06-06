<%@ Page Title="Reviews Grouped by Genre" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="AllByGenre.aspx.cs" Inherits="PlanetWrox.Reviews.AllByGenre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <h3><asp:Literal ID="Literal1" runat="server" Text='<%# Eval("Name") %>' /></h3>
            <asp:BulletedList ID="ReviewList" runat="server" DataSource='<%# Eval("Reviews")%>' DataTextField="Title" DisplayMode="Text"></asp:BulletedList>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
