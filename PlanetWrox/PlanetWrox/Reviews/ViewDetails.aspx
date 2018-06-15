<%@ Page Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="ViewDetails.aspx.cs" Inherits="PlanetWrox.Reviews.ViewDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
  <h1>
    <asp:Label ID="TitleLabel" runat="server"></asp:Label></h1>
  <asp:Label CssClass="Summary" ID="SummaryLabel" runat="server"></asp:Label>
  <asp:Label ID="BodyLabel" runat="server"></asp:Label>
</asp:Content>
