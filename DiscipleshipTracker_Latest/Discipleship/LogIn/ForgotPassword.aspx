<%@ Page Title="" Language="C#" MasterPageFile="~/SAPS.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Chilli_Systems_Case_Management_Systems.Log_In.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 282px;
            text-align: right;
        }
        .auto-style3 {
            width: 219px;
        }
        .auto-style4 {
            width: 119px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">Please enter your Persal Number:&nbsp; </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPersalForgotPassW" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblConfirmPassW" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="btnBackLogin" runat="server" CssClass="Button" PostBackUrl="~/Log In/LogIn.aspx" Text="Back to Login" />
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btnSendPassword" runat="server" CssClass="Button" Text="Send Password" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
