<%@ Page Title="" Language="C#" MasterPageFile="~/discipler.Master" AutoEventWireup="true" CodeBehind="updatedisciple.aspx.cs" Inherits="Discipleship.Discipler.updatedisciple" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Style.css" rel="stylesheet" />
    <link href="../Style.css" rel="stylesheet" />
    <style>
        .button 
        {
              padding: 15px 25px;
              font-size: 24px;
              text-align: center;
              cursor: pointer;
              outline: none;
              color: #fff;
              background-color: #4c85af;
              border: none;
              width:200px;
              border-radius: 15px;
              box-shadow: 0 9px #999;
        }

            .button:hover {background-color: #3e8e41}

            .button:active 
            {
              background-color: #3e8e41;
              box-shadow: 0 5px #666;
              transform: translateY(4px);
            }
</style>
    <style type="text/css">
.section {
    display: none;
}
        .auto-style2 {
            width: 415px;
        }
        .auto-style6 {
            text-align: right;
            width: 133px;
            height: 148px;
        }
        .auto-style7 {
            width: 415px;
            height: 148px;
        }
        .auto-style8 {
            text-align: right;
            width: 166px;
            height: 148px;
        }
        .auto-style10 {
            text-align: left;
            width: 87px;
            height: 148px;
        }
        .auto-style13 {
            text-align: right;
            width: 166px;
        }
        .auto-style14 {
            text-align: right;
            width: 87px;
        }
        .auto-style15 {
            text-align: left;
            width: 87px;
        }
        .auto-style16 {
            text-align: right;
            width: 133px;
        }
        .auto-style17 {
            text-align: right;
            width: 133px;
            height: 34px;
        }
        .auto-style18 {
            width: 415px;
            height: 34px;
        }
        .auto-style19 {
            text-align: left;
            width: 87px;
            height: 34px;
        }
        .auto-style20 {
            text-align: right;
            width: 166px;
            height: 34px;
        }
        .auto-style21 {
            height: 44px;
        }
    </style>
<script type="text/javascript">

function toggleVisibility(newSection) {
    $(".section").not("#" + newSection).hide();
    $("#" + newSection).show();
}
</script>

  

    <link href="../css/optionsButtons.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        <asp:FormView ID="FormView1" Align="Right" runat="server" DataSourceID="SqlDataSource1" Height="21px" Width="378px">
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
                <strong>Sign In: </strong>
                <asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>' />
                &nbsp;|
                <asp:Label ID="fNameLabel" runat="server" Text='<%# Bind("fName") %>' />
                &nbsp;<asp:Label ID="SurnameLabel" runat="server" Text='<%# Bind("Surname") %>' />
                <br />
            </ItemTemplate>
        </asp:FormView>
    </p>
<p>
        &nbsp;</p>
    <p>
        <h1>Please Click the Class you want to Update.</h1>
    <p>&nbsp;</p>
    <h1>
        <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource2" Width="662px">
            <EditItemTemplate>
                FName:
                <asp:TextBox ID="FNameTextBox" runat="server" Text='<%# Bind("FName") %>' />
                <br />
                Surname:
                <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
                <br />
                Cell_Number:
                <asp:TextBox ID="Cell_NumberTextBox" runat="server" Text='<%# Bind("Cell_Number") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                FName:
                <asp:TextBox ID="FNameTextBox" runat="server" Text='<%# Bind("FName") %>' />
                <br />
                Surname:
                <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
                <br />
                Cell_Number:
                <asp:TextBox ID="Cell_NumberTextBox" runat="server" Text='<%# Bind("Cell_Number") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <strong>You are working with:</strong>
                <asp:Label ID="FNameLabel" runat="server" Text='<%# Bind("FName") %>' />
                &nbsp;<asp:Label ID="SurnameLabel" runat="server" Text='<%# Bind("Surname") %>' />
                <br />
                <br />
                Cell Number:
                <asp:Label ID="Cell_NumberLabel" runat="server" Text='<%# Bind("Cell_Number") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
    </h1>
    <p>&nbsp;</p>
    <p>
        <table style="width:100%;">
                    <tr>
                        <td>
                            <asp:Button ID="btnAssurance" class="button" href="#Birds" runat="server" Text="Assurance" OnClick="btnAssurance_Click" />
                        </td>
                        <td>
                            <asp:Button ID="btnBible" class="button" runat="server" Text="Bible" OnClick="btnBible_Click" />
                        </td>
                        <td>
                            <asp:Button ID="btnGod" class="button" runat="server" Text="God" OnClick="btnGod_Click" />
                        </td>
                        <td>
                            <asp:Button ID="btnManSatan" class="button" runat="server" Text="Man & Satan" OnClick="btnManSatan_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style21">
                            <asp:Label ID="lblAssurance" runat="server" Text="No Status" ForeColor="Gray"></asp:Label>
                        </td>
                        <td >
                             <asp:Label ID="lblBible" runat="server" Text="No Status" ForeColor="Gray"></asp:Label>
                        </td>
                        <td class="auto-style21">
                            
                              <asp:Label ID="lblGod" runat="server" Text="No Status" ForeColor="Gray"></asp:Label>
                            
                        </td>
                        <td class="auto-style21">
                            
                            <asp:Label ID="lblManSatan" runat="server" Text="No Status" ForeColor="Gray"></asp:Label>

                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnJesus" class="button" runat="server" Text="Jesus" OnClick="btnJesus_Click" />
                        </td>
                        <td>
                            <asp:Button ID="btnCross" class="button" runat="server" Text="Cross" OnClick="btnCross_Click" />
                        </td>
                        <td>
                            <asp:Button ID="btnBlood" class="button" runat="server" Text="Blood of Jesus" OnClick="btnBlood_Click" />
                        </td>
                        <td>
                            <asp:Button ID="btnResurrection" class="button" runat="server" Text="Resurrection" OnClick="btnResurrection_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                           
                            &nbsp;</td>
                        <td>
                            
                            &nbsp;</td>
                        <td>
                            
                            &nbsp;</td>
                        <td>
                            
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                           
                            <asp:Label ID="lblJesus" runat="server" Text="No Status" ForeColor="Gray"></asp:Label>
                        </td>
                        <td>
                            
                            <asp:Label ID="lblCross" runat="server" Text="No Status" ForeColor="Gray"></asp:Label>
                        </td>
                        <td>
                            
                            <asp:Label ID="lblBlood" runat="server" Text="No Status" ForeColor="Gray"></asp:Label>
                        </td>
                        <td>
                            
                            <asp:Label ID="lblResurrection" runat="server" Text="No Status" ForeColor="Gray"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnRepentance" class="button" runat="server" Text="Repentance" OnClick="btnRepentance_Click" />
                        </td>
                        <td>
                            <asp:Button ID="btnFaith" class="button" runat="server" Text="Faith" OnClick="btnFaith_Click" />
                        </td>
                        <td>
                            <asp:Button ID="btnHolySpirit" class="button" runat="server" Text="Holy Spirit" OnClick="btnHolySpirit_Click" />
                        </td>
                        <td>
                            <asp:Button ID="btnTemptation" class="button" runat="server" Text="Temptation" OnClick="btnTemptation_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            
                            &nbsp;</td>
                        <td>
                            
                            &nbsp;</td>
                        <td>
                         
                            &nbsp;</td>
                        <td>
                            
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            
                            <asp:Label ID="lblRepentance" runat="server" Text="No Status" ForeColor="Gray"></asp:Label>
                        </td>
                        <td>
                            
                            <asp:Label ID="lblFaith" runat="server" Text="No Status" ForeColor="Gray"></asp:Label>
                        </td>
                        <td>
                         
                            <asp:Label ID="lblHolySpirit" runat="server" Text="No Status" ForeColor="Gray"></asp:Label>
                        </td>
                        <td>
                            
                            <asp:Label ID="lblTempation" runat="server" Text="No Status" ForeColor="Gray"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnFellowship" class="button" runat="server" Text="Fellowship" OnClick="btnFellowship_Click" />
                        </td>
                        <td>
                            <asp:Button ID="btnGenerosity" class="button" runat="server" Text="Generosity" OnClick="btnGenerosity_Click" />
                        </td>
                        <td>
                            <asp:Button ID="btnWaterBaptisim" class="button" runat="server" Text="Baptisim" OnClick="btnWaterBaptisim_Click" />
                        </td>
                        <td>
                            <asp:Button ID="btnCallofGod" class="button" runat="server" Text="Call of God" OnClick="btnCallofGod_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            
                            &nbsp;</td>
                        <td>
                            
                            &nbsp;</td>
                        <td>
                            
                            &nbsp;</td>
                        <td>
                           
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            
                            <asp:Label ID="lblFellowship" runat="server" Text="No Status" ForeColor="Gray"></asp:Label>
                        </td>
                        <td>
                            
                            <asp:Label ID="lblGenerosity" runat="server" Text="No Status" ForeColor="Gray"></asp:Label>
                        </td>
                        <td>
                            
                            <asp:Label ID="lblBaptisim" runat="server" Text="No Status" ForeColor="Gray"></asp:Label>
                        </td>
                        <td>
                           
                            <asp:Label ID="lblCallOfGod" runat="server" Text="No Status" ForeColor="Gray"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnPrayer" class="button" runat="server" Text="Prayer" OnClick="btnPrayer_Click" />
                        </td>
                        <td>
                            <asp:Button ID="btnKingdom" class="button" runat="server" Text="Kingdom Living" OnClick="btnKingdom_Click" />
                        </td>
                        <td>
                            <asp:Button ID="btnMembership" class="button" runat="server" Text="Membership" OnClick="btnMembership_Click" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            
                            &nbsp;</td>
                        <td>
                            
                            &nbsp;</td>
                        <td>
                            
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            
                            <asp:Label ID="lblPrayer" runat="server" Text="No Status" ForeColor="Gray"></asp:Label>
                        </td>
                        <td>
                            
                            <asp:Label ID="lblKingdom" runat="server" Text="No Status" ForeColor="Gray"></asp:Label>
                        </td>
                        <td>
                            
                            <asp:Label ID="lblMembership" runat="server" Text="No Status" ForeColor="Gray"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
        <hr />

        <asp:MultiView ID="mvClasses" runat="server" ActiveViewIndex="0">
            <asp:View ID="vClasses" runat="server">
                
                

            </asp:View>
            <asp:View ID="vAssurance" runat="server">
               <h1>Assurance Class</h1>
                <p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style16">Update Status: </td>
                            <td class="auto-style2">
                                <asp:DropDownList ID="ddlAssurance" class="form-control" runat="server">
                                    <asp:ListItem>--No Status--</asp:ListItem>
                                    <asp:ListItem>In Progress</asp:ListItem>
                                    <asp:ListItem>Completed</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">Start Date: </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtStartAssur" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            
                            <td class="auto-style14">End Date:</td>
                            <td>
                                <asp:TextBox ID="txtEndAssur" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style6">Overall Comment:<br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                &nbsp;</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="txtOCAssur" runat="server" class="form-control" Height="195px" TextMode="MultiLine" Width="470px"></asp:TextBox>
                            </td>
                            <td class="auto-style10"></td>
                            <td class="auto-style8"></td>
                        </tr>
                        <tr>
                            <td class="auto-style17"></td>
                            <td class="auto-style18"></td>
                            <td class="auto-style19"></td>
                            <td class="auto-style20"></td>
                        </tr>
                    </table>
                    <p>
                    </p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style17">
                                <asp:Button ID="Button1" class="button" runat="server" Text="Update" OnClick="Button1_Click" />
                            </td>
                            <td class="auto-style18">
                                <asp:Button ID="Button2" class="button" runat="server" Text="Cancel" OnClick="Button2_Click" />
                            </td>
                            <td class="auto-style19">&nbsp;</td>
                            <td class="auto-style20">&nbsp;</td>
                        </tr>
                    </table>
                    <p>
                    </p>
                    <p>
                    </p>
                    <p>
                    </p>
                    <p>
                    </p>
                    <p>
                    </p>
                </p>
            </asp:View>
            <asp:View ID="vBible" runat="server">
                <h1>Bible</h1>
                 <p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style16">Status: </td>
                            <td class="auto-style2">
                                <asp:DropDownList ID="ddlBible" class="form-control" runat="server">
                                     <asp:ListItem>--No Status--</asp:ListItem>
                                    <asp:ListItem>In Progress</asp:ListItem>
                                    <asp:ListItem>Completed</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">Start Date: </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtStartBible" class="form-control" runat="server" TextMode="Date"  ></asp:TextBox>
                            </td>
                            
                            <td class="auto-style14">End Date:</td>
                            <td>
                                <asp:TextBox ID="txtEndBible" class="form-control" runat="server" TextMode="Date" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style6">Overall Comment:<br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                &nbsp;</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="txtOCBible" runat="server" class="form-control" Height="195px" TextMode="MultiLine" Width="470px"></asp:TextBox>
                            </td>
                            <td class="auto-style10"></td>
                            <td class="auto-style8"></td>
                        </tr>
                        <tr>
                            <td class="auto-style17"></td>
                            <td class="auto-style18"></td>
                            <td class="auto-style19"></td>
                            <td class="auto-style20"></td>
                        </tr>
                    </table>
                    <p>
                    </p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style17">
                                <asp:Button ID="btnUpdateBible" class="button" runat="server" Text="Update" OnClick="btnUpdateBible_Click" />
                            </td>
                            <td class="auto-style18">
                                <asp:Button ID="txtCancelBible" class="button" runat="server" Text="Cancel" />
                            </td>
                            <td class="auto-style19">&nbsp;</td>
                            <td class="auto-style20">&nbsp;</td>
                        </tr>
                    </table>
                     <p>
                     </p>
                </p>
            </asp:View>
            <asp:View ID="vGod" runat="server">
                <h1>God</h1>
                 <p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style16">Status: </td>
                            <td class="auto-style2">
                                <asp:DropDownList ID="ddlGod" class="form-control" runat="server">
                                     <asp:ListItem>--No Status--</asp:ListItem>
                                    <asp:ListItem>In Progress</asp:ListItem>
                                    <asp:ListItem>Completed</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">Start Date: </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtStartGod" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            
                            <td class="auto-style14">End Date:</td>
                            <td>
                                <asp:TextBox ID="txtEndGod" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style6">Overall Comment:<br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                &nbsp;</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="txtOCGod" runat="server" class="form-control" Height="195px" TextMode="MultiLine" Width="470px"></asp:TextBox>
                            </td>
                            <td class="auto-style10"></td>
                            <td class="auto-style8"></td>
                        </tr>
                        <tr>
                            <td class="auto-style17"></td>
                            <td class="auto-style18"></td>
                            <td class="auto-style19"></td>
                            <td class="auto-style20"></td>
                        </tr>
                    </table>
                    <p>
                    </p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style17">
                                <asp:Button ID="btnUpdateGod" class="button" runat="server" Text="Update" OnClick="btnUpdateGod_Click" />
                            </td>
                            <td class="auto-style18">
                                <asp:Button ID="btnCancelGod" class="button" runat="server" Text="Cancel" />
                            </td>
                            <td class="auto-style19">&nbsp;</td>
                            <td class="auto-style20">&nbsp;</td>
                        </tr>
                    </table>
                     <p>
                     </p>
                </p>
            </asp:View>
            <asp:View ID="vManSatan" runat="server">
                <h1>Man and Satan</h1>
                 <p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style16">Status: </td>
                            <td class="auto-style2">
                                <asp:DropDownList ID="ddlManSatan" class="form-control" runat="server">
                                     <asp:ListItem>--No Status--</asp:ListItem>
                                    <asp:ListItem>In Progress</asp:ListItem>
                                    <asp:ListItem>Completed</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">Start Date: </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtStartManSatan" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            
                            <td class="auto-style14">End Date:</td>
                            <td>
                                <asp:TextBox ID="txtEndManSatan" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style6">Overall Comment:<br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                &nbsp;</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="txtOCManSatan" runat="server" class="form-control" Height="195px" TextMode="MultiLine" Width="470px"></asp:TextBox>
                            </td>
                            <td class="auto-style10"></td>
                            <td class="auto-style8"></td>
                        </tr>
                        <tr>
                            <td class="auto-style17"></td>
                            <td class="auto-style18"></td>
                            <td class="auto-style19"></td>
                            <td class="auto-style20"></td>
                        </tr>
                    </table>
                    <p>
                    </p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style17">
                                <asp:Button ID="btnUpdateManSatan" class="button" runat="server" Text="Update" OnClick="btnUpdateManSatan_Click" />
                            </td>
                            <td class="auto-style18">
                                <asp:Button ID="btnCancelManSatan" class="button" runat="server" Text="Cancel" />
                            </td>
                            <td class="auto-style19">&nbsp;</td>
                            <td class="auto-style20">&nbsp;</td>
                        </tr>
                    </table>
                     <p>
                     </p>
                </p>
            </asp:View>
            <asp:View ID="vJesus" runat="server">
                <h1>Jesus</h1>
                 <p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style16">Status: </td>
                            <td class="auto-style2">
                                <asp:DropDownList ID="ddlJesus" class="form-control" runat="server">
                                     <asp:ListItem>--No Status--</asp:ListItem>
                                    <asp:ListItem>In Progress</asp:ListItem>
                                    <asp:ListItem>Completed</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">Start Date: </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtStartJesus" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            
                            <td class="auto-style14">End Date:</td>
                            <td>
                                <asp:TextBox ID="txtEndJesus" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style6">Overall Comment:<br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                &nbsp;</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="txtOCJesus" runat="server" class="form-control" Height="195px" TextMode="MultiLine" Width="470px"></asp:TextBox>
                            </td>
                            <td class="auto-style10"></td>
                            <td class="auto-style8"></td>
                        </tr>
                        <tr>
                            <td class="auto-style17"></td>
                            <td class="auto-style18"></td>
                            <td class="auto-style19"></td>
                            <td class="auto-style20"></td>
                        </tr>
                    </table>
                    <p>
                    </p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style17">
                                <asp:Button ID="btnUpdateJesus" class="button" runat="server" Text="Update" OnClick="btnUpdateJesus_Click" />
                            </td>
                            <td class="auto-style18">
                                <asp:Button ID="btnCancelJesus" class="button" runat="server" Text="Cancel" />
                            </td>
                            <td class="auto-style19">&nbsp;</td>
                            <td class="auto-style20">&nbsp;</td>
                        </tr>
                    </table>
                     <p>
                     </p>
                </p>
            </asp:View>
            <asp:View ID="vCross" runat="server">
                <h1>Cross</h1>
                 <p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style16">Status: </td>
                            <td class="auto-style2">
                                <asp:DropDownList ID="ddlCross" class="form-control" runat="server">
                                     <asp:ListItem>--No Status--</asp:ListItem>
                                    <asp:ListItem>In Progress</asp:ListItem>
                                    <asp:ListItem>Completed</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">Start Date: </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtStartCross" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            
                            <td class="auto-style14">End Date:</td>
                            <td>
                                <asp:TextBox ID="txtEndCross" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style6">Overall Comment:<br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                &nbsp;</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="txtOCCross" runat="server" class="form-control" Height="195px" TextMode="MultiLine" Width="470px"></asp:TextBox>
                            </td>
                            <td class="auto-style10"></td>
                            <td class="auto-style8"></td>
                        </tr>
                        <tr>
                            <td class="auto-style17"></td>
                            <td class="auto-style18"></td>
                            <td class="auto-style19"></td>
                            <td class="auto-style20"></td>
                        </tr>
                    </table>
                    <p>
                    </p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style17">
                                <asp:Button ID="btnUpdateCross" class="button" runat="server" Text="Update" OnClick="btnUpdateCross_Click" />
                            </td>
                            <td class="auto-style18">
                                <asp:Button ID="btnCancelCross" class="button" runat="server" Text="Cancel" />
                            </td>
                            <td class="auto-style19">&nbsp;</td>
                            <td class="auto-style20">&nbsp;</td>
                        </tr>
                    </table>
                     <p>
                     </p>
                </p>
            </asp:View>
            <asp:View ID="vBlood" runat="server">
                <h1>The Blood of Jesus</h1>
                 <p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style16">Status: </td>
                            <td class="auto-style2">
                                <asp:DropDownList ID="ddlBlood" class="form-control" runat="server">
                                     <asp:ListItem>--No Status--</asp:ListItem>
                                    <asp:ListItem>In Progress</asp:ListItem>
                                    <asp:ListItem>Completed</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">Start Date: </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtStartBlood" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            
                            <td class="auto-style14">End Date:</td>
                            <td>
                                <asp:TextBox ID="txtEndBlood" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style6">Overall Comment:<br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                &nbsp;</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="txtOCBlood" runat="server" class="form-control" Height="195px" TextMode="MultiLine" Width="470px"></asp:TextBox>
                            </td>
                            <td class="auto-style10"></td>
                            <td class="auto-style8"></td>
                        </tr>
                        <tr>
                            <td class="auto-style17"></td>
                            <td class="auto-style18"></td>
                            <td class="auto-style19"></td>
                            <td class="auto-style20"></td>
                        </tr>
                    </table>
                    <p>
                    </p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style17">
                                <asp:Button ID="btnUpdateBlood" class="button" runat="server" Text="Update" OnClick="btnUpdateBlood_Click" />
                            </td>
                            <td class="auto-style18">
                                <asp:Button ID="btnCancelBlood" class="button" runat="server" Text="Cancel" />
                            </td>
                            <td class="auto-style19">&nbsp;</td>
                            <td class="auto-style20">&nbsp;</td>
                        </tr>
                    </table>
                     <p>
                     </p>
                </p>
            </asp:View>
            <asp:View ID="vResurrection" runat="server">
                <h1>Resurrection</h1>
                 <p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style16">Status: </td>
                            <td class="auto-style2">
                                <asp:DropDownList ID="ddlResurr" class="form-control" runat="server">
                                     <asp:ListItem>--No Status--</asp:ListItem>
                                    <asp:ListItem>In Progress</asp:ListItem>
                                    <asp:ListItem>Completed</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">Start Date: </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtStartResurr" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            
                            <td class="auto-style14">End Date:</td>
                            <td>
                                <asp:TextBox ID="txtEndResurr" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style6">Overall Comment:<br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                &nbsp;</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="txtOCResurr" runat="server" class="form-control" Height="195px" TextMode="MultiLine" Width="470px"></asp:TextBox>
                            </td>
                            <td class="auto-style10"></td>
                            <td class="auto-style8"></td>
                        </tr>
                        <tr>
                            <td class="auto-style17"></td>
                            <td class="auto-style18"></td>
                            <td class="auto-style19"></td>
                            <td class="auto-style20"></td>
                        </tr>
                    </table>
                    <p>
                    </p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style17">
                                <asp:Button ID="btnUpdateResurr" class="button" runat="server" Text="Update" OnClick="btnUpdateResurr_Click" />
                            </td>
                            <td class="auto-style18">
                                <asp:Button ID="btnCancelResurr" class="button" runat="server" Text="Cancel" />
                            </td>
                            <td class="auto-style19">&nbsp;</td>
                            <td class="auto-style20">&nbsp;</td>
                        </tr>
                    </table>
                     <p>
                     </p>
                </p>
            </asp:View>
            <asp:View ID="vRepentace" runat="server">
                <h1>Repentance</h1>
                 <p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style16">Status: </td>
                            <td class="auto-style2">
                                <asp:DropDownList ID="ddlRepent" class="form-control" runat="server">
                                     <asp:ListItem>--No Status--</asp:ListItem>
                                    <asp:ListItem>In Progress</asp:ListItem>
                                    <asp:ListItem>Completed</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">Start Date: </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtStartRepent" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            
                            <td class="auto-style14">End Date:</td>
                            <td>
                                <asp:TextBox ID="txtEndRepent" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style6">Overall Comment:<br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                &nbsp;</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="txtOCRepent" runat="server" class="form-control" Height="195px" TextMode="MultiLine" Width="470px"></asp:TextBox>
                            </td>
                            <td class="auto-style10"></td>
                            <td class="auto-style8"></td>
                        </tr>
                        <tr>
                            <td class="auto-style17"></td>
                            <td class="auto-style18"></td>
                            <td class="auto-style19"></td>
                            <td class="auto-style20"></td>
                        </tr>
                    </table>
                    <p>
                    </p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style17">
                                <asp:Button ID="btnUpdateRepent" class="button" runat="server" Text="Update" OnClick="btnUpdateRepent_Click" />
                            </td>
                            <td class="auto-style18">
                                <asp:Button ID="btnCancelRepent" class="button" runat="server" Text="Cancel" />
                            </td>
                            <td class="auto-style19">&nbsp;</td>
                            <td class="auto-style20">&nbsp;</td>
                        </tr>
                    </table>
                     <p>
                     </p>
                </p>
            </asp:View>
            <asp:View ID="vFaith" runat="server">
                <h1>Faith</h1>
                 <p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style16">Status: </td>
                            <td class="auto-style2">
                                <asp:DropDownList ID="ddlFaith" class="form-control" runat="server">
                                     <asp:ListItem>--No Status--</asp:ListItem>
                                    <asp:ListItem>In Progress</asp:ListItem>
                                    <asp:ListItem>Completed</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">Start Date: </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtStartFaith" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            
                            <td class="auto-style14">End Date:</td>
                            <td>
                                <asp:TextBox ID="txtEndFaith" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style6">Overall Comment:<br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                &nbsp;</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="txtOCFaith" runat="server" class="form-control" Height="195px" TextMode="MultiLine" Width="470px"></asp:TextBox>
                            </td>
                            <td class="auto-style10"></td>
                            <td class="auto-style8"></td>
                        </tr>
                        <tr>
                            <td class="auto-style17"></td>
                            <td class="auto-style18"></td>
                            <td class="auto-style19"></td>
                            <td class="auto-style20"></td>
                        </tr>
                    </table>
                    <p>
                    </p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style17">
                                <asp:Button ID="btnUpdateFaith" class="button" runat="server" Text="Update" OnClick="btnUpdateFaith_Click" />
                            </td>
                            <td class="auto-style18">
                                <asp:Button ID="btnCaancelFaith" class="button" runat="server" Text="Cancel" />
                            </td>
                            <td class="auto-style19">&nbsp;</td>
                            <td class="auto-style20">&nbsp;</td>
                        </tr>
                    </table>
                     <p>
                     </p>
                </p>
            </asp:View>
            <asp:View ID="vHolySpirit" runat="server">
                <h1>Holy Spirit</h1>
                 <p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style16">Status: </td>
                            <td class="auto-style2">
                                <asp:DropDownList ID="ddlHoly" class="form-control" runat="server">
                                     <asp:ListItem>--No Status--</asp:ListItem>
                                    <asp:ListItem>In Progress</asp:ListItem>
                                    <asp:ListItem>Completed</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">Start Date: </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtStartHoly" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            
                            <td class="auto-style14">End Date:</td>
                            <td>
                                <asp:TextBox ID="txtEndHoly" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style6">Overall Comment:<br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                &nbsp;</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="txtOCHoly" runat="server" class="form-control" Height="195px" TextMode="MultiLine" Width="470px"></asp:TextBox>
                            </td>
                            <td class="auto-style10"></td>
                            <td class="auto-style8"></td>
                        </tr>
                        <tr>
                            <td class="auto-style17"></td>
                            <td class="auto-style18"></td>
                            <td class="auto-style19"></td>
                            <td class="auto-style20"></td>
                        </tr>
                    </table>
                    <p>
                    </p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style17">
                                <asp:Button ID="btnUpdateHoly" class="button" runat="server" Text="Update" OnClick="btnUpdateHoly_Click" />
                            </td>
                            <td class="auto-style18">
                                <asp:Button ID="btnCancelHoly" class="button" runat="server" Text="Cancel" />
                            </td>
                            <td class="auto-style19">&nbsp;</td>
                            <td class="auto-style20">&nbsp;</td>
                        </tr>
                    </table>
                     <p>
                     </p>
                </p>
            </asp:View>
            <asp:View ID="vTemptation" runat="server">
                <h1>Temptation</h1>
                 <p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style16">Status: </td>
                            <td class="auto-style2">
                                <asp:DropDownList ID="ddlTempt" class="form-control" runat="server">
                                     <asp:ListItem>--No Status--</asp:ListItem>
                                    <asp:ListItem>In Progress</asp:ListItem>
                                    <asp:ListItem>Completed</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">Start Date: </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtStartTempt" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            
                            <td class="auto-style14">End Date:</td>
                            <td>
                                <asp:TextBox ID="txtEndTempt" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style6">Overall Comment:<br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                &nbsp;</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="txtOCTempt" runat="server" class="form-control" Height="195px" TextMode="MultiLine" Width="470px"></asp:TextBox>
                            </td>
                            <td class="auto-style10"></td>
                            <td class="auto-style8"></td>
                        </tr>
                        <tr>
                            <td class="auto-style17"></td>
                            <td class="auto-style18"></td>
                            <td class="auto-style19"></td>
                            <td class="auto-style20"></td>
                        </tr>
                    </table>
                    <p>
                    </p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style17">
                                <asp:Button ID="btnUpdateTempt" class="button" runat="server" Text="Update" OnClick="btnUpdateTempt_Click" />
                            </td>
                            <td class="auto-style18">
                                <asp:Button ID="btnCancelTempt" class="button" runat="server" Text="Cancel" />
                            </td>
                            <td class="auto-style19">&nbsp;</td>
                            <td class="auto-style20">&nbsp;</td>
                        </tr>
                    </table>
                     <p>
                     </p>
                </p>
            </asp:View>
            <asp:View ID="vFellowship" runat="server">
                <h1>Fellowship</h1>
                 <p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style16">Status: </td>
                            <td class="auto-style2">
                                <asp:DropDownList ID="ddlFello" class="form-control" runat="server">
                                     <asp:ListItem>--No Status--</asp:ListItem>
                                    <asp:ListItem>In Progress</asp:ListItem>
                                    <asp:ListItem>Completed</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">Start Date: </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtStartFello" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            
                            <td class="auto-style14">End Date:</td>
                            <td>
                                <asp:TextBox ID="txtEndFello" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style6">Overall Comment:<br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                &nbsp;</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="txtOCFello" runat="server" class="form-control" Height="195px" TextMode="MultiLine" Width="470px"></asp:TextBox>
                            </td>
                            <td class="auto-style10"></td>
                            <td class="auto-style8"></td>
                        </tr>
                        <tr>
                            <td class="auto-style17"></td>
                            <td class="auto-style18"></td>
                            <td class="auto-style19"></td>
                            <td class="auto-style20"></td>
                        </tr>
                    </table>
                    <p>
                    </p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style17">
                                <asp:Button ID="btnUpdateFello" class="button" runat="server" Text="Update" OnClick="btnUpdateFello_Click" />
                            </td>
                            <td class="auto-style18">
                                <asp:Button ID="btnCancelFello" class="button" runat="server" Text="Cancel" />
                            </td>
                            <td class="auto-style19">&nbsp;</td>
                            <td class="auto-style20">&nbsp;</td>
                        </tr>
                    </table>
                     <p>
                     </p>
                </p>
            </asp:View>
            <asp:View ID="vGenerosity" runat="server">
                <h1>Generosity</h1>
                 <p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style16">Status: </td>
                            <td class="auto-style2">
                                <asp:DropDownList ID="ddlGen" class="form-control" runat="server">
                                     <asp:ListItem>--No Status--</asp:ListItem>
                                    <asp:ListItem>In Progress</asp:ListItem>
                                    <asp:ListItem>Completed</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">Start Date: </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtStartGen" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            
                            <td class="auto-style14">End Date:</td>
                            <td>
                                <asp:TextBox ID="txtEndGen" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style6">Overall Comment:<br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                &nbsp;</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="txtOCGen" runat="server" class="form-control" Height="195px" TextMode="MultiLine" Width="470px"></asp:TextBox>
                            </td>
                            <td class="auto-style10"></td>
                            <td class="auto-style8"></td>
                        </tr>
                        <tr>
                            <td class="auto-style17"></td>
                            <td class="auto-style18"></td>
                            <td class="auto-style19"></td>
                            <td class="auto-style20"></td>
                        </tr>
                    </table>
                    <p>
                    </p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style17">
                                <asp:Button ID="btnUpdateGen" class="button" runat="server" Text="Update" OnClick="btnUpdateGen_Click" />
                            </td>
                            <td class="auto-style18">
                                <asp:Button ID="btnCancelGen" class="button" runat="server" Text="Cancel" />
                            </td>
                            <td class="auto-style19">&nbsp;</td>
                            <td class="auto-style20">&nbsp;</td>
                        </tr>
                    </table>
                     <p>
                     </p>
                </p>
            </asp:View>
            <asp:View ID="vWaterBaptisim" runat="server">
                <h1>Water Baptisim</h1>
                 <p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style16">Status: </td>
                            <td class="auto-style2">
                                <asp:DropDownList ID="ddlWB" class="form-control" runat="server">
                                     <asp:ListItem>--No Status--</asp:ListItem>
                                    <asp:ListItem>In Progress</asp:ListItem>
                                    <asp:ListItem>Completed</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">Start Date: </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtStartWB" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            
                            <td class="auto-style14">End Date:</td>
                            <td>
                                <asp:TextBox ID="txtEndWB" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style6">Overall Comment:<br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                &nbsp;</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="txtOCWB" runat="server" class="form-control" Height="195px" TextMode="MultiLine" Width="470px"></asp:TextBox>
                            </td>
                            <td class="auto-style10"></td>
                            <td class="auto-style8"></td>
                        </tr>
                        <tr>
                            <td class="auto-style17"></td>
                            <td class="auto-style18"></td>
                            <td class="auto-style19"></td>
                            <td class="auto-style20"></td>
                        </tr>
                    </table>
                    <p>
                    </p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style17">
                                <asp:Button ID="btnUpdateWB" class="button" runat="server" Text="Update" OnClick="btnUpdateWB_Click" />
                            </td>
                            <td class="auto-style18">
                                <asp:Button ID="btnCancelWB" class="button" runat="server" Text="Cancel" />
                            </td>
                            <td class="auto-style19">&nbsp;</td>
                            <td class="auto-style20">&nbsp;</td>
                        </tr>
                    </table>
                     <p>
                     </p>
                </p>
            </asp:View>
            <asp:View ID="vCallOfGod" runat="server">
                <h1>Call of God</h1>
                 <p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style16">Status: </td>
                            <td class="auto-style2">
                                <asp:DropDownList ID="ddlCall" class="form-control" runat="server">
                                     <asp:ListItem>--No Status--</asp:ListItem>
                                    <asp:ListItem>In Progress</asp:ListItem>
                                    <asp:ListItem>Completed</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">Start Date: </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtStartCall" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            
                            <td class="auto-style14">End Date:</td>
                            <td>
                                <asp:TextBox ID="txtEndCall" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style6">Overall Comment:<br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                &nbsp;</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="txtOCCall" runat="server" class="form-control" Height="195px" TextMode="MultiLine" Width="470px"></asp:TextBox>
                            </td>
                            <td class="auto-style10"></td>
                            <td class="auto-style8"></td>
                        </tr>
                        <tr>
                            <td class="auto-style17"></td>
                            <td class="auto-style18"></td>
                            <td class="auto-style19"></td>
                            <td class="auto-style20"></td>
                        </tr>
                    </table>
                    <p>
                    </p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style17">
                                <asp:Button ID="btnUpdateCall" class="button" runat="server" Text="Update" OnClick="btnUpdateCall_Click" />
                            </td>
                            <td class="auto-style18">
                                <asp:Button ID="btnCancelCall" class="button" runat="server" Text="Cancel" />
                            </td>
                            <td class="auto-style19">&nbsp;</td>
                            <td class="auto-style20">&nbsp;</td>
                        </tr>
                    </table>
                     <p>
                     </p>
                </p>
            </asp:View>
            <asp:View ID="vPrayer" runat="server">
                <h1>Prayer</h1>
                 <p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style16">Status: </td>
                            <td class="auto-style2">
                                <asp:DropDownList ID="ddlPrayer" class="form-control" runat="server">
                                     <asp:ListItem>--No Status--</asp:ListItem>
                                    <asp:ListItem>In Progress</asp:ListItem>
                                    <asp:ListItem>Completed</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">Start Date: </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtStartPrayer" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            
                            <td class="auto-style14">End Date:</td>
                            <td>
                                <asp:TextBox ID="txtEndPrayer" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style6">Overall Comment:<br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                &nbsp;</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="txtOCPrayer" runat="server" class="form-control" Height="195px" TextMode="MultiLine" Width="470px"></asp:TextBox>
                            </td>
                            <td class="auto-style10"></td>
                            <td class="auto-style8"></td>
                        </tr>
                        <tr>
                            <td class="auto-style17"></td>
                            <td class="auto-style18"></td>
                            <td class="auto-style19"></td>
                            <td class="auto-style20"></td>
                        </tr>
                    </table>
                    <p>
                    </p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style17">
                                <asp:Button ID="btnUpdatePrayer" class="button" runat="server" Text="Update" OnClick="btnUpdatePrayer_Click" />
                            </td>
                            <td class="auto-style18">
                                <asp:Button ID="btnCancelPrayer" class="button" runat="server" Text="Cancel" />
                            </td>
                            <td class="auto-style19">&nbsp;</td>
                            <td class="auto-style20">&nbsp;</td>
                        </tr>
                    </table>
                     <p>
                     </p>
                </p>
            </asp:View>
            <asp:View ID="vKingdomLiving" runat="server">
                <h1>Kingdom Living</h1>
                 <p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style16">Status: </td>
                            <td class="auto-style2">
                                <asp:DropDownList ID="ddlKingdom" class="form-control" runat="server">
                                     <asp:ListItem>--No Status--</asp:ListItem>
                                    <asp:ListItem>In Progress</asp:ListItem>
                                    <asp:ListItem>Completed</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">Start Date: </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtStartKingdom" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            
                            <td class="auto-style14">End Date:</td>
                            <td>
                                <asp:TextBox ID="txtEndKingdom" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style6">Overall Comment:<br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                &nbsp;</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="txtOCKingdom" runat="server" class="form-control" Height="195px" TextMode="MultiLine" Width="470px"></asp:TextBox>
                            </td>
                            <td class="auto-style10"></td>
                            <td class="auto-style8"></td>
                        </tr>
                        <tr>
                            <td class="auto-style17"></td>
                            <td class="auto-style18"></td>
                            <td class="auto-style19"></td>
                            <td class="auto-style20"></td>
                        </tr>
                    </table>
                    <p>
                    </p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style17">
                                <asp:Button ID="btnUpdateKingdom" class="button" runat="server" Text="Update" OnClick="btnUpdateKingdom_Click" />
                            </td>
                            <td class="auto-style18">
                                <asp:Button ID="btnCancelKingdom" class="button" runat="server" Text="Cancel" />
                            </td>
                            <td class="auto-style19">&nbsp;</td>
                            <td class="auto-style20">&nbsp;</td>
                        </tr>
                    </table>
                     <p>
                     </p>
                </p>
            </asp:View>
            <asp:View ID="vMemebership" runat="server">
                <h1>Membership</h1>
                 <p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style16">Status: </td>
                            <td class="auto-style2">
                                <asp:DropDownList ID="ddlMember" class="form-control" runat="server">
                                     <asp:ListItem>--No Status--</asp:ListItem>
                                    <asp:ListItem>In Progress</asp:ListItem>
                                    <asp:ListItem>Completed</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16">Start Date: </td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtStartMember" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            
                            <td class="auto-style14">End Date:</td>
                            <td>
                                <asp:TextBox ID="txtEndMember" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            
                            <td class="auto-style16">&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style13">&nbsp;</td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style6">Overall Comment:<br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                &nbsp;</td>
                            <td class="auto-style7">
                                <asp:TextBox ID="txtOCMember" runat="server" class="form-control" Height="195px" TextMode="MultiLine" Width="470px"></asp:TextBox>
                            </td>
                            <td class="auto-style10"></td>
                            <td class="auto-style8"></td>
                        </tr>
                        <tr>
                            <td class="auto-style17"></td>
                            <td class="auto-style18"></td>
                            <td class="auto-style19"></td>
                            <td class="auto-style20"></td>
                        </tr>
                    </table>
                    <p>
                    </p>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style17">
                                <asp:Button ID="btnUpdateMember" class="button" runat="server" Text="Update" OnClick="btnUpdateMember_Click" />
                            </td>
                            <td class="auto-style18">
                                <asp:Button ID="btnCancelMember" class="button" runat="server" Text="Cancel" />
                            </td>
                            <td class="auto-style19">&nbsp;</td>
                            <td class="auto-style20">&nbsp;</td>
                        </tr>
                    </table>
                     <p>
                     </p>
                    
                    <br />
                    <br />
                     <br />
                     <br />
                     <br />
                     <br />
                     <br />
                     <br />
                     <br />

                </p>
            </asp:View>
            
        </asp:MultiView>
<p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Title], [fName], [Surname] FROM [Users] WHERE ([Username] = @Username)">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblUser" Name="Username" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="lblUser" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblDiscipleID" runat="server" Visible="False" ></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [FName], [Surname], [Cell_Number] FROM [Disciple] WHERE ([Disciple_Id] = @Disciple_Id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblDiscipleID" Name="Disciple_Id" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
