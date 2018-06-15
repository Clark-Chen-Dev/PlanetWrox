<%@ Page Title="All Reviews" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="All.aspx.cs" Inherits="PlanetWrox.Reviews.All" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
  <asp:Repeater ID="Repeater1" runat="server" ItemType="Review">
    <ItemTemplate>
      <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ViewDetails?ReviewId=" + Item.Id.ToString() %>' Text='<%# Item.Title %>'></asp:HyperLink>
    </ItemTemplate>
    <SeparatorTemplate>
      <br />
    </SeparatorTemplate>
  </asp:Repeater>
</asp:Content>
