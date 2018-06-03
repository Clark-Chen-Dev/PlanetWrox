<%@ Page Title="jQuery Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="jQuery.aspx.cs" Inherits="PlanetWrox.Demos.jQuery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <input id="Button1" type="button" value="button" />
    <script>
        $(document).ready(function () {
            $('#MainContent').css('background-color', 'green')
            $('#Button1').click(function () {
                $('#MainContent').css('background-color', 'red').animate({ width: '100px', height: '800px' })
            });
        });
    </script>
</asp:Content>
