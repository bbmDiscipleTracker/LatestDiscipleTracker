<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Discipleship.Admin.Report" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
!DOCTYPE html>
<%@ Register Assembly="Stimulsoft.Report.Web" Namespace="Stimulsoft.Report.Web" TagPrefix="cc1" %>
<html>

<body>
    <form id="form1">
        <div>
            <cc1:StiWebViewer ID="StiWebViewer1" runat="server" Localization="Localization/en.xml"/>
        </div>
    </form>
</body>
</html>
</asp:Content>
