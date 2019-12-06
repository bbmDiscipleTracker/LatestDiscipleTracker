<%@ Page Title="" Language="C#" MasterPageFile="~/bishop.Master" AutoEventWireup="true" CodeBehind="discipleshipsummary.aspx.cs" Inherits="Discipleship.Bishop.discipleshipsummary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    </p>
    
    Filter by:<br />
    <br />
    <table class="nav-justified">
                    <tr>
                        <td class="auto-style1">
                            Province:</td>
                        <td class="auto-style1">
                            <asp:DropDownList ID="ddlProvince" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlProvince_SelectedIndexChanged1">
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1"></td>
                        <td class="auto-style1"></td>
                        <td class="auto-style1"></td>
                        <td class="auto-style1"></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Region:</td>
                        <td class="auto-style1">
                            <asp:DropDownList ID="ddlRegion" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlRegion_SelectedIndexChanged" Visible="False">
                            </asp:DropDownList>
                            <br />
                        </td>
                        <td class="auto-style1">Branch:</td>
                        <td class="auto-style1">
                            <asp:DropDownList ID="ddlBranch" runat="server" Visible="False" OnSelectedIndexChanged="ddlBranch_SelectedIndexChanged" AutoPostBack="True">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                    </tr>
                </table>
    <p>
        Your Filtering:</p>
    <table class="nav-justified">
                    <tr>
                        <td class="auto-style1">Province</td>
                        <td class="auto-style1">
                            Region</td>
                        <td class="auto-style1">Church</td>
                        <td class="auto-style1">Status:</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
                        </td>
                        <td class="auto-style1">
    <asp:TextBox ID="txtRegion" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
                        </td>
                        <td class="auto-style1">
    <asp:TextBox ID="txtBranch" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
                        </td>
                        <td class="auto-style1">
                            <asp:DropDownList ID="ddlOverAllStatus" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlOverAllStatus_SelectedIndexChanged" Visible="False">
                                <asp:ListItem>All</asp:ListItem>
                                <asp:ListItem>In Progress</asp:ListItem>
                                <asp:ListItem>Completed</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="ddlOverAllStatusRegion" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlOverAllStatusRegion_SelectedIndexChanged" Visible="False" >
                                <asp:ListItem>All</asp:ListItem>
                                <asp:ListItem>In Progress</asp:ListItem>
                                <asp:ListItem>Completed</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="ddlOverAllStatusChurch" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlOverAllStatusChurch_SelectedIndexChanged" Visible="False" >
                                <asp:ListItem>All</asp:ListItem>
                                <asp:ListItem>In Progress</asp:ListItem>
                                <asp:ListItem>Completed</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style1">
                            &nbsp;</td>
                    </tr>
                </table>
    <br />
    <p>
        <asp:MultiView ID="mvSummary" runat="server" ActiveViewIndex="0">
            <asp:View ID="vAll" runat="server">
                
                
                All<br />
                <br />
                <asp:GridView ID="GridView1" runat="server" Width="100%" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="FName" HeaderText="First Name" SortExpression="FName" />
                        <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                        <asp:BoundField DataField="Cell_Number" HeaderText="Cell Number" SortExpression="Cell_Number" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="Province" HeaderText="Province" SortExpression="Province" />
                        <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                        <asp:BoundField DataField="Church" HeaderText="Church" SortExpression="Church" />
                        <asp:BoundField DataField="Overall_Status" HeaderText="Status" SortExpression="Overall_Status" />
                        <asp:BoundField DataField="DisciplerName" HeaderText="Discipler Name" SortExpression="DisciplerName" />
                        <asp:BoundField DataField="DisciplerSurname" HeaderText="Discipler Surname" SortExpression="DisciplerSurname" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FName], [Surname], [Cell_Number], [Gender], [Province], [Region], [Church], [Overall_Status], [DisciplerName], [DisciplerSurname] FROM [Disciple]"></asp:SqlDataSource>
                <br />
                
            </asp:View>
            <asp:View ID="vProvinceRegion" runat="server">
                By Province and Region.<br />
                <br />
                <asp:GridView ID="GridView2" runat="server" Width="100%" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="GridView2_SelectedIndexChanged1">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="FName" HeaderText="First Name" SortExpression="FName" />
                        <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                        <asp:BoundField DataField="Cell_Number" HeaderText="Cell Number" SortExpression="Cell_Number" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="Overall_Comment" HeaderText="Overall_Comment" SortExpression="Overall_Comment" Visible="False" />
                        <asp:BoundField DataField="Province" HeaderText="Province" SortExpression="Province" />
                        <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                        <asp:BoundField DataField="Church" HeaderText="Church" SortExpression="Church" />
                        <asp:BoundField DataField="Overall_Status" HeaderText="Status" SortExpression="Overall_Status" />
                        <asp:BoundField DataField="DisciplerName" HeaderText="Discipler Name" SortExpression="DisciplerName" />
                        <asp:BoundField DataField="DisciplerSurname" HeaderText="Discipler Surname" SortExpression="DisciplerSurname" />
                    </Columns>
                    <EmptyDataTemplate>
                        No Reecords found
                    </EmptyDataTemplate>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FName], [Surname], [Cell_Number], [Gender], [Overall_Comment], [Province], [Region], [Overall_Status], [Church], [DisciplerName], [DisciplerSurname] FROM [Disciple] WHERE (([Province] = @Province) AND ([Region] = @Region))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Province" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtRegion" Name="Region" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
               </asp:View>
            <asp:View ID="vProvinceCompleted" runat="server">
                By province, Region, Branch, NOO Status<br /> <br />
                <asp:GridView ID="GridView3" Width="100%" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="FName" HeaderText="First Name" SortExpression="FName" />
                        <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                        <asp:BoundField DataField="Cell_Number" HeaderText="Cell Number" SortExpression="Cell_Number" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="Overall_Comment" HeaderText="Overall_Comment" SortExpression="Overall_Comment" Visible="False" />
                        <asp:BoundField DataField="Province" HeaderText="Province" SortExpression="Province" />
                        <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                        <asp:BoundField DataField="Church" HeaderText="Church" SortExpression="Church" />
                        <asp:BoundField DataField="Overall_Status" HeaderText="Status" SortExpression="Overall_Status" />
                        <asp:BoundField DataField="DisciplerName" HeaderText="Discipler Name" SortExpression="DisciplerName" />
                        <asp:BoundField DataField="DisciplerSurname" HeaderText="Discipler Surname" SortExpression="DisciplerSurname" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FName], [Surname], [Cell_Number], [Gender], [Overall_Status], [Overall_Comment], [Province], [Region], [Church], [DisciplerName], [DisciplerSurname] FROM [Disciple] WHERE (([Province] = @Province) AND ([Region] = @Region) AND ([Church] = @Church))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Province" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtRegion" Name="Region" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtBranch" Name="Church" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </asp:View>
            <asp:View ID="vProvinceInProgress" runat="server">
                By province only On Status<br /> <br />
                <asp:GridView ID="GridView4" runat="server" Width="100%" DataSourceID="SqlDataSource5" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="FName" HeaderText="First Name" SortExpression="FName" />
                        <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                        <asp:BoundField DataField="Cell_Number" HeaderText="Cell Number" SortExpression="Cell_Number" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="Overall_Comment" HeaderText="Overall_Comment" SortExpression="Overall_Comment" Visible="False" />
                        <asp:BoundField DataField="Province" HeaderText="Province" SortExpression="Province" />
                        <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                        <asp:BoundField DataField="Church" HeaderText="Church" SortExpression="Church" />
                        <asp:BoundField DataField="Overall_Status" HeaderText="Status" SortExpression="Overall_Status" />
                        <asp:BoundField DataField="DisciplerName" HeaderText="Discipler Name" SortExpression="DisciplerName" />
                        <asp:BoundField DataField="DisciplerSurname" HeaderText="Discipler Surname" SortExpression="DisciplerSurname" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FName], [Surname], [Cell_Number], [Gender], [Overall_Status], [Overall_Comment], [Province], [Region], [Church], [DisciplerName], [DisciplerSurname] FROM [Disciple] WHERE (([Province] = @Province) AND ([Overall_Status] = @Overall_Status))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Province" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="ddlOverAllStatus" Name="Overall_Status" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </asp:View>
            <asp:View ID="vRegion" runat="server">
                
                Filtered by province, In Progress
                <br />
                <br />
                <asp:GridView ID="GridView5" runat="server" Width="100%" AutoGenerateColumns="False" DataSourceID="SqlDataSource6" AllowPaging="True" AllowSorting="True">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="FName" HeaderText="First Name" SortExpression="FName" />
                        <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                        <asp:BoundField DataField="Cell_Number" HeaderText="Cell Number" SortExpression="Cell_Number" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="Overall_Comment" HeaderText="Overall_Comment" SortExpression="Overall_Comment" Visible="False" />
                        <asp:BoundField DataField="Province" HeaderText="Province" SortExpression="Province" />
                        <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                        <asp:BoundField DataField="Church" HeaderText="Church" SortExpression="Church" />
                        <asp:BoundField DataField="Overall_Status" HeaderText="Status" SortExpression="Overall_Status" />
                        <asp:BoundField DataField="DisciplerName" HeaderText="Discipler Name" SortExpression="DisciplerName" />
                        <asp:BoundField DataField="DisciplerSurname" HeaderText="Discipler Surname" SortExpression="DisciplerSurname" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FName], [Surname], [Cell_Number], [Gender], [Overall_Status], [Overall_Comment], [Province], [Region], [Church], [DisciplerName], [DisciplerSurname] FROM [Disciple] WHERE (([Province] = @Province) AND ([Overall_Status] = @Overall_Status))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Province" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="ddlOverAllStatus" Name="Overall_Status" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </asp:View>
            <asp:View ID="vRegionCompleted" runat="server">
                By province, region, Completed Status<br /> <br />
                <asp:GridView ID="GridView6" runat="server" Width="100%" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource7">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="FName" HeaderText="First Name" SortExpression="FName" />
                        <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                        <asp:BoundField DataField="Cell_Number" HeaderText="Cell Number" SortExpression="Cell_Number" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="Overall_Comment" HeaderText="Overall_Comment" SortExpression="Overall_Comment" ValidateRequestMode="Enabled" Visible="False" />
                        <asp:BoundField DataField="Province" HeaderText="Province" SortExpression="Province" />
                        <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                        <asp:BoundField DataField="Church" HeaderText="Church" SortExpression="Church" />
                        <asp:BoundField DataField="Overall_Status" HeaderText="Status" SortExpression="Overall_Status" />
                        <asp:BoundField DataField="DisciplerName" HeaderText="Discipler Name" SortExpression="DisciplerName" />
                        <asp:BoundField DataField="DisciplerSurname" HeaderText="Discipler Surname" SortExpression="DisciplerSurname" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FName], [Surname], [Cell_Number], [Gender], [Overall_Status], [Overall_Comment], [Province], [Region], [Church], [DisciplerName], [DisciplerSurname] FROM [Disciple] WHERE (([Province] = @Province) AND ([Region] = @Region) AND ([Overall_Status] = @Overall_Status))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Province" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtRegion" Name="Region" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="ddlOverAllStatusRegion" Name="Overall_Status" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </asp:View>
            <asp:View ID="vRegionInProgress" runat="server">
                By province, region, In progress Status<br /> <br />
                <asp:GridView ID="GridView7" runat="server" Width="100%" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource8">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="FName" HeaderText="First Name" SortExpression="FName" />
                        <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                        <asp:BoundField DataField="Cell_Number" HeaderText="Cell_Number" SortExpression="Cell_Number" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="Overall_Comment" HeaderText="Overall_Comment" SortExpression="Overall_Comment" Visible="False" />
                        <asp:BoundField DataField="Province" HeaderText="Province" SortExpression="Province" />
                        <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                        <asp:BoundField DataField="Church" HeaderText="Church" SortExpression="Church" />
                        <asp:BoundField DataField="Overall_Status" HeaderText="Status" SortExpression="Overall_Status" />
                        <asp:BoundField DataField="DisciplerName" HeaderText="Discipler Name" SortExpression="DisciplerName" />
                        <asp:BoundField DataField="DisciplerSurname" HeaderText="Discipler Surname" SortExpression="DisciplerSurname" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FName], [Surname], [Gender], [Overall_Status], [Overall_Comment], [Province], [Region], [Church], [DisciplerName], [DisciplerSurname], [Cell_Number] FROM [Disciple] WHERE (([Province] = @Province) AND ([Region] = @Region) AND ([Overall_Status] = @Overall_Status))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Province" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtRegion" Name="Region" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="ddlOverAllStatusChurch" Name="Overall_Status" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </asp:View>
            <br />
            <asp:View ID="vChurch" runat="server">
                By Province , Region , Church and Status<br />
                <br />
                <asp:GridView ID="GridView9" runat="server" AllowPaging="True" Width="100%" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource10">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="FName" HeaderText="First Name" SortExpression="FName" />
                        <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                        <asp:BoundField DataField="Cell_Number" HeaderText="Cell Number" SortExpression="Cell_Number" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="Overall_Comment" HeaderText="Overall_Comment" SortExpression="Overall_Comment" Visible="False" />
                        <asp:BoundField DataField="Province" HeaderText="Province" SortExpression="Province" />
                        <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                        <asp:BoundField DataField="Church" HeaderText="Church" SortExpression="Church" />
                        <asp:BoundField DataField="Overall_Status" HeaderText="Status" SortExpression="Overall_Status" />
                        <asp:BoundField DataField="DisciplerName" HeaderText="Discipler Name" SortExpression="DisciplerName" />
                        <asp:BoundField DataField="DisciplerSurname" HeaderText="Discipler Surname" SortExpression="DisciplerSurname" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FName], [Surname], [Cell_Number], [Gender], [Overall_Status], [Overall_Comment], [Province], [Region], [Church], [DisciplerName], [DisciplerSurname] FROM [Disciple] WHERE (([Province] = @Province) AND ([Region] = @Region) AND ([Church] = @Church) AND ([Overall_Status] = @Overall_Status))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Province" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtRegion" Name="Region" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="txtBranch" Name="Church" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="ddlOverAllStatusChurch" Name="Overall_Status" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </asp:View>
            <br />
            <asp:View ID="vProvinceOnly" runat="server">
                Province Only<br /> <br />
                <asp:GridView ID="GridView8" runat="server" Width="100%" AutoGenerateColumns="False" DataSourceID="SqlDataSource9" AllowPaging="True" AllowSorting="True">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="FName" HeaderText="First Name" SortExpression="FName" />
                        <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="Cell_Number" HeaderText="Cell Number" SortExpression="Cell_Number" />
                        <asp:BoundField DataField="Overall_Comment" HeaderText="Overall_Comment" SortExpression="Overall_Comment" Visible="False" />
                        <asp:BoundField DataField="Province" HeaderText="Province" SortExpression="Province" />
                        <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                        <asp:BoundField DataField="Church" HeaderText="Church" SortExpression="Church" />
                        <asp:BoundField DataField="Overall_Status" HeaderText="Status" SortExpression="Overall_Status" />
                        <asp:BoundField DataField="DisciplerName" HeaderText="Discipler Name" SortExpression="DisciplerName" />
                        <asp:BoundField DataField="DisciplerSurname" HeaderText="Discipler Surname" SortExpression="DisciplerSurname" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FName], [Surname], [Gender], [Cell_Number], [Overall_Status], [Overall_Comment], [Province], [Region], [Church], [DisciplerName], [DisciplerSurname] FROM [Disciple] WHERE ([Province] = @Province)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Province" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </asp:View>
            <br />
            <br />
        </asp:MultiView>
    </p>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [fName], [Title], [Surname] FROM [Users] WHERE ([Username] = @Username)">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblUser" Name="Username" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
   
    <p>
        <asp:Label ID="lblUser" runat="server" Text="..." Visible="False"></asp:Label>
    </p>
</asp:Content>
