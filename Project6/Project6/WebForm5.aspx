<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="Project6.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br /><br />
                <div class="divv">
                <asp:Label ID="adddlab" runat="server" Text="Own Donations" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="40px" ForeColor="#06283D"></asp:Label>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" DeleteCommand="DELETE FROM [Services] WHERE [ServiceID] = @ServiceID" InsertCommand="INSERT INTO [Services] ([ProviderID], [ServiceName], [Description], [Image], [Status], [ServiceTime], [CategoryName], [Quantity], [LeftQuantity]) VALUES (@ProviderID, @ServiceName, @Description, @Image, @Status, @ServiceTime, @CategoryName, @Quantity, @LeftQuantity)" SelectCommand="SELECT * FROM [Services] WHERE ([ProviderID] = @ProviderID)" UpdateCommand="UPDATE [Services] SET  [ServiceName] = @ServiceName, [Description] = @Description, [Image] = @Image, [CategoryName] = @CategoryName, [Quantity] = @Quantity, [LeftQuantity] = @LeftQuantity WHERE [ServiceID] = @ServiceID">
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
                        <asp:SessionParameter Name="ProviderID" SessionField="DIO" Type="String" />
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
                <br />
    <asp:GridView ID="GridView1" CssClass="ordertable" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" DataKeyNames="ServiceID" DataSourceID="SqlDataSource1" OnRowUpdating="GridView1_RowUpdating" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" EmptyDataText="You Don't Have Donations In Current Time" GridLines="Vertical" OnDataBinding="GridView1_DataBinding" >
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ServiceID" HeaderText="ServiceID" InsertVisible="False" ReadOnly="True" SortExpression="ServiceID" />
            <asp:BoundField DataField="ServiceName" HeaderText="Name" SortExpression="ServiceName" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:TemplateField HeaderText="Image" SortExpression="Image">
                <EditItemTemplate>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' Height="80px" Width="150px"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status" SortExpression="Status">
                <EditItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Category" SortExpression="CategoryName">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList5" runat="server">
                        <asp:ListItem Value="Bed">Bed</asp:ListItem>
                        <asp:ListItem Value="Chair">Chair</asp:ListItem>
                        <asp:ListItem Value="Machine">Machine</asp:ListItem>
                        <asp:ListItem Value="Other">Other</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("CategoryName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            <asp:BoundField DataField="LeftQuantity" HeaderText="LeftQuantity" SortExpression="LeftQuantity" />
            <asp:TemplateField HeaderText="Time" SortExpression="ServiceTime">
                <EditItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("ServiceTime") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("ServiceTime") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#06283D" Font-Bold="True" Font-Names="Times New Roman" Font-Size="17px" ForeColor="#DFF6FF" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <br /><br /><br /> 

    <%-- <br /><br /><br />
                <div class="divv">
                <asp:Label ID="adddlab" runat="server" Text="Requests" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="40px" ForeColor="#06283D"></asp:Label>
                </div>
                <br /><br /><br /><br />

    <div style="margin-left:44%">
    <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Font-Names="Times New Roman" Font-Size="17px" Width="15%">
         <asp:ListItem Value="Accept">Accept</asp:ListItem>
                        <asp:ListItem Value="Reject">Reject</asp:ListItem>
                        <asp:ListItem Value="wait">Wait</asp:ListItem>
                        <asp:ListItem Value="Finish">Finish</asp:ListItem>
</asp:DropDownList>
<asp:Button ID="Button2" runat="server" Text="Show" Width="7%" Height="30px" BackColor="#06283D" ForeColor="#DFF6FF"/></div>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" SelectCommand="SELECT * FROM [Orders] WHERE ([OrderStatus] = @OrderStatus)" DeleteCommand="DELETE FROM [Orders] WHERE [OrderID] = @OrderID" InsertCommand="INSERT INTO [Orders] ([ServiceID], [CustomerID], [OrderTime], [OrderStatus], [SerQuantity]) VALUES (@ServiceID, @CustomerID, @OrderTime, @OrderStatus, @SerQuantity)" UpdateCommand="UPDATE [Orders] SET  [OrderStatus] = @OrderStatus WHERE [OrderID] = @OrderID">
    <DeleteParameters>
        <asp:Parameter Name="OrderID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ServiceID" Type="Int32" />
        <asp:Parameter Name="CustomerID" Type="String" />
        <asp:Parameter Name="OrderTime" Type="DateTime" />
        <asp:Parameter Name="OrderStatus" Type="String" />
        <asp:Parameter Name="SerQuantity" Type="Int32" />
    </InsertParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="OrderStatus" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="ServiceID" Type="Int32" />
        <asp:Parameter Name="CustomerID" Type="String" />
        <asp:Parameter Name="OrderTime" Type="DateTime" />
        <asp:Parameter Name="OrderStatus" Type="String" />
        <asp:Parameter Name="SerQuantity" Type="Int32" />
        <asp:Parameter Name="OrderID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource2" EmptyDataText="No Data In This Feild" ForeColor="Black" HorizontalAlign="Center" CssClass="ordertable" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnRowUpdating="GridView2_RowUpdating">
        <AlternatingRowStyle HorizontalAlign="Center" BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
            <asp:TemplateField HeaderText="ServiceID" SortExpression="ServiceID">
                <EditItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("ServiceID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("ServiceID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CustomerID" SortExpression="CustomerID">
                <EditItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("CustomerID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("CustomerID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="OrderTime" SortExpression="OrderTime">
                <EditItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("OrderTime") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("OrderTime") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Order Status" SortExpression="OrderStatus">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("OrderStatus") %>'>
                        <asp:ListItem>Accept</asp:ListItem>
                        <asp:ListItem Value="wait">Wait</asp:ListItem>
                        <asp:ListItem>Reject</asp:ListItem>
                        <asp:ListItem>Finish</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("OrderStatus") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="SerQuantity" SortExpression="SerQuantity">
                <EditItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("SerQuantity") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("SerQuantity") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="#06283D" Font-Bold="True" ForeColor="#DFF6FF" HorizontalAlign="Center" VerticalAlign="Middle" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
    <br />--%>

</asp:Content>
