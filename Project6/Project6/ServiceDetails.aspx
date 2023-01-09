<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ServiceDetails.aspx.cs" Inherits="Project6.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:Button ID="bb" runat="server" Text="Back" Height="40px" Width="90px" OnClick="bb_Click" />
    <div class="boxpro2" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #06283D; text-align: center">
        <br /><br />
        <div style="width:100%; text-align:center">
            <asp:Label ID="tittt" runat="server" Text="Service Information" style="text-align:center; font-family:'Times New Roman';
            font-size:25px;
            font-style:italic;
            font-weight:bold;"></asp:Label>

            </div><br />
         
        <div >
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ServiceID,Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="500px" Width="70%" OnPageIndexChanging="DetailsView1_PageIndexChanging" CssClass="marrL" >
    
        <AlternatingRowStyle BackColor="White" BorderColor="#06283D" Font-Names="Times New Roman" Font-Size="25px" Font-Underline="False" HorizontalAlign="Left" VerticalAlign="Middle" ForeColor="#06283D" />
        <CommandRowStyle BackColor="#06283D" BorderColor="#A6D9EE" Font-Bold="True" HorizontalAlign="Left" VerticalAlign="Middle" ForeColor="#DFF6FF" />
        <EditRowStyle BackColor="#2461BF" ForeColor="#DFF6FF" />
        <EmptyDataRowStyle ForeColor="#DFF6FF" />
        <FieldHeaderStyle Font-Names="Times New Roman" BackColor="#06283D" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="#06283D" ForeColor="#DFF6FF" Font-Size="20px" />
       
        <Fields>
            <asp:BoundField DataField="ServiceID" HeaderText="#" InsertVisible="False" ReadOnly="True" SortExpression="ServiceID" />
            <asp:TemplateField SortExpression="Image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' Height="150px" Width="300px"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ServiceName" HeaderText="Name" SortExpression="ServiceName" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="CategoryName" HeaderText="Category" SortExpression="CategoryName" />
            <asp:BoundField DataField="ServiceTime" HeaderText="Time" SortExpression="ServiceTime" />
            <asp:BoundField DataField="LeftQuantity" HeaderText="Quantity" SortExpression="LeftQuantity" />
            <asp:BoundField DataField="UserName" HeaderText="Doner Name" SortExpression="UserName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" SortExpression="PhoneNumber" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="UserStatus" HeaderText="Status" SortExpression="UserStatus" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#06283D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="#06283D" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#06283D" Font-Names="Times New Roman" Font-Size="25px" HorizontalAlign="Justify" VerticalAlign="Middle" BorderColor="#06283D" ForeColor="#DFF6FF" BorderStyle="Inset" />
    </asp:DetailsView> </div></div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" SelectCommand="SELECT * FROM Services INNER JOIN AspNetUsers ON Services.ProviderID = AspNetUsers.Id And ServiceID=@Id" DeleteCommand="DELETE FROM [AspNetUsers] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [City], [UserStatus]) VALUES (@Id, @Email, @EmailConfirmed, @PasswordHash, @SecurityStamp, @PhoneNumber, @PhoneNumberConfirmed, @TwoFactorEnabled, @LockoutEndDateUtc, @LockoutEnabled, @AccessFailedCount, @UserName, @City, @UserStatus)" UpdateCommand="UPDATE [AspNetUsers] SET [Email] = @Email, [EmailConfirmed] = @EmailConfirmed, [PasswordHash] = @PasswordHash, [SecurityStamp] = @SecurityStamp, [PhoneNumber] = @PhoneNumber, [PhoneNumberConfirmed] = @PhoneNumberConfirmed, [TwoFactorEnabled] = @TwoFactorEnabled, [LockoutEndDateUtc] = @LockoutEndDateUtc, [LockoutEnabled] = @LockoutEnabled, [AccessFailedCount] = @AccessFailedCount, [UserName] = @UserName, [City] = @City, [UserStatus] = @UserStatus WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="EmailConfirmed" Type="Boolean" />
            <asp:Parameter Name="PasswordHash" Type="String" />
            <asp:Parameter Name="SecurityStamp" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="PhoneNumberConfirmed" Type="Boolean" />
            <asp:Parameter Name="TwoFactorEnabled" Type="Boolean" />
            <asp:Parameter Name="LockoutEndDateUtc" Type="DateTime" />
            <asp:Parameter Name="LockoutEnabled" Type="Boolean" />
            <asp:Parameter Name="AccessFailedCount" Type="Int32" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="UserStatus" Type="Boolean" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="serid" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="EmailConfirmed" Type="Boolean" />
            <asp:Parameter Name="PasswordHash" Type="String" />
            <asp:Parameter Name="SecurityStamp" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="PhoneNumberConfirmed" Type="Boolean" />
            <asp:Parameter Name="TwoFactorEnabled" Type="Boolean" />
            <asp:Parameter Name="LockoutEndDateUtc" Type="DateTime" />
            <asp:Parameter Name="LockoutEnabled" Type="Boolean" />
            <asp:Parameter Name="AccessFailedCount" Type="Int32" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="UserStatus" Type="Boolean" />
            <asp:Parameter Name="Id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
