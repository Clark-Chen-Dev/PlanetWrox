<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="PlanetWrox.About.Contact" %>

<%@ Register Src="~/Controls/ContactForm.ascx" TagPrefix="Wrox" TagName="ContactForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <Wrox:ContactForm runat="server" ID="ContactForm" />
</asp:Content>