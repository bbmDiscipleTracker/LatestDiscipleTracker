<%@ Page Title="" Language="C#" MasterPageFile="~/SAPS.Master" AutoEventWireup="true" CodeBehind="PasswordFeedback.aspx.cs" Inherits="Chilli_Systems_Case_Management_Systems.Log_In.PasswordFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <span class="auto-style2">Your Password Has Been Successfully Changed</span></p>
    <p style="text-align: center">
        <asp:Button ID="btnContinue" runat="server" CssClass="Button" OnClick="btnContinue_Click" PostBackUrl="~/Log In/LogIn.aspx" Text="Continue" />
    </p>
</asp:Content>
