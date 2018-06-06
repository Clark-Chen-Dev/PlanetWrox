<%@ Page Title="Create New Photo Album" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="NewPhotoAlbum.aspx.cs" Inherits="PlanetWrox.NewPhotoAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:DetailsView ID="DetailsView1" AutoGenerateRows="false" DefaultMode="Insert" runat="server" InsertMethod="DetailsView1_InsertItem">
        <Fields>
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:CommandField ShowInsertButton="True" ShowCancelButton="false" />
        </Fields>
    </asp:DetailsView>
</asp:Content>
