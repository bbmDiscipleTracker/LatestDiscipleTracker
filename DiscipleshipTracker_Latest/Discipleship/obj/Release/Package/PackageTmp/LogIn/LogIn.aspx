<%@ Page Title="" Language="C#" MasterPageFile="~/SAPS.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Chilli_Systems_Case_Management_Systems.Log_In.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: right;
            font-family: "Segoe UI Semibold";
            font-weight: bold;
            font-size: medium;
            color: #3366FF;
            width: 150px;
        }
    .auto-style4 {
        width: 150px;
        text-align: right;
        font-family: "Segoe UI Semibold";
        color: #3366FF;
        font-size: medium;
        text-decoration: blink;
        font-weight: bold;
    }
        .auto-style5 {
            width: 225px;
            text-align: left;
        }
        .auto-style6 {
            border: 2px solid #999;
            border-radius: 8px;
            box-shadow: 0 0 30px #999;
            width: 154px;
            height: 25px;
        }
        .auto-style8 {
            width: 172px;
        }
        .auto-style9 {
            width: 150px;
            text-align: right;
            font-family: "Segoe UI Semibold";
            color: #3366FF;
            font-size: medium;
            text-decoration: blink;
            font-weight: bold;
            height: 34px;
        }
        .auto-style10 {
            width: 225px;
            text-align: left;
            height: 34px;
        }
        .auto-style11 {
            width: 172px;
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
<p>
        <br />
    <fieldset style="width:95%; height:280px;">
        
        <legend  class="auto-style6"><center>LOGIN</center></legend>
        
        <table style="width:68%; height: 100px; margin-left: 282px;" align="center">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td style="text-align: right" class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;Persal Number:</td>
                <td style="text-align: right" class="auto-style10">
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="SeachText" Height="20px" Width="130px" AutoCompleteType="Disabled" ></asp:TextBox>
                </td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="Password" TextMode="Password" Height="20px" Width="130px"></asp:TextBox>
                </td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btnLogIn" runat="server" OnClick="btnLogIn_Click" Text="LOGIN" CssClass="Button" Height="35px" Width="125px" />
                </td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:LinkButton ID="lnkBForgotPassword" runat="server" Font-Underline="false" PostBackUrl="~/Log In/ForgotPassword.aspx">Forgot password ? </asp:LinkButton>
                </td>
                <td class="auto-style8">
                    <asp:LinkButton ID="lnkBChangePassword" runat="server" Font-Underline="false" PostBackUrl="~/Log In/ChangePassword.aspx">Change Password</asp:LinkButton>
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red" style="text-align: center"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
            
        </fieldset>
    </p>
    <p>
        &nbsp;</p>
<br />
<br />
</asp:Content>
