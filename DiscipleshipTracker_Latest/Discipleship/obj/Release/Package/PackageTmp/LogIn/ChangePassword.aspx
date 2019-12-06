<%@ Page Title="" Language="C#" MasterPageFile="~/SAPS.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Chilli_Systems_Case_Management_Systems.Log_In.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 204px;
        }
        .auto-style3 {
            width: 272px;
            text-align: right;
        }
        .auto-style4 {
            width: 272px;
            height: 13px;
        }
        .auto-style5 {
            width: 204px;
            height: 13px;
        }
        .auto-style6 {
            height: 13px;
        }
        .auto-style7 {
            width: 127px;
            text-align: right;
        }
        .auto-style8 {
            width: 127px;
            height: 13px;
        }
        .auto-style9 {
            text-align: center;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="text-align: center">
        <br />
    </p>
    <p class="auto-style9">
        Change Password</p>
    <p>
        <asp:Label ID="lblPasswordSuccSaved" runat="server" style="text-align: center"></asp:Label>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style3">Persal Number:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtPersalNo" runat="server" AutoCompleteType="Disabled" CssClass="SeachText"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblCangePassword" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" style="text-align: right">&nbsp;</td>
                <td class="auto-style3" style="text-align: right">Existing Password:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtCurrentPassword" runat="server" AutoCompleteType="Disabled" CssClass="SeachText" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7" style="text-align: right">&nbsp;</td>
                <td class="auto-style3" style="text-align: right">New Password:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtNewPassword" runat="server" AutoCompleteType="Disabled" CssClass="SeachText" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7" style="text-align: right">&nbsp;</td>
                <td class="auto-style3" style="text-align: right">Confirm Password:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtConfirmPassword" runat="server" AutoCompleteType="Disabled" CssClass="SeachText" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="cvConfirmPassword" runat="server" ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Your new password do not match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="btnSaveChangePW" runat="server" CssClass="Button" OnClick="btnSaveChangePW_Click" Text="Save" />
                </td>
                <td>
                    <asp:Button ID="btnCancelPW" runat="server" CssClass="Button" Text="Cancel" OnClick="btnCancelPW_Click" PostBackUrl="~/Log In/LogIn.aspx" />
                </td>
            </tr>
        </table>
    </p>
    <p>
    </p>
</asp:Content>
