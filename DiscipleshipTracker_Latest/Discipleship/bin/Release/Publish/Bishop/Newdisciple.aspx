<%@ Page Title="" Language="C#" MasterPageFile="~/bishop.Master" AutoEventWireup="true" CodeBehind="Newdisciple.aspx.cs" Inherits="Discipleship.Bishop.Newdisciple" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
.Select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

.ButtonSub{
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

     .auto-style2 {
         height: 20px;
         text-align: left;
     }

     .auto-style3 {
         text-align: left;
     }

     .mGrid { 
    width: 100%; 
    background-color: #fff; 
    margin: 5px 0 10px 0; 
    border: solid 1px #525252; 
    border-collapse:collapse; 
    text-align:left;
}
.mGrid td { 
    padding: 2px; 
    border: solid 1px #c1c1c1; 
    color: #717171; 
    text-align:left;
}
.mGrid th { 
    padding: 4px 2px; 
    color: #fff; 
    background: #424242 url(grd_head.png) repeat-x top; 
    border-left: solid 1px #525252; 
    font-size: 0.9em; 
    text-align:left;
}
.mGrid .alt { background: #fcfcfc url(grd_alt.png) repeat-x top; }
.mGrid .pgr { background: #424242 url(grd_pgr.png) repeat-x top; }
.mGrid .pgr table { margin: 5px 0; }
.mGrid .pgr td { 
    border-width: 0; 
    padding: 0 6px; 
    border-left: solid 1px #666; 
    font-weight: bold; 
    color: #fff; 
    line-height: 12px; 
    text-align:left;
 }   
.mGrid .pgr a { color: #666; text-decoration: none; }
.mGrid .pgr a:hover { color: #000; text-decoration: none; }

 </style>
   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        
    </p>
   
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
    
    <div>
        <br />
        <br />
        <br />
        <br />

    </div><br />
    <asp:MultiView ID="mvNewDisciple" runat="server" ActiveViewIndex="0">
        <asp:View ID="vPersonalDetails" runat="server">
            <asp:FormView ID="FormView2" runat="server" Width="100%" Align="Left" DataKeyNames="Disciple_Id" DataSourceID="SqlDataSource5" OnPageIndexChanging="FormView2_PageIndexChanging" DefaultMode="Insert">
                <EditItemTemplate>
                    Disciple_Id:
                    <asp:Label ID="Disciple_IdLabel1" runat="server" Text='<%# Eval("Disciple_Id") %>' />
                    <br />
                    FName:
                    <asp:TextBox ID="FNameTextBox" runat="server" Text='<%# Bind("FName") %>' />
                    <br />
                    Date_Of_Birth:
                    <asp:TextBox ID="Date_Of_BirthTextBox" runat="server" Text='<%# Bind("Date_Of_Birth") %>' />
                    <br />
                    Surname:
                    <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
                    <br />
                    Cell_Number:
                    <asp:TextBox ID="Cell_NumberTextBox" runat="server" Text='<%# Bind("Cell_Number") %>' />
                    <br />
                    Email:
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    Gender:
                    <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                    <br />
                    Str_Name:
                    <asp:TextBox ID="Str_NameTextBox" runat="server" Text='<%# Bind("Str_Name") %>' />
                    <br />
                    Str_Num:
                    <asp:TextBox ID="Str_NumTextBox" runat="server" Text='<%# Bind("Str_Num") %>' />
                    <br />
                    Str_Suburb:
                    <asp:TextBox ID="Str_SuburbTextBox" runat="server" Text='<%# Bind("Str_Suburb") %>' />
                    <br />
                    Str_Town:
                    <asp:TextBox ID="Str_TownTextBox" runat="server" Text='<%# Bind("Str_Town") %>' />
                    <br />
                    DisciplerSurname:
                    <asp:TextBox ID="DisciplerSurnameTextBox" runat="server" Text='<%# Bind("DisciplerSurname") %>' />
                    <br />
                    DisciplerName:
                    <asp:TextBox ID="DisciplerNameTextBox" runat="server" Text='<%# Bind("DisciplerName") %>' />
                    <br />
                    Discipler_ID:
                    <asp:TextBox ID="Discipler_IDTextBox" runat="server" Text='<%# Bind("Discipler_ID") %>' />
                    <br />
                    Region:
                    <asp:TextBox ID="RegionTextBox" runat="server" Text='<%# Bind("Region") %>' />
                    <br />
                    Province:
                    <asp:TextBox ID="ProvinceTextBox" runat="server" Text='<%# Bind("Province") %>' />
                    <br />
                    Church:
                    <asp:TextBox ID="ChurchTextBox" runat="server" Text='<%# Bind("Church") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate >
                    <table>
                        <tr>
                            <td class="text-left">
                               <h2> Personal Details</h2></td>
                        </tr>
                        <tr>
                            <td class="text-left">
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Disciple_Id") %>' Visible="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">First Name:</td>
                        </tr>
                        <tr>
                            <td class="text-left">
                                <asp:TextBox ID="FNameTextBox" runat="server" CssClass="Select" Text='<%# Bind("FName") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="text-left">Surname: </td>
                        </tr>
                        <tr>
                            <td class="text-left">
                                <asp:TextBox ID="SurnameTextBox" CssClass="Select" runat="server" Text='<%# Bind("Surname") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="text-left">Date of Birth: </td>
                        </tr>
                        <tr>
                            <td class="text-left">
                                <asp:TextBox ID="Date_Of_BirthTextBox" CssClass="Select" runat="server" Text='<%# Bind("Date_Of_Birth") %>' TextMode="Date" />
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="text-left">Cell Number:</td>
                        </tr>
                        <tr>
                            <td class="text-left">
                                <asp:TextBox ID="Cell_NumberTextBox" CssClass="Select" runat="server" Text='<%# Bind("Cell_Number") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="text-left">Email: </td>
                        </tr>
                        <tr>
                            <td class="text-left">
                                <asp:TextBox ID="EmailTextBox" CssClass="Select" runat="server" Text='<%# Bind("Email") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="text-left">Gender:</td>
                        </tr>
                        <tr>
                            <td class="text-left">
                                <asp:DropDownList ID="DropDownList1" CssClass="Select" runat="server" SelectedValue='<%# Bind("Gender") %>'>
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">&nbsp;</td>
                        </tr>
                        <tr>
                            <td><strong><h2>Address</h2></strong></td>
                        </tr>
                        <tr>
                            <td class="text-left">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="text-left">Street Name:</td>
                        </tr>
                        <tr>
                            <td class="text-left">
                                <asp:TextBox ID="Str_NameTextBox" CssClass="Select" runat="server" Text='<%# Bind("Str_Name") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="text-left">Street Number:</td>
                        </tr>
                        <tr>
                            <td class="text-left">
                                <asp:TextBox ID="Str_NumTextBox" CssClass="Select" runat="server" Text='<%# Bind("Str_Num") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="text-left">Suburb: </td>
                        </tr>
                        <tr>
                            <td class="text-left">
                                <asp:TextBox ID="Str_SuburbTextBox" CssClass="Select" runat="server" Text='<%# Bind("Str_Suburb") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="text-left">Town:</td>
                        </tr>
                        <tr>
                            <td class="text-left">
                                <asp:TextBox ID="Str_TownTextBox" CssClass="Select" runat="server" Text='<%# Bind("Str_Town") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="text-left">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="text-left">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Button ID="btnAssign" CssClass="ButtonSub" runat="server" Text="Assign to Discipler" OnClick="btnAssign_Click" />
                            </td>
                        </tr>
                    </table>
                    <p>
                    </p>
                    <asp:Panel ID="pnlAssign" runat="server" Visible="False" CssClass="panel-body" pedding="5px" margin="8px" BorderColor="Green">
       
                    <p>
                       <h4 class="auto-style3"> Please Select a Discipler Below.</h4>
                        <br />
                        <br />
                        <p>
                        </p>
                        <div class="auto-style3">
                            <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" CssClass="mGrid" DataKeyNames="Disciple_Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%" GridLines="Horizontal">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="Disciple_Id" HeaderText="Code" ReadOnly="True" SortExpression="Disciple_Id" InsertVisible="False" Visible="False" >
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                                    <asp:BoundField DataField="fName" HeaderText="First Name" SortExpression="fName" />
                                    <asp:BoundField DataField="Town" HeaderText="Town" SortExpression="Town" />
                                    <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
                                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                                    <asp:BoundField DataField="Cell_Number" HeaderText="Cell Number" SortExpression="Cell_Number" />
                                   
                                </Columns>
                            </asp:GridView>
                        </div>
                        <br />
                        <table style="width:100%;">
                            <tr>
                                <td class="text-left">Discipler Surname: </td>
                            </tr>
                            <tr>
                                <td class="text-left">
                                    <asp:TextBox ID="DisciplerSurnameTextBox" runat="server" CssClass="Select" Text='<%# Bind("DisciplerSurname") %>' Enabled="False" ForeColor="#999999" ReadOnly="True" />
                                </td>
                            </tr>
                            <tr>
                                <td class="text-left">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="text-left">Discipler Name: </td>
                            </tr>
                            <tr>
                                <td class="text-left">
                                    <asp:TextBox ID="DisciplerNameTextBox" runat="server" CssClass="Select" Text='<%# Bind("DisciplerName") %>' Enabled="False" ForeColor="#999999" ReadOnly="True" />
                                </td>
                            </tr>
                            <tr>
                                <td class="text-left">&nbsp;</td>
                            </tr>
                        </table>
                        <p>
                            &nbsp;</p>
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style2">
                                    <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CssClass="ButtonSub" Text="Save" OnClick="InsertButton_Click" />
                                    <asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="ButtonSub" Text="Cancel" OnClick="InsertCancelButton_Click" />
                                </td>
                            </tr>
                        </table>
                        <div class="text-left">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Disciple_Id], [fName], [Surname], [Town], [Branch], [Username], [Cell_Number] FROM [Users] WHERE (([Designation] = @Designation) AND ([Region] = @Region))">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblDiscipler" Name="Designation" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="lblRegion" Name="Region" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:TextBox ID="Discipler_IDTextBox1" runat="server" Visible="False"></asp:TextBox>
                            <br />
                            &nbsp;<asp:TextBox ID="Discipler_IDTextBox" runat="server" Text='<%# Bind("Discipler_ID") %>' Width="257px" Visible="False" />
                            <br />
                            &nbsp;<asp:TextBox ID="ProvinceTextBox" runat="server" Text='<%# Bind("Province") %>' Visible="False" />
                            <br />
                            <asp:Label ID="lblDisciplerUsername" runat="server"></asp:Label>
                            <br />
                        </div>
                        <p>
                            <asp:Label ID="lblEmail" runat="server" style="text-align: left; font-weight: 700; text-decoration: underline;"></asp:Label>
                        </p>
                        <p>
                            </asp:Panel>
                        </p>
                    <asp:FormView ID="FormView4" runat="server" DataSourceID="SqlDataSource2" OnPageIndexChanging="FormView4_PageIndexChanging" Width="245px">
                        <EditItemTemplate>
                            Email:
                            <asp:TextBox ID="EmailTextBox0" runat="server" Text='<%# Bind("Email") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            Email:
                            <asp:TextBox ID="EmailTextBox1" runat="server" Text='<%# Bind("Email") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton0" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton0" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            Email:
                            <asp:Label ID="EmailLabel1" runat="server" Text='<%# Bind("Email") %>' />
                            <br />
                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Email] FROM [Users] WHERE (([Disciple_Id] = @Disciple_Id) AND ([Designation] = @Designation))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Discipler_IDTextBox1" Name="Disciple_Id" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblDiscipler" Name="Designation" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:Label ID="lblEmailText" runat="server" Text="..."></asp:Label>
                    <br />
                </InsertItemTemplate>
                <ItemTemplate>
                    Disciple_Id:
                    <asp:Label ID="Disciple_IdLabel" runat="server" Text='<%# Eval("Disciple_Id") %>' />
                    <br />
                    FName:
                    <asp:Label ID="FNameLabel" runat="server" Text='<%# Bind("FName") %>' />
                    <br />
                    Date_Of_Birth:
                    <asp:Label ID="Date_Of_BirthLabel" runat="server" Text='<%# Bind("Date_Of_Birth") %>' />
                    <br />
                    Surname:
                    <asp:Label ID="SurnameLabel" runat="server" Text='<%# Bind("Surname") %>' />
                    <br />
                    Cell_Number:
                    <asp:Label ID="Cell_NumberLabel" runat="server" Text='<%# Bind("Cell_Number") %>' />
                    <br />
                    Email:
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    Gender:
                    <asp:Label ID="GenderLabel" runat="server" Text='<%# Bind("Gender") %>' />
                    <br />
                    Str_Name:
                    <asp:Label ID="Str_NameLabel" runat="server" Text='<%# Bind("Str_Name") %>' />
                    <br />
                    Str_Num:
                    <asp:Label ID="Str_NumLabel" runat="server" Text='<%# Bind("Str_Num") %>' />
                    <br />
                    Str_Suburb:
                    <asp:Label ID="Str_SuburbLabel" runat="server" Text='<%# Bind("Str_Suburb") %>' />
                    <br />
                    Str_Town:
                    <asp:Label ID="Str_TownLabel" runat="server" Text='<%# Bind("Str_Town") %>' />
                    <br />
                    DisciplerSurname:
                    <asp:Label ID="DisciplerSurnameLabel" runat="server" Text='<%# Bind("DisciplerSurname") %>' />
                    <br />
                    DisciplerName:
                    <asp:Label ID="DisciplerNameLabel" runat="server" Text='<%# Bind("DisciplerName") %>' />
                    <br />
                    Discipler_ID:
                    <asp:Label ID="Discipler_IDLabel" runat="server" Text='<%# Bind("Discipler_ID") %>' />
                    <br />
                    Region:
                    <asp:Label ID="RegionLabel" runat="server" Text='<%# Bind("Region") %>' />
                    <br />
                    Province:
                    <asp:Label ID="ProvinceLabel" runat="server" Text='<%# Bind("Province") %>' />
                    <br />
                    Church:
                    <asp:Label ID="ChurchLabel" runat="server" Text='<%# Bind("Church") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Disciple_Id], [FName], [Date_Of_Birth], [Surname], [Cell_Number], [Email], [Gender], [Str_Name], [Str_Num], [Str_Suburb], [Str_Town], [DisciplerSurname], [DisciplerName], [Discipler_ID], [Region], [Province], [Church] FROM [Disciple]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Disciple] WHERE [Disciple_Id] = @original_Disciple_Id AND (([FName] = @original_FName) OR ([FName] IS NULL AND @original_FName IS NULL)) AND (([Date_Of_Birth] = @original_Date_Of_Birth) OR ([Date_Of_Birth] IS NULL AND @original_Date_Of_Birth IS NULL)) AND (([Surname] = @original_Surname) OR ([Surname] IS NULL AND @original_Surname IS NULL)) AND (([Cell_Number] = @original_Cell_Number) OR ([Cell_Number] IS NULL AND @original_Cell_Number IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Str_Name] = @original_Str_Name) OR ([Str_Name] IS NULL AND @original_Str_Name IS NULL)) AND (([Str_Num] = @original_Str_Num) OR ([Str_Num] IS NULL AND @original_Str_Num IS NULL)) AND (([Str_Suburb] = @original_Str_Suburb) OR ([Str_Suburb] IS NULL AND @original_Str_Suburb IS NULL)) AND (([Str_Town] = @original_Str_Town) OR ([Str_Town] IS NULL AND @original_Str_Town IS NULL)) AND (([DisciplerSurname] = @original_DisciplerSurname) OR ([DisciplerSurname] IS NULL AND @original_DisciplerSurname IS NULL)) AND (([DisciplerName] = @original_DisciplerName) OR ([DisciplerName] IS NULL AND @original_DisciplerName IS NULL)) AND (([Discipler_ID] = @original_Discipler_ID) OR ([Discipler_ID] IS NULL AND @original_Discipler_ID IS NULL)) AND (([Region] = @original_Region) OR ([Region] IS NULL AND @original_Region IS NULL)) AND (([Province] = @original_Province) OR ([Province] IS NULL AND @original_Province IS NULL)) AND (([Church] = @original_Church) OR ([Church] IS NULL AND @original_Church IS NULL))" InsertCommand="INSERT INTO [Disciple] ([Disciple_Id], [FName], [Date_Of_Birth], [Surname], [Cell_Number], [Email], [Gender], [Str_Name], [Str_Num], [Str_Suburb], [Str_Town], [DisciplerSurname], [DisciplerName], [Discipler_ID], [Region], [Province], [Church]) VALUES (@Disciple_Id, @FName, @Date_Of_Birth, @Surname, @Cell_Number, @Email, @Gender, @Str_Name, @Str_Num, @Str_Suburb, @Str_Town, @DisciplerSurname, @DisciplerName, @Discipler_ID, @Region, @Province, @Church)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Disciple] SET [FName] = @FName, [Date_Of_Birth] = @Date_Of_Birth, [Surname] = @Surname, [Cell_Number] = @Cell_Number, [Email] = @Email, [Gender] = @Gender, [Str_Name] = @Str_Name, [Str_Num] = @Str_Num, [Str_Suburb] = @Str_Suburb, [Str_Town] = @Str_Town, [DisciplerSurname] = @DisciplerSurname, [DisciplerName] = @DisciplerName, [Discipler_ID] = @Discipler_ID, [Region] = @Region, [Province] = @Province, [Church] = @Church WHERE [Disciple_Id] = @original_Disciple_Id AND (([FName] = @original_FName) OR ([FName] IS NULL AND @original_FName IS NULL)) AND (([Date_Of_Birth] = @original_Date_Of_Birth) OR ([Date_Of_Birth] IS NULL AND @original_Date_Of_Birth IS NULL)) AND (([Surname] = @original_Surname) OR ([Surname] IS NULL AND @original_Surname IS NULL)) AND (([Cell_Number] = @original_Cell_Number) OR ([Cell_Number] IS NULL AND @original_Cell_Number IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Str_Name] = @original_Str_Name) OR ([Str_Name] IS NULL AND @original_Str_Name IS NULL)) AND (([Str_Num] = @original_Str_Num) OR ([Str_Num] IS NULL AND @original_Str_Num IS NULL)) AND (([Str_Suburb] = @original_Str_Suburb) OR ([Str_Suburb] IS NULL AND @original_Str_Suburb IS NULL)) AND (([Str_Town] = @original_Str_Town) OR ([Str_Town] IS NULL AND @original_Str_Town IS NULL)) AND (([DisciplerSurname] = @original_DisciplerSurname) OR ([DisciplerSurname] IS NULL AND @original_DisciplerSurname IS NULL)) AND (([DisciplerName] = @original_DisciplerName) OR ([DisciplerName] IS NULL AND @original_DisciplerName IS NULL)) AND (([Discipler_ID] = @original_Discipler_ID) OR ([Discipler_ID] IS NULL AND @original_Discipler_ID IS NULL)) AND (([Region] = @original_Region) OR ([Region] IS NULL AND @original_Region IS NULL)) AND (([Province] = @original_Province) OR ([Province] IS NULL AND @original_Province IS NULL)) AND (([Church] = @original_Church) OR ([Church] IS NULL AND @original_Church IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Disciple_Id" Type="Int32" />
                    <asp:Parameter Name="original_FName" Type="String" />
                    <asp:Parameter Name="original_Date_Of_Birth" Type="String" />
                    <asp:Parameter Name="original_Surname" Type="String" />
                    <asp:Parameter Name="original_Cell_Number" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Gender" Type="String" />
                    <asp:Parameter Name="original_Str_Name" Type="String" />
                    <asp:Parameter Name="original_Str_Num" Type="String" />
                    <asp:Parameter Name="original_Str_Suburb" Type="String" />
                    <asp:Parameter Name="original_Str_Town" Type="String" />
                    <asp:Parameter Name="original_DisciplerSurname" Type="String" />
                    <asp:Parameter Name="original_DisciplerName" Type="String" />
                    <asp:Parameter Name="original_Discipler_ID" Type="String" />
                    <asp:Parameter Name="original_Region" Type="String" />
                    <asp:Parameter Name="original_Province" Type="String" />
                    <asp:Parameter Name="original_Church" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Disciple_Id" Type="Int32" />
                    <asp:Parameter Name="FName" Type="String" />
                    <asp:Parameter Name="Date_Of_Birth" Type="String" />
                    <asp:Parameter Name="Surname" Type="String" />
                    <asp:Parameter Name="Cell_Number" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Str_Name" Type="String" />
                    <asp:Parameter Name="Str_Num" Type="String" />
                    <asp:Parameter Name="Str_Suburb" Type="String" />
                    <asp:Parameter Name="Str_Town" Type="String" />
                    <asp:Parameter Name="DisciplerSurname" Type="String" />
                    <asp:Parameter Name="DisciplerName" Type="String" />
                    <asp:Parameter Name="Discipler_ID" Type="String" />
                    <asp:Parameter Name="Region" Type="String" />
                    <asp:Parameter Name="Province" Type="String" />
                    <asp:Parameter Name="Church" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FName" Type="String" />
                    <asp:Parameter Name="Date_Of_Birth" Type="String" />
                    <asp:Parameter Name="Surname" Type="String" />
                    <asp:Parameter Name="Cell_Number" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Str_Name" Type="String" />
                    <asp:Parameter Name="Str_Num" Type="String" />
                    <asp:Parameter Name="Str_Suburb" Type="String" />
                    <asp:Parameter Name="Str_Town" Type="String" />
                    <asp:Parameter Name="DisciplerSurname" Type="String" />
                    <asp:Parameter Name="DisciplerName" Type="String" />
                    <asp:Parameter Name="Discipler_ID" Type="String" />
                    <asp:Parameter Name="Region" Type="String" />
                    <asp:Parameter Name="Province" Type="String" />
                    <asp:Parameter Name="Church" Type="String" />
                    <asp:Parameter Name="original_Disciple_Id" Type="Int32" />
                    <asp:Parameter Name="original_FName" Type="String" />
                    <asp:Parameter Name="original_Date_Of_Birth" Type="String" />
                    <asp:Parameter Name="original_Surname" Type="String" />
                    <asp:Parameter Name="original_Cell_Number" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Gender" Type="String" />
                    <asp:Parameter Name="original_Str_Name" Type="String" />
                    <asp:Parameter Name="original_Str_Num" Type="String" />
                    <asp:Parameter Name="original_Str_Suburb" Type="String" />
                    <asp:Parameter Name="original_Str_Town" Type="String" />
                    <asp:Parameter Name="original_DisciplerSurname" Type="String" />
                    <asp:Parameter Name="original_DisciplerName" Type="String" />
                    <asp:Parameter Name="original_Discipler_ID" Type="String" />
                    <asp:Parameter Name="original_Region" Type="String" />
                    <asp:Parameter Name="original_Province" Type="String" />
                    <asp:Parameter Name="original_Church" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:View>
        
        <asp:View ID="View4" runat="server">
        </asp:View>
    </asp:MultiView>
    <br />
    <asp:FormView ID="FormView3" runat="server" DataKeyNames="Disciple_Id" DataSourceID="SqlDataSource6" Visible="False">
        <EditItemTemplate>
            Disciple_Id:
            <asp:Label ID="Disciple_IdLabel1" runat="server" Text='<%# Eval("Disciple_Id") %>' />
            <br />
            Region:
            <asp:TextBox ID="RegionTextBox" runat="server" Text='<%# Bind("Region") %>' />
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
            Region:
            <asp:TextBox ID="RegionTextBox" runat="server" Text='<%# Bind("Region") %>' />
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
            Disciple_Id:
            <asp:Label ID="Disciple_IdLabel" runat="server" Text='<%# Eval("Disciple_Id") %>' />
            <br />
            Region:
            <asp:Label ID="RegionLabel" runat="server" Text='<%# Bind("Region") %>' />
            <br />
            fName:
            <asp:Label ID="fNameLabel" runat="server" Text='<%# Bind("fName") %>' />
            <br />
            Surname:
            <asp:Label ID="SurnameLabel" runat="server" Text='<%# Bind("Surname") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Disciple_Id], [Region], [fName], [Surname] FROM [Users] WHERE ([Username] = @Username)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblUser" Name="Username" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [fName], [Surname] FROM [Users] WHERE ([Designation] = @Designation)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblDiscipler" Name="Designation" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [fName], [Surname] FROM [Users]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Title], [fName], [Surname], [Region], [Town], [Branch], [Suburb] FROM [Users] WHERE ([Username] = @Username)">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblUser" Name="Username" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <p>
        <asp:Label ID="lblUser" runat="server" Text="..." Visible="False"></asp:Label>
        <asp:Label ID="lblDiscipler" runat="server" Text="Discipler" Visible="False"></asp:Label>
        <asp:Label ID="lblRegion" runat="server" Visible="False"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Title], [fName], [Surname] FROM [Users] WHERE ([Username] = @Username)">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblUser" Name="Username" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
