<%@ Page Title="" Language="C#" MasterPageFile="~/discipler.Master" AutoEventWireup="true" CodeBehind="mydisciples.aspx.cs" Inherits="Discipleship.Discipler.mydisciples" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/Grid.css" rel="stylesheet" />
    <p>
        <br />
    </p>
    <p>
        <asp:FormView ID="FormView1" Align="Right" runat="server" DataSourceID="SqlDataSource1" Height="18px" Width="462px">
            <EditItemTemplate>
                Title:
                <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                <br />
                fName:
                <asp:TextBox ID="fNameTextBox" runat="server" Text='<%# Bind("fName") %>' />
                <br />
                Surname:
                <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Title:
                <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                <br />
                fName:
                <asp:TextBox ID="fNameTextBox" runat="server" Text='<%# Bind("fName") %>' />
                <br />
                Surname:
                <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <strong>Sign In</strong>:&nbsp;
                <asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>' />
                &nbsp;|
                <asp:Label ID="fNameLabel" runat="server" Text='<%# Bind("fName") %>' />
                &nbsp;<asp:Label ID="SurnameLabel" runat="server" Text='<%# Bind("Surname") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
    </p>
    <div>
        <br />
        <br />
        <br />
    </div>
    <div>
        <h1>
            List of all Disciples assigned to you.
        </h1>
    </div>
    <p>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="vMyDisciples" runat="server">
                <asp:GridView ID="GridView1" runat="server" Width="100%" CssClass="Grid" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="Disciple_Id" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellSpacing="2" ForeColor="Black">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Disciple_Id" HeaderText="Disc Code" ReadOnly="True" SortExpression="Disciple_Id" />
                        <asp:BoundField DataField="FName" HeaderText="First Name" SortExpression="FName" />
                        <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                        <asp:BoundField DataField="Cell_Number" HeaderText="Cell Number" SortExpression="Cell_Number" />
                        <asp:BoundField DataField="Date_Of_Birth" HeaderText="Date of Birth" SortExpression="Date_Of_Birth" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="Str_Num" HeaderText="House No." SortExpression="Str_Num" />
                        <asp:BoundField DataField="Str_Name" HeaderText="Str Name" SortExpression="Str_Name" />
                        <asp:BoundField DataField="Str_Suburb" HeaderText="Str Suburb" SortExpression="Str_Suburb" />
                        <asp:BoundField DataField="Str_Town" HeaderText="Str Town" SortExpression="Str_Town" />
                        <asp:BoundField DataField="Overall_Status" HeaderText="Overall Status" SortExpression="Overall_Status" />
                        <asp:BoundField DataField="Church" HeaderText="Church" SortExpression="Church" />
                    </Columns>
                    <EmptyDataTemplate>
                        No records found.
                    </EmptyDataTemplate>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Disciple_Id], [FName], [Surname], [Cell_Number], [Date_Of_Birth], [Email], [Gender], [Str_Name], [Str_Suburb], [Str_Num], [Str_Town], [Overall_Status], [Church] FROM [Disciple] WHERE ([Discipler_ID] = @Discipler_ID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblUser" Name="Discipler_ID" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <br />
                <br />
                <br />
            </asp:View>
        </asp:MultiView>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Title], [fName], [Surname] FROM [Users] WHERE ([Username] = @Username)">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblUser" Name="Username" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
        <asp:Label ID="lblUser" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblDiscipleID" runat="server" Visible="False" ></asp:Label>
    </p>
</asp:Content>
