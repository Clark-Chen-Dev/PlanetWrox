<%@ Page Title="WebServices Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="WebServices.aspx.cs" Inherits="PlanetWrox.Demos.WebServices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
        <Services>
            <asp:ServiceReference Path="~/WebServices/NameService.svc" />
        </Services>
    </asp:ScriptManagerProxy>
    <input id="YourName" type="text"  />
    <input id="SayHello" type="button" value="Say Hello" onclick="helloWorld();"/>
    <script>
      function helloWorld() {
            var yourName = document.getElementById('YourName').value;
            NameService.HelloWorld(yourName, helloWorldCallback);
        }

        function helloWorldCallback(result) {
            alert(result);
        }
    </script>
</asp:Content>
