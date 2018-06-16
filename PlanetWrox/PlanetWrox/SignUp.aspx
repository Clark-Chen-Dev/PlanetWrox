<%@ Page Title="Sign Up for a New Account at Planet Wrox" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="PlanetWrox.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
  <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
    <MailDefinition BodyFileName="~/Data/SignUpConfirmation.txt" Subject="Your New Account at PlanetWrox.com">
    </MailDefinition>
    <WizardSteps>
      <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
      </asp:CreateUserWizardStep>
      <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
      </asp:CompleteWizardStep>
    </WizardSteps>
  </asp:CreateUserWizard>
</asp:Content>
