﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Jobs/AdminMasterPage.Master" CodeFile="Job_AdminHotOppsColVisible.aspx.cs" Inherits="Jobs_Job_AdminHotOppsColVisible" %>
<asp:Content ID="ct_adminjobs" ContentPlaceHolderID="MainContent" runat="server">
<style>
    .fullWidthPageContent{padding:0!important;}
    .fullWidthPageTopbg .fullWidthPageContent h3{line-height: 40px!important;}
    .RadGrid_Hay .rgHeader, .RadGrid_Hay .rgHeader a{color: #FFFFFF !important;}
    .RadGrid .rgHeader, .RadGrid th.rgResizeCol{padding-bottom:3px!important;}
    .RadGrid .rgHeader, .RadGrid th.rgResizeCol{border-right: 0 solid #406EB9 !important; }
    .RadGrid_Hay .rgHeader, .RadGrid_Hay th.rgResizeCol{background:url("../../ImagesNew/jobs/gridbg_adminpage.gif") repeat-x scroll 0 -2300px #2DAFE3 !important}
    </style>
<asp:UpdatePanel ID="upHotOppsColVisiblr" runat="server">
<ContentTemplate>
<div class="fullWidthLeftPane">
                <div class="fullWidthPageCenterBg">
                    <div class="fullWidthPageTopbg">
                        <div class="fullWidthPageBottompbg">
                            <!--content Start -->
                            <div class="fullWidthPageContent">

<div class="jobs_content">
 <div class="innerpanel">
    <div class="adminpanel">
        
        <div class="adminpage_cntbgmid">
            <div class="adminheadingbg">
                <h3>HotOpps Admin</h3>
                <div class="adminlogoutpanel">
                    <ul>
                        
                     <li  style="background:none;"><asp:LinkButton ID="lnkManageAdmin" CausesValidation="false" runat="server" Text="Job Manage Admin" 
                                onclick="lnkManageAdmin_Click"></asp:LinkButton></li>
                     <li>
                         <asp:LinkButton ID="lnklogout" runat="server" Text="Logout" OnClick="lnklogout_Click"></asp:LinkButton></li>
                    </ul>
                </div>
            </div> 
            <div class="candidatecntbg_mid_cnt">
              <telerik:RadGrid ID="rgHotoppsjobs" runat="server" AutoGenerateColumns="False" GridLines="None" AllowSorting="true" AllowPaging="true" PageSize="12"
                    Skin="Hay" CellPadding="0" OnInsertCommand="rgHotoppsjobs_InsertCommand"
                    OnUpdateCommand="rgHotoppsjobs_UpdateCommand" OnNeedDataSource="rgHotoppsjobs_NeedDataSource"
                    OnItemDataBound="rgHotoppsjobs_ItemDataBound" OnItemCommand="rgHotoppsjobs_ItemCommand">
                    <MasterTableView CommandItemDisplay="Top" InsertItemDisplay="Top" AutoGenerateColumns="false"
                        DataKeyNames="HId,ClientId">
                          <CommandItemSettings AddNewRecordText="Set HotOpps Visibility" />
                        <EditFormSettings EditColumn-InsertText="Save" EditColumn-UpdateText="Save">
                        </EditFormSettings>
                         <Columns>
                            <telerik:GridEditCommandColumn ButtonType="ImageButton" ItemStyle-HorizontalAlign="Center" ItemStyle-Height="30px" UniqueName="EditCommandColumn">
                                <ItemStyle CssClass="imgedit" />
                            </telerik:GridEditCommandColumn>
                             <telerik:GridTemplateColumn HeaderText="Client" SortExpression="Client" ItemStyle-Height="30px" UniqueName="Client">
                                <ItemTemplate>
                                    <asp:Label runat="server" ID="lblClient" Text='<%# Eval("Client") %>'></asp:Label>
                                </ItemTemplate>
                                 <EditItemTemplate>
                                 <telerik:RadComboBox ID="rcbclient" Filter="Contains" DataTextField="Client" runat="server" DataValueField="Client" Width="250px" /> 
                                 <asp:RequiredFieldValidator ID="rfvClient" runat="server" ControlToValidate="rcbclient"
                                        ErrorMessage="Please select client" Display="Dynamic" InitialValue="--Select--" SetFocusOnError="true" />                                   
                                </EditItemTemplate>                               
                            </telerik:GridTemplateColumn>
                          <telerik:GridTemplateColumn HeaderText="Country" HeaderStyle-Width="80px" ItemStyle-Height="30px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"  SortExpression="Country" UniqueName="Country">
                                <ItemTemplate>
                                    <asp:Image ID="imgVisibilityCountry" runat="server" />
                                    <asp:Label runat="server" ID="lbCountry"  Visible="false" Text='<%# Eval("Country") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:CheckBox ID="chkVisibiltyCountry" runat="server" />
                                </EditItemTemplate>
                          </telerik:GridTemplateColumn>
                           <telerik:GridTemplateColumn HeaderText="State" HeaderStyle-Width="80px" ItemStyle-Height="30px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" SortExpression="State" UniqueName="State">
                                <ItemTemplate>
                                    <asp:Image ID="imgVisibilityState" runat="server" />
                                    <asp:Label runat="server" ID="lbState" Visible="false" Text='<%# Eval("State") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:CheckBox ID="chkVisibiltyState" runat="server" />
                                </EditItemTemplate>
                          </telerik:GridTemplateColumn>
                           <telerik:GridTemplateColumn HeaderText="City" HeaderStyle-Width="80px" ItemStyle-Height="30px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" SortExpression="City" UniqueName="City">
                                <ItemTemplate>
                                    <asp:Image ID="imgVisibilityCity" runat="server" />
                                    <asp:Label runat="server" ID="lbCity" Visible="false" Text='<%# Eval("City") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:CheckBox ID="chkVisibiltyCity" runat="server" />
                                </EditItemTemplate>
                          </telerik:GridTemplateColumn>
                           <telerik:GridTemplateColumn HeaderText="Facility" ItemStyle-Height="30px" HeaderStyle-Width="80px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" SortExpression="Facility" UniqueName="Facility">
                                <ItemTemplate>
                                    <asp:Image ID="imgVisibilityFacility" runat="server" />
                                    <asp:Label runat="server" ID="lbFacility" Visible="false" Text='<%# Eval("Facility") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:CheckBox ID="chkVisibiltyFacility" runat="server" />
                                </EditItemTemplate>
                          </telerik:GridTemplateColumn>
                            <telerik:GridTemplateColumn HeaderText="Speciality" ItemStyle-Height="30px" HeaderStyle-Width="80px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" SortExpression="Speciality" UniqueName="Speciality">
                                <ItemTemplate>
                                    <asp:Image ID="imgVisibilitySpeciality" runat="server" />
                                    <asp:Label runat="server" ID="lbSpeciality" Visible="false" Text='<%# Eval("Speciality") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:CheckBox ID="chkVisibiltySpeciality" runat="server" />
                                </EditItemTemplate>
                          </telerik:GridTemplateColumn>
                           <telerik:GridTemplateColumn HeaderText="PostDate" ItemStyle-Height="30px" HeaderStyle-Width="80px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" SortExpression="PostDate" UniqueName="PostDate">
                                <ItemTemplate>
                                    <asp:Image ID="imgVisibilityPostDate" runat="server" />
                                    <asp:Label runat="server" ID="lbPostDate" Visible="false" Text='<%# Eval("PostedDate") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:CheckBox ID="chkVisibiltyPostDate" runat="server" />
                                </EditItemTemplate>
                          </telerik:GridTemplateColumn>
                     </Columns>
                    </MasterTableView>
                    </telerik:RadGrid>
                <div> 
            </div>
        </div>
        
  </div>
</div>
</div>

</div>
</div>
</div>
    </div>
</div> 
</ContentTemplate>
</asp:UpdatePanel>
</asp:Content>