<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContactForm.ascx.cs" Inherits="PlanetWrox.Controls.ContactForm" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>

<table class="auto-style1">
    <tr>
        <td colspan="3">
            <h1>Get in touch with us</h1>
            <p>
                Use the form below to get in touch with us. Enter your name, e-mail address, and your home or business phone number to get in touch with us.
            </p>
        </td>
    </tr>
    <tr>
        <td>Name</td>
        <td>
            <asp:TextBox ID="Name" runat="server" /></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" CssClass="ErrorMessage" ErrorMessage="Enter your name"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><asp:Button ID="SendButton" runat="server" Text="Send" OnClick="SendButton_Click" /></td>
        <td>&nbsp;</td>
    </tr>
</table>

