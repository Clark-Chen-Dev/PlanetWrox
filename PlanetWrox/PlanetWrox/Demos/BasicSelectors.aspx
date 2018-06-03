<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="BasicSelectors.aspx.cs" Inherits="PlanetWrox.Demos.BasicSelectors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <h1>Basic Selectors</h1>
    <div class="SampleClass">I am a div.</div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="cpClientScript">
  <script>
    $(function ()
    {
      $('*').css('color', 'Green'); // Universal
      $('#Sidebar').css('border-bottom', '2px solid red'); // ID
      $('h1').bind('click', function () { alert('Hello World') }); // Element
      $('.SampleClass').addClass('PleaseWait').hide(5000); // Class
      $('footer, header').slideUp('slow').slideDown('slow'); // Grouped
      $('#Sidebar img').fadeTo(5000, 0.1); // Combined
    });
  </script>
</asp:Content>
