<%@ Page Title="" Language="C#" MasterPageFile="~/bishop.Master" AutoEventWireup="true" CodeBehind="disciple.aspx.cs" Inherits="Discipleship.Bishop.disciple" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <link href="../css/Grid.css" rel="stylesheet" />
    <p></p>
        <p>
            <asp:FormView ID="FormView1" align="right" runat="server" DataSourceID="SqlDataSource1">
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
                    <strong>Sign In:</strong>
                    <asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>' />
                    &nbsp;|
                    <asp:Label ID="fNameLabel" runat="server" Text='<%# Bind("fName") %>' />
                    &nbsp;<asp:Label ID="SurnameLabel" runat="server" Text='<%# Bind("Surname") %>' />
                    <br />

                </ItemTemplate>
            </asp:FormView>
        </p>

    <br />
     <p>
        <asp:MultiView ID="mvSummary" runat="server" ActiveViewIndex="0">
            <asp:View ID="vAll" runat="server">
                
                
                <h2>All Disciplers</h2><br />
                <br />
                <asp:GridView ID="GridView1" runat="server" Width="100%" AllowPaging="True" AllowSorting="True"  CssClass="Grid" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="FName" HeaderText="First Name" SortExpression="FName" />
                        <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                        <asp:BoundField DataField="Cell_Number" HeaderText="Cell Number" SortExpression="Cell_Number" />
                        <asp:BoundField DataField="Province" HeaderText="Province" SortExpression="Province" />
                        <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                        <asp:BoundField DataField="Town" HeaderText="Town" SortExpression="Town" />
                        <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FName], [Surname], [Cell_Number], [Province], [Region], [Town], [Branch], [Email] FROM [Users] where ([Designation] = 'Discipler')"></asp:SqlDataSource>
                 <br />
                
            </asp:View>
            </asp:MultiView>
            </p>
    <br />
    <br />
    <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Title], [fName], [Surname] FROM [Users] WHERE ([Username] = @Username)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblUser" Name="Username" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
    
       <p>
        <asp:Label ID="lblUser" runat="server" Text="..." Visible="False"></asp:Label>
           

    </p>
    </asp:Content>
