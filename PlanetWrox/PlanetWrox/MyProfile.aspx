<%@ Page Title="My Profile" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="PlanetWrox.MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
  <h1>My Profile</h1>
  <p>
    The My Profile page allows you to make changes to your personal profile.
      For now, all you can do is change your password below.
  </p>
  <asp:ChangePassword ID="ChangePassword1" runat="server"></asp:ChangePassword>
</asp:Content>
