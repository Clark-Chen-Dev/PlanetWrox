<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContactForm.ascx.cs" Inherits="PlanetWrox.Controls.ContactForm" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>
<script>    
    function validatePhoneNumbers(source, args) {
        var phoneHome = document.getElementById('<%= PhoneHome.ClientID%>');
        var phoneBusiness = document.getElementById('<%= PhoneBusiness.ClientID %>');

        if (phoneHome.value != '' || phoneBusiness.value != '') {
            args.IsValid = true;
        }
        else {
            args.IsValid = false;
        }
    }
</script>

<table class="auto-style1" runat="server" id="FormTable">
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
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" CssClass="ErrorMessage" ErrorMessage="Enter your name">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>E-mail address</td>
        <td>
            <asp:TextBox ID="EmailAddress" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter an e-mail address" ControlToValidate="EmailAddress">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter a valid e-mail address" CssClass="ErrorMessage" Display="Dynamic" ControlToValidate="EmailAddress" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>Repeat e-mail address</td>
        <td>
            <asp:TextBox ID="ConfirmEmailAddress" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Confirm the e-mail address" ControlToValidate="ConfirmEmailAddress">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="The e-mail address don't match" CssClass="ErrorMessage" Display="Dynamic" ControlToValidate="ConfirmEmailAddress" ControlToCompare="EmailAddress"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>Home phone number</td>
        <td>
            <asp:TextBox ID="PhoneHome" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:CustomValidator ID="CustomValidator1" runat="server" CssClass="ErrorMessage" ErrorMessage="Enter your home or business phone number" Display="Dynamic" Text="*" ClientValidationFunction="validatePhoneNumbers" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
        </td>
    </tr>
    <tr>
        <td>Business phone number</td>
        <td>
            <asp:TextBox ID="PhoneBusiness" runat="server"></asp:TextBox>
        </td>
        <td></td>
    </tr>
    <tr>
        <td>Comments</td>
        <td>
            <asp:TextBox ID="Comments" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter a comment" CssClass="ErrorMessage" Display="Dynamic" ControlToValidate="Comments">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:Button ID="SendButton" runat="server" Text="Send" OnClick="SendButton_Click" /></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Please correct the following errors:" />
        </td>
    </tr>
</table>

<asp:Label ID="Message" runat="server" Text="Message Sent" Visible="false"></asp:Label>