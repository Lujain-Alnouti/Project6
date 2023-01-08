﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UsersInfo.aspx.cs" Inherits="Project6.WebForm1" %>


<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br /><br />
     <div class="wizad">
<asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="3" BackColor="#DFF6FF"
    Font-Names="Verdana" Font-Size="0.8em" Height="900px" Width="97.75%" FinishCompleteButtonText="Users"
    FinishPreviousButtonText="Services" OnActiveStepChanged="Wizard1_ActiveStepChanged" OnFinishButtonClick="Wizard1_FinishButtonClick1" 
   >
        <FinishCompleteButtonStyle BackColor="#06283D" Font-Names="Times New Roman" Font-Size="15px" ForeColor="#DFF6FF" Height="40px" Width="70px" />
        <FinishPreviousButtonStyle BackColor="#06283D" Font-Names="Times New Roman" Font-Size="15px" ForeColor="#DFF6FF" Height="40px" Width="70px" />
        <HeaderStyle BackColor="#06283D" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
        <NavigationButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Times New Roman" Font-Size="0.8em" ForeColor="#1C5E55" />
        <NavigationStyle BackColor="#DFF6FF" BorderColor="#DFF6FF" />
        <StartNextButtonStyle BackColor="#06283D" Font-Size="15px" ForeColor="#DFF6FF" Height="40px" Width="70px" Font-Names="Times New Roman" />
        <StepNextButtonStyle BackColor="#06283D" Font-Size="15px" Font-Underline="True" ForeColor="#DFF6FF" Height="40px" Width="70px" Font-Names="Times New Roman" />
        <StepPreviousButtonStyle BackColor="#06283D" Font-Size="15px" ForeColor="#DFF6FF" Height="40px" Width="70px" Font-Names="Times New Roman" />
        <SideBarButtonStyle ForeColor="#DFF6FF" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="20px" Height="100px" />
        <SideBarStyle BackColor="#06283D" Font-Size="0.9em" VerticalAlign="Middle" Width="170px" ForeColor="#DFF6FF" HorizontalAlign="Left"/>
        <StepStyle BackColor="#DFF6FF" BorderColor="#DFF6FF" BorderStyle="Solid" BorderWidth="2px" HorizontalAlign="Center" VerticalAlign="Top" Width="900px" Font-Names="Times New Roman" />
        <WizardSteps>
           
           
            <asp:WizardStep ID="adm" runat="server" Title="Admin">
                <br /><br /><br />
                <div class="divv">
                <asp:Label ID="adddlab" runat="server" Text="Welcome Admin" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="40px" ForeColor="#06283D"></asp:Label>
                </div>
                <br />
                
                <br />
                <div class="perdiv">
                <asp:Label ID="Label6" runat="server" Text="" CssClass="percUlab "></asp:Label>
                <asp:Label ID="Label7" runat="server" Text="" CssClass="percPlab "></asp:Label>
                </div>
                <br />
                <asp:Image ID="Image1" runat="server" ImageUrl="~\img\DON.jfif" CssClass="admIMG"/>
                <br />
                
            </asp:WizardStep>
           
           
            <asp:WizardStep runat="server" title="Users" ID="usr">
               <br />
                <br /><br />
                <div class="divv">
                <asp:Label ID="Label1" runat="server" Text="User Information Page" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="40px" ForeColor="#06283D"></asp:Label>
                </div>
                
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" SelectCommand="SELECT * FROM [AspNetUsers] WHERE ([UserName] LIKE '%' + @UserName + '%')">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="usesar" Name="UserName" PropertyName="Text" Type="String" />
                        </SelectParameters>
                </asp:SqlDataSource>
                
                    <br /><br /><br /><br />
                <asp:TextBox ID="usesar" runat="server" Height="35px" Width="405px"></asp:TextBox>
                <asp:Button ID="seaUB" runat="server" BackColor="#06283D" ForeColor="#DFF6FF" Height="30px" Text="Search" Width="70px" Font-Size="14px" style="margin-left:10px"/>
                <br /><br /><br /><br /><br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" SelectCommand="SELECT AspNetUsers.Email, AspNetUsers.PhoneNumber, AspNetUsers.UserName, AspNetUsers.Id, AspNetUserRoles.UserId, AspNetUserRoles.RoleId FROM AspNetUsers INNER JOIN AspNetUserRoles ON AspNetUsers.Id = AspNetUserRoles.UserId AND AspNetUserRoles.RoleId = 3">
                </asp:SqlDataSource>
               <div class="grr">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="Id,UserId,RoleId" Height="300px" HorizontalAlign="Center" Width="85%" CssClass="headerT" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                        <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="UserDetails.aspx?id={0}&amp;f=1" Text="show more" />
                    </Columns>
                    <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#2461BF" />
                    <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <FooterStyle BackColor="#507CD1" HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#06283D" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="50px" VerticalAlign="Middle" Wrap="True" Font-Bold="True" HorizontalAlign="Center" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle Font-Names="Times New Roman" Font-Size="20px" HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#EFF3FB" />
                    <SelectedRowStyle HorizontalAlign="Center" BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle HorizontalAlign="Center" BackColor="#4870BE" />
                </asp:GridView>
               </div>
            </asp:WizardStep>

            <asp:WizardStep runat="server" title="Provider" ID="prov" >
                <br />  <br /><br />
                <div class="divv">
                <asp:Label ID="Label5" runat="server" Text="Providers Information Page" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="40px" ForeColor="#06283D"></asp:Label>
                </div>
                
                     <br /><br /><br /><br />
                <asp:TextBox ID="provsearch" runat="server" Height="35px" Width="405px"></asp:TextBox>
                <asp:Button ID="provsea" runat="server" BackColor="#06283D" ForeColor="#DFF6FF" Height="30px" Text="Search" Width="70px" Font-Size="14px" style="margin-left:10px"/>
                <br /><br /><br /><br /><br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" SelectCommand="SELECT AspNetUsers.Email, AspNetUsers.PhoneNumber, AspNetUsers.UserName, AspNetUsers.Id, AspNetUserRoles.UserId, AspNetUserRoles.RoleId FROM AspNetUsers INNER JOIN AspNetUserRoles ON AspNetUsers.Id = AspNetUserRoles.UserId AND AspNetUserRoles.RoleId = 2"></asp:SqlDataSource>
              <div class="grr">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="Id,UserId,RoleId" Height="300px" HorizontalAlign="Center" Width="85%" CssClass="headerT" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                        <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="UserDetails.aspx?id={0}" Text="show more" />
                    </Columns>
                    <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#2461BF" />
                    <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <FooterStyle BackColor="#507CD1" HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#06283D" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="50px" VerticalAlign="Middle" Wrap="True" Font-Bold="True" HorizontalAlign="Center" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle Font-Names="Times New Roman" Font-Size="20px" HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#EFF3FB" />
                    <SelectedRowStyle HorizontalAlign="Center" BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle HorizontalAlign="Center" BackColor="#4870BE" />
                </asp:GridView>
               </div>
            </asp:WizardStep>

            <asp:WizardStep runat="server" Title="Services" ID="ser">  
                 <br /><br /><br />
                 <div class="divv">
                <asp:Label ID="Label2" runat="server" Text="Service Page" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="40px" ForeColor="#06283D"></asp:Label>
                </div>
                
                 <br /><br /><br /><br />
                <asp:TextBox ID="SerSearch" runat="server" Height="35px" Width="405px"></asp:TextBox>
                <asp:Button ID="serser" runat="server" BackColor="#06283D" ForeColor="#DFF6FF" Height="30px" Text="Search" Width="70px" Font-Size="14px" style="margin-left:10px"/>
                <br /><br /><br />

               
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" DeleteCommand="DELETE FROM [Services] WHERE [ServiceID] = @ServiceID" InsertCommand="INSERT INTO [Services] ([ProviderID], [ServiceName], [Description], [Image], [Status], [ServiceTime], [CategoryName], [Quantity], [LeftQuantity]) VALUES (@ProviderID, @ServiceName, @Description, @Image, @Status, @ServiceTime, @CategoryName, @Quantity, @LeftQuantity)" SelectCommand="SELECT * FROM [Services] WHERE ([Status] = @Status)" UpdateCommand="UPDATE [Services] SET [ProviderID] = @ProviderID, [ServiceName] = @ServiceName, [Description] = @Description, [Image] = @Image, [Status] = @Status, [ServiceTime] = @ServiceTime, [CategoryName] = @CategoryName, [Quantity] = @Quantity, [LeftQuantity] = @LeftQuantity WHERE [ServiceID] = @ServiceID">
                        <DeleteParameters>
                            <asp:Parameter Name="ServiceID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ProviderID" Type="String" />
                            <asp:Parameter Name="ServiceName" Type="String" />
                            <asp:Parameter Name="Description" Type="String" />
                            <asp:Parameter Name="Image" Type="String" />
                            <asp:Parameter Name="Status" Type="String" />
                            <asp:Parameter Name="ServiceTime" Type="DateTime" />
                            <asp:Parameter Name="CategoryName" Type="String" />
                            <asp:Parameter Name="Quantity" Type="Int32" />
                            <asp:Parameter Name="LeftQuantity" Type="Int32" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="Status" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ProviderID" Type="String" />
                            <asp:Parameter Name="ServiceName" Type="String" />
                            <asp:Parameter Name="Description" Type="String" />
                            <asp:Parameter Name="Image" Type="String" />
                            <asp:Parameter Name="Status" Type="String" />
                            <asp:Parameter Name="ServiceTime" Type="DateTime" />
                            <asp:Parameter Name="CategoryName" Type="String" />
                            <asp:Parameter Name="Quantity" Type="Int32" />
                            <asp:Parameter Name="LeftQuantity" Type="Int32" />
                            <asp:Parameter Name="ServiceID" Type="Int32" />
                        </UpdateParameters>
                </asp:SqlDataSource>
                
                    <br /><br />
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" SelectCommand="SELECT ServiceID, ProviderID, ServiceName, Description, Image, Status, ServiceTime, CategoryName, Quantity, LeftQuantity FROM Services WHERE (Status = 1)"></asp:SqlDataSource>
              <div class="grr">
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource6" DataKeyNames="ServiceID" Height="300px" HorizontalAlign="Center" Width="85%" CssClass="headerT" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ServiceID" HeaderText="ServiceID" SortExpression="ServiceID" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="ServiceName" HeaderText="ServiceName" SortExpression="ServiceName" />
                        <asp:TemplateField HeaderText="Image" SortExpression="Image">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("Image") %>' Height="80px" Width="150px"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:HyperLinkField DataNavigateUrlFields="ServiceID" DataNavigateUrlFormatString="ServiceDetails.aspx?serid={0}&amp;ff=1" Text="show more" />
                    </Columns>
                    <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#2461BF" />
                    <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <FooterStyle BackColor="#507CD1" HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#06283D" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="50px" VerticalAlign="Middle" Wrap="True" Font-Bold="True" HorizontalAlign="Center" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle Font-Names="Times New Roman" Font-Size="20px" HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#EFF3FB" />
                    <SelectedRowStyle HorizontalAlign="Center" BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle HorizontalAlign="Center" BackColor="#4870BE" />
                </asp:GridView>
               </div>

            </asp:WizardStep>

            <asp:WizardStep runat="server" Title="Waiting Services" ID="waser">
                <br /><br />

                <div class="divv">
                <asp:Label ID="Label3" runat="server" Text="Waiting Service Page" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="40px" ForeColor="#06283D"></asp:Label>
                </div>
                
<%--                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>--%>
                
                    <br /><br />
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" SelectCommand="SELECT * FROM [Services] WHERE ([Status] = @Status)" DeleteCommand="DELETE FROM [Services] WHERE [ServiceID] = @ServiceID" InsertCommand="INSERT INTO [Services] ([ProviderID], [ServiceName], [Description], [Image], [Status], [ServiceTime], [CategoryName], [Quantity], [LeftQuantity]) VALUES (@ProviderID, @ServiceName, @Description, @Image, @Status, @ServiceTime, @CategoryName, @Quantity, @LeftQuantity)" UpdateCommand="UPDATE [Services] SET [ProviderID] = @ProviderID, [ServiceName] = @ServiceName, [Description] = @Description, [Image] = @Image, [Status] = @Status, [ServiceTime] = @ServiceTime, [CategoryName] = @CategoryName, [Quantity] = @Quantity, [LeftQuantity] = @LeftQuantity WHERE [ServiceID] = @ServiceID">
                    <DeleteParameters>
                        <asp:Parameter Name="ServiceID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ProviderID" Type="String" />
                        <asp:Parameter Name="ServiceName" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Image" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="ServiceTime" Type="DateTime" />
                        <asp:Parameter Name="CategoryName" Type="String" />
                        <asp:Parameter Name="Quantity" Type="Int32" />
                        <asp:Parameter Name="LeftQuantity" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:Parameter DefaultValue="0" Name="Status" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ProviderID" Type="String" />
                        <asp:Parameter Name="ServiceName" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Image" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="ServiceTime" Type="DateTime" />
                        <asp:Parameter Name="CategoryName" Type="String" />
                        <asp:Parameter Name="Quantity" Type="Int32" />
                        <asp:Parameter Name="LeftQuantity" Type="Int32" />
                        <asp:Parameter Name="ServiceID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <div class="grr">
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" DataKeyNames="ServiceID" Height="300px" HorizontalAlign="Center" Width="85%" CssClass="headerT" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" EmptyDataText="No Data Found" OnRowCommand="GridView4_RowCommand1">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ServiceID" HeaderText="ServiceID" SortExpression="ServiceID" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="ServiceName" HeaderText="ServiceName" SortExpression="ServiceName" />
                        <asp:TemplateField HeaderText="Image" SortExpression="Image">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("Image") %>'  Height="80px" Width="150px"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                        <asp:HyperLinkField DataNavigateUrlFields="ServiceID" DataNavigateUrlFormatString="ServiceDetails.aspx?serid={0}" Text="show more" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="Acc" runat="server" CausesValidation="false" CommandName="Accepted" Text="Accept" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"></asp:LinkButton>
                            </ItemTemplate>
                            <ControlStyle BackColor="#00CC00" BorderColor="#00CC00" Font-Names="Times New Roman" Font-Size="17px" ForeColor="White" Height="30px" Width="70px" />
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="Rejected" Text="Reject" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"></asp:LinkButton>
                            </ItemTemplate>
                            <ControlStyle BackColor="#FF3300" BorderColor="#FF3300" Font-Names="Times New Roman" Font-Size="17px" ForeColor="White" Height="30px" Width="70px" />
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#2461BF" />
                    <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <FooterStyle BackColor="#507CD1" HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#06283D" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="50px" VerticalAlign="Middle" Wrap="True" Font-Bold="True" HorizontalAlign="Center" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle Font-Names="Times New Roman" Font-Size="20px" HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#EFF3FB" />
                    <SelectedRowStyle HorizontalAlign="Center" BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle HorizontalAlign="Center" BackColor="#4870BE" />
                </asp:GridView>
               </div>

            </asp:WizardStep>
            
        </WizardSteps>
    </asp:Wizard>
          </div>
</asp:Content>
<%-- <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="Acc" runat="server" CausesValidation="false" CommandName="Accepted" Text="Accept" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"/>
                            </ItemTemplate>
                            <ControlStyle BackColor="Green"  Font-Bold="False" Font-Names="Times New Roman" ForeColor="White" Height="30px" Width="70px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="Rej" runat="server" CausesValidation="false" CommandName="Rejected" Text="Reject" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"/>
                            </ItemTemplate>
                            <ControlStyle BackColor="Red" Font-Bold="False" Font-Names="Times New Roman" ForeColor="White" Height="30px" Width="70px" />
                        </asp:TemplateField>--%>