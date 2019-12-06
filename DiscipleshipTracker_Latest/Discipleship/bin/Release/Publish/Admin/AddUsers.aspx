<%@ Page Title="" Language="C#" MasterPageFile="~/discipler.Master" AutoEventWireup="true" CodeBehind="AddUsers.aspx.cs" Inherits="Discipleship.Admin.AddUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <br />
        <asp:FormView ID="FormView1" align="Right" runat="server" DataKeyNames="Disciple_Id" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                Disciple_Id:
                <asp:Label ID="Disciple_IdLabel1" runat="server" Text='<%# Eval("Disciple_Id") %>' />
                <br />
                Title:
                <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                <br />
                fName:
                <asp:TextBox ID="fNameTextBox" runat="server" Text='<%# Bind("fName") %>' />
                <br />
                Surname:
                <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
                <br />
                Region:
                <asp:TextBox ID="RegionTextBox" runat="server" Text='<%# Bind("Region") %>' />
                <br />
                Province:
                <asp:TextBox ID="ProvinceTextBox" runat="server" Text='<%# Bind("Province") %>' />
                <br />
                Branch:
                <asp:TextBox ID="BranchTextBox" runat="server" Text='<%# Bind("Branch") %>' />
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
                Region:
                <asp:TextBox ID="RegionTextBox" runat="server" Text='<%# Bind("Region") %>' />
                <br />
                Province:
                <asp:TextBox ID="ProvinceTextBox" runat="server" Text='<%# Bind("Province") %>' />
                <br />
                Branch:
                <asp:TextBox ID="BranchTextBox" runat="server" Text='<%# Bind("Branch") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                &nbsp;<asp:Label ID="Disciple_IdLabel" runat="server" Text='<%# Eval("Disciple_Id") %>' Visible="False" />
                &nbsp;Sign In:&nbsp;
                <asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>' />
                &nbsp;<asp:Label ID="fNameLabel" runat="server" Text='<%# Bind("fName") %>' />
                &nbsp;<asp:Label ID="SurnameLabel" runat="server" Text='<%# Bind("Surname") %>' />
                &nbsp;[
                <asp:Label ID="RegionLabel" runat="server" Text='<%# Bind("Region") %>' />
                &nbsp;] [
                <asp:Label ID="ProvinceLabel" runat="server" Text='<%# Bind("Province") %>' />
                &nbsp;] [
                <asp:Label ID="BranchLabel" runat="server" Text='<%# Bind("Branch") %>' />
                &nbsp;]<br />

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Disciple_Id], [Title], [fName], [Surname], [Region], [Province], [Branch] FROM [Users] WHERE ([Username] = @Username)">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblUser" Name="Username" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:MultiView ID="mvUser" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Disciple_Id" DataSourceID="SqlDataSource2" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="fName" HeaderText="fName" SortExpression="fName" />
                        <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                        <asp:BoundField DataField="Province" HeaderText="Province" SortExpression="Province" />
                        <asp:BoundField DataField="Cell_Number" HeaderText="Cell_Number" SortExpression="Cell_Number" />
                        <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                        <asp:BoundField DataField="Town" HeaderText="Town" SortExpression="Town" />
                        <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
                        <asp:BoundField DataField="Suburb" HeaderText="Suburb" SortExpression="Suburb" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                        <asp:BoundField DataField="Disciple_Id" HeaderText="Disciple_Id" InsertVisible="False" ReadOnly="True" SortExpression="Disciple_Id" />
                    </Columns>
                </asp:GridView>
                <br />
                <asp:Button ID="btnAddNew" runat="server" OnClick="btnAddNew_Click" Text="Add New User" />

            </asp:View>
            <asp:View ID="View2" runat="server">
                <br />
                <asp:FormView ID="FormView2" runat="server" AllowPaging="True" DataKeyNames="Disciple_Id" DataSourceID="SqlDataSource3" DefaultMode="Insert" Caption="Enter New User Details" CaptionAlign="Top" OnPageIndexChanging="FormView2_PageIndexChanging" Width="555px">
                    <EditItemTemplate>
                        Disciple_Id:
                        <asp:Label ID="Disciple_IdLabel1" runat="server" Text='<%# Eval("Disciple_Id") %>' />
                        <br />
                        Title:
                        <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                        <br />
                        fName:
                        <asp:TextBox ID="fNameTextBox" runat="server" Text='<%# Bind("fName") %>' />
                        <br />
                        Surname:
                        <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
                        <br />
                        Cell_Number:
                        <asp:TextBox ID="Cell_NumberTextBox" runat="server" Text='<%# Bind("Cell_Number") %>' />
                        <br />
                        Province:
                        <asp:TextBox ID="ProvinceTextBox" runat="server" Text='<%# Bind("Province") %>' />
                        <br />
                        Region:
                        <asp:TextBox ID="RegionTextBox" runat="server" Text='<%# Bind("Region") %>' />
                        <br />
                        Town:
                        <asp:TextBox ID="TownTextBox" runat="server" Text='<%# Bind("Town") %>' />
                        <br />
                        Branch:
                        <asp:TextBox ID="BranchTextBox" runat="server" Text='<%# Bind("Branch") %>' />
                        <br />
                        Suburb:
                        <asp:TextBox ID="SuburbTextBox" runat="server" Text='<%# Bind("Suburb") %>' />
                        <br />
                        Email:
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                        <br />
                        Designation:
                        <asp:TextBox ID="DesignationTextBox" runat="server" Text='<%# Bind("Designation") %>' />
                        <br />
                        Username:
                        <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                        <br />
                        Password:
                        <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
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
                        Cell_Number:
                        <asp:TextBox ID="Cell_NumberTextBox" runat="server" Text='<%# Bind("Cell_Number") %>' />
                        <br />
                        Province:
                        <asp:TextBox ID="ProvinceTextBox" runat="server" Text='<%# Bind("Province") %>' />
                        <br />
                        Region:
                        <asp:TextBox ID="RegionTextBox" runat="server" Text='<%# Bind("Region") %>' />
                        <br />
                        Town:
                        <asp:TextBox ID="TownTextBox" runat="server" Text='<%# Bind("Town") %>' />
                        <br />
                        Branch:
                        <asp:TextBox ID="BranchTextBox" runat="server" Text='<%# Bind("Branch") %>' />
                        <br />
                        Suburb:
                        <asp:TextBox ID="SuburbTextBox" runat="server" Text='<%# Bind("Suburb") %>' />
                        <br />
                        Email:
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                        <br />
                        Designation:
                        <asp:TextBox ID="DesignationTextBox" runat="server" Text='<%# Bind("Designation") %>' />
                        <br />
                        Username:
                        <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                        <br />
                        Password:
                        <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <table>
                         <tr><td align="right"><b>Disciple_Id:</b></td> 
                         <td><asp:Label ID="Disciple_IdLabel" runat="server" Text='<%# Eval("Disciple_Id") %>' /></td></tr>
                      
                         <tr><td align="right"><b>Title:</b></td> 
                        <td> <asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>' /></td></tr>
                     
                         <tr><td align="right"><b>Firstname:</b></td> 
                        <td> <asp:Label ID="fNameLabel" runat="server" Text='<%# Bind("fName") %>' /></td></tr>
                     
                         <tr><td align="right"><b>Surname:</b></td> 
                        <td> <asp:Label ID="SurnameLabel" runat="server" Text='<%# Bind("Surname") %>' /></td></tr>
                      
                         <tr><td align="right"><b>Cell_Number:</b></td> 
                        <td> <asp:Label ID="Cell_NumberLabel" runat="server" Text='<%# Bind("Cell_Number") %>' /></td></tr>
                      
                         <tr><td align="right"><b>Province:</b></td> 
                         <td><asp:Label ID="ProvinceLabel" runat="server" Text='<%# Bind("Province") %>' /></td></tr>
                      
                         <tr><td align="right"><b>Region:</b></td> 
                         <td><asp:Label ID="RegionLabel" runat="server" Text='<%# Bind("Region") %>' /></td></tr>
                    
                         <tr><td align="right"><b>Town:</b></td> 
                         <td><asp:Label ID="TownLabel" runat="server" Text='<%# Bind("Town") %>' /></td></tr>
                     
                         <tr><td align="right"><b>Branch:</b></td> 
                         <td><asp:Label ID="BranchLabel" runat="server" Text='<%# Bind("Branch") %>' /></td></tr>
                      
                         <tr><td align="right"><b>Suburb:</b></td> 
                         <td><asp:Label ID="SuburbLabel" runat="server" Text='<%# Bind("Suburb") %>' /></td></tr>
                      
                         <tr><td align="right"><b>Email:</b></td> 
                         <td><asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' /></td></tr>
                      
                         <tr><td align="right"><b>Designation:</b></td> 
                         <td><asp:Label ID="DesignationLabel" runat="server" Text='<%# Bind("Designation") %>' /></td></tr>
                       
                         <tr><td align="right"><b> <tr><td align="right"><b>Username:</b></td> 
                         <td><asp:Label ID="UsernameLabel" runat="server" Text='<%# Bind("Username") %>' /></td></tr>
                     
                         <tr><td align="right"><b>Password:</b></td> 
                         <td><asp:Label ID="PasswordLabel" runat="server" Text='<%# Bind("Password") %>' /></td></tr>
                      </table>  
               
                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [Disciple_Id] = @original_Disciple_Id AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([fName] = @original_fName) OR ([fName] IS NULL AND @original_fName IS NULL)) AND (([Surname] = @original_Surname) OR ([Surname] IS NULL AND @original_Surname IS NULL)) AND (([Cell_Number] = @original_Cell_Number) OR ([Cell_Number] IS NULL AND @original_Cell_Number IS NULL)) AND (([Province] = @original_Province) OR ([Province] IS NULL AND @original_Province IS NULL)) AND (([Region] = @original_Region) OR ([Region] IS NULL AND @original_Region IS NULL)) AND (([Town] = @original_Town) OR ([Town] IS NULL AND @original_Town IS NULL)) AND (([Branch] = @original_Branch) OR ([Branch] IS NULL AND @original_Branch IS NULL)) AND (([Suburb] = @original_Suburb) OR ([Suburb] IS NULL AND @original_Suburb IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Designation] = @original_Designation) OR ([Designation] IS NULL AND @original_Designation IS NULL)) AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL))" InsertCommand="INSERT INTO [Users] ([Title], [fName], [Surname], [Cell_Number], [Province], [Region], [Town], [Branch], [Suburb], [Email], [Designation], [Username], [Password]) VALUES (@Title, @fName, @Surname, @Cell_Number, @Province, @Region, @Town, @Branch, @Suburb, @Email, @Designation, @Username, @Password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Disciple_Id], [Title], [fName], [Surname], [Cell_Number], [Province], [Region], [Town], [Branch], [Suburb], [Email], [Designation], [Username], [Password] FROM [Users] WHERE ([Region] = @Region)" UpdateCommand="UPDATE [Users] SET [Title] = @Title, [fName] = @fName, [Surname] = @Surname, [Cell_Number] = @Cell_Number, [Province] = @Province, [Region] = @Region, [Town] = @Town, [Branch] = @Branch, [Suburb] = @Suburb, [Email] = @Email, [Designation] = @Designation, [Username] = @Username, [Password] = @Password WHERE [Disciple_Id] = @original_Disciple_Id AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([fName] = @original_fName) OR ([fName] IS NULL AND @original_fName IS NULL)) AND (([Surname] = @original_Surname) OR ([Surname] IS NULL AND @original_Surname IS NULL)) AND (([Cell_Number] = @original_Cell_Number) OR ([Cell_Number] IS NULL AND @original_Cell_Number IS NULL)) AND (([Province] = @original_Province) OR ([Province] IS NULL AND @original_Province IS NULL)) AND (([Region] = @original_Region) OR ([Region] IS NULL AND @original_Region IS NULL)) AND (([Town] = @original_Town) OR ([Town] IS NULL AND @original_Town IS NULL)) AND (([Branch] = @original_Branch) OR ([Branch] IS NULL AND @original_Branch IS NULL)) AND (([Suburb] = @original_Suburb) OR ([Suburb] IS NULL AND @original_Suburb IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Designation] = @original_Designation) OR ([Designation] IS NULL AND @original_Designation IS NULL)) AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Disciple_Id" Type="Int32" />
                        <asp:Parameter Name="original_Title" Type="String" />
                        <asp:Parameter Name="original_fName" Type="String" />
                        <asp:Parameter Name="original_Surname" Type="String" />
                        <asp:Parameter Name="original_Cell_Number" Type="String" />
                        <asp:Parameter Name="original_Province" Type="String" />
                        <asp:Parameter Name="original_Region" Type="String" />
                        <asp:Parameter Name="original_Town" Type="String" />
                        <asp:Parameter Name="original_Branch" Type="String" />
                        <asp:Parameter Name="original_Suburb" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter Name="original_Designation" Type="String" />
                        <asp:Parameter Name="original_Username" Type="String" />
                        <asp:Parameter Name="original_Password" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="fName" Type="String" />
                        <asp:Parameter Name="Surname" Type="String" />
                        <asp:Parameter Name="Cell_Number" Type="String" />
                        <asp:Parameter Name="Province" Type="String" />
                        <asp:Parameter Name="Region" Type="String" />
                        <asp:Parameter Name="Town" Type="String" />
                        <asp:Parameter Name="Branch" Type="String" />
                        <asp:Parameter Name="Suburb" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Designation" Type="String" />
                        <asp:Parameter Name="Username" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblRegion" Name="Region" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="fName" Type="String" />
                        <asp:Parameter Name="Surname" Type="String" />
                        <asp:Parameter Name="Cell_Number" Type="String" />
                        <asp:Parameter Name="Province" Type="String" />
                        <asp:Parameter Name="Region" Type="String" />
                        <asp:Parameter Name="Town" Type="String" />
                        <asp:Parameter Name="Branch" Type="String" />
                        <asp:Parameter Name="Suburb" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Designation" Type="String" />
                        <asp:Parameter Name="Username" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="original_Disciple_Id" Type="Int32" />
                        <asp:Parameter Name="original_Title" Type="String" />
                        <asp:Parameter Name="original_fName" Type="String" />
                        <asp:Parameter Name="original_Surname" Type="String" />
                        <asp:Parameter Name="original_Cell_Number" Type="String" />
                        <asp:Parameter Name="original_Province" Type="String" />
                        <asp:Parameter Name="original_Region" Type="String" />
                        <asp:Parameter Name="original_Town" Type="String" />
                        <asp:Parameter Name="original_Branch" Type="String" />
                        <asp:Parameter Name="original_Suburb" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter Name="original_Designation" Type="String" />
                        <asp:Parameter Name="original_Username" Type="String" />
                        <asp:Parameter Name="original_Password" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </asp:View>
        </asp:MultiView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [Disciple_Id] = @original_Disciple_Id AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([fName] = @original_fName) OR ([fName] IS NULL AND @original_fName IS NULL)) AND (([Surname] = @original_Surname) OR ([Surname] IS NULL AND @original_Surname IS NULL)) AND (([Province] = @original_Province) OR ([Province] IS NULL AND @original_Province IS NULL)) AND (([Cell_Number] = @original_Cell_Number) OR ([Cell_Number] IS NULL AND @original_Cell_Number IS NULL)) AND (([Region] = @original_Region) OR ([Region] IS NULL AND @original_Region IS NULL)) AND (([Town] = @original_Town) OR ([Town] IS NULL AND @original_Town IS NULL)) AND (([Branch] = @original_Branch) OR ([Branch] IS NULL AND @original_Branch IS NULL)) AND (([Suburb] = @original_Suburb) OR ([Suburb] IS NULL AND @original_Suburb IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Designation] = @original_Designation) OR ([Designation] IS NULL AND @original_Designation IS NULL))" InsertCommand="INSERT INTO [Users] ([Title], [fName], [Surname], [Province], [Cell_Number], [Region], [Town], [Branch], [Suburb], [Email], [Designation]) VALUES (@Title, @fName, @Surname, @Province, @Cell_Number, @Region, @Town, @Branch, @Suburb, @Email, @Designation)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Title], [fName], [Surname], [Province], [Cell_Number], [Region], [Town], [Branch], [Suburb], [Email], [Designation], [Disciple_Id] FROM [Users] WHERE ([Region] = @Region)" UpdateCommand="UPDATE [Users] SET [Title] = @Title, [fName] = @fName, [Surname] = @Surname, [Province] = @Province, [Cell_Number] = @Cell_Number, [Region] = @Region, [Town] = @Town, [Branch] = @Branch, [Suburb] = @Suburb, [Email] = @Email, [Designation] = @Designation WHERE [Disciple_Id] = @original_Disciple_Id AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([fName] = @original_fName) OR ([fName] IS NULL AND @original_fName IS NULL)) AND (([Surname] = @original_Surname) OR ([Surname] IS NULL AND @original_Surname IS NULL)) AND (([Province] = @original_Province) OR ([Province] IS NULL AND @original_Province IS NULL)) AND (([Cell_Number] = @original_Cell_Number) OR ([Cell_Number] IS NULL AND @original_Cell_Number IS NULL)) AND (([Region] = @original_Region) OR ([Region] IS NULL AND @original_Region IS NULL)) AND (([Town] = @original_Town) OR ([Town] IS NULL AND @original_Town IS NULL)) AND (([Branch] = @original_Branch) OR ([Branch] IS NULL AND @original_Branch IS NULL)) AND (([Suburb] = @original_Suburb) OR ([Suburb] IS NULL AND @original_Suburb IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Designation] = @original_Designation) OR ([Designation] IS NULL AND @original_Designation IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Disciple_Id" Type="Int32" />
                <asp:Parameter Name="original_Title" Type="String" />
                <asp:Parameter Name="original_fName" Type="String" />
                <asp:Parameter Name="original_Surname" Type="String" />
                <asp:Parameter Name="original_Province" Type="String" />
                <asp:Parameter Name="original_Cell_Number" Type="String" />
                <asp:Parameter Name="original_Region" Type="String" />
                <asp:Parameter Name="original_Town" Type="String" />
                <asp:Parameter Name="original_Branch" Type="String" />
                <asp:Parameter Name="original_Suburb" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Designation" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="fName" Type="String" />
                <asp:Parameter Name="Surname" Type="String" />
                <asp:Parameter Name="Province" Type="String" />
                <asp:Parameter Name="Cell_Number" Type="String" />
                <asp:Parameter Name="Region" Type="String" />
                <asp:Parameter Name="Town" Type="String" />
                <asp:Parameter Name="Branch" Type="String" />
                <asp:Parameter Name="Suburb" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Designation" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="lblRegion" Name="Region" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="fName" Type="String" />
                <asp:Parameter Name="Surname" Type="String" />
                <asp:Parameter Name="Province" Type="String" />
                <asp:Parameter Name="Cell_Number" Type="String" />
                <asp:Parameter Name="Region" Type="String" />
                <asp:Parameter Name="Town" Type="String" />
                <asp:Parameter Name="Branch" Type="String" />
                <asp:Parameter Name="Suburb" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Designation" Type="String" />
                <asp:Parameter Name="original_Disciple_Id" Type="Int32" />
                <asp:Parameter Name="original_Title" Type="String" />
                <asp:Parameter Name="original_fName" Type="String" />
                <asp:Parameter Name="original_Surname" Type="String" />
                <asp:Parameter Name="original_Province" Type="String" />
                <asp:Parameter Name="original_Cell_Number" Type="String" />
                <asp:Parameter Name="original_Region" Type="String" />
                <asp:Parameter Name="original_Town" Type="String" />
                <asp:Parameter Name="original_Branch" Type="String" />
                <asp:Parameter Name="original_Suburb" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Designation" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    <br />


    <br />
        <asp:Label ID="lblUser" runat="server" Text=""></asp:Label>
    &nbsp;<asp:Label ID="lblRegion" runat="server" Text=""></asp:Label>
    <br />
    </div>
  

</asp:Content>
