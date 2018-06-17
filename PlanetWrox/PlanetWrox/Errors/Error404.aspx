<%@ Page Title="File Not Found" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="Error404.aspx.cs" Inherits="PlanetWrox.Errors.Error404" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
  <h1>File Not Found</h1>
  <p>
    The page you requested could not be found. Please check out the <a href="~/" runat="server">Homepage</a> or choose a different page from the menu.
  </p>
  <p>The Planet Wrox Team</p>
</asp:Content>
