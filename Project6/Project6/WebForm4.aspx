<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="Project6.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%-- <div style="width:100%">
        <br /><br />
                <div class="divv">
                <asp:Label ID="Label3" runat="server" Text="Waiting Orders" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="40px" ForeColor="#06283D"></asp:Label>
                </div>
                <br /><br /><br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" SelectCommand="SELECT Orders.ServiceID, Orders.OrderID, Orders.SerQuantity, AspNetUsers.UserName, AspNetUsers.City, Services.Image, Services.ServiceName, Services.LeftQuantity FROM Orders INNER JOIN AspNetUsers ON AspNetUsers.Id = Orders.CustomerID AND Orders.OrderStatus = 'wait' INNER JOIN Services ON Orders.ServiceID = Services.ServiceID AND Orders.SerQuantity &lt;= Services.LeftQuantity"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand" DataKeyNames="OrderID" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="80%" style="margin-left:10%" EmptyDataText="No Data Found " HorizontalAlign="Center" AllowPaging="True">
            <AlternatingRowStyle BackColor="#DCDCDC" HorizontalAlign="Center" VerticalAlign="Middle" />
            <Columns>
                <asp:BoundField DataField="ServiceID" HeaderText="ID" SortExpression="ServiceID" />
                <asp:BoundField DataField="OrderID" HeaderText="Order#" SortExpression="OrderID" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="SerQuantity" HeaderText="Quantity" SortExpression="SerQuantity" />
                <asp:BoundField DataField="UserName" HeaderText="Name" SortExpression="UserName" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:TemplateField HeaderText="Image" SortExpression="Image">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' Height="80px" Width="100px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ServiceName" HeaderText="Service" SortExpression="ServiceName" />
                <asp:BoundField DataField="LeftQuantity" HeaderText="LeftQuan" SortExpression="LeftQuantity" />
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="OrderAccept" Text="Accept" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"></asp:LinkButton>
                    </ItemTemplate>
                    <ControlStyle BackColor="#00CC00" Font-Names="Times New Roman" Font-Size="17px" ForeColor="White" Height="30px" Width="70px" />
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="false" CommandName="OrderReject" Text="Reject" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"></asp:LinkButton>
                    </ItemTemplate>
                    <ControlStyle BackColor="#FF3300" Font-Names="Times New Roman" Font-Size="17px" ForeColor="White" Height="30px" Width="70px" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#06283D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" SelectCommand="SELECT Orders.ServiceID, Orders.OrderID, Orders.SerQuantity, AspNetUsers.UserName, AspNetUsers.City, Services.Image, Services.ServiceName, Services.LeftQuantity FROM Orders INNER JOIN AspNetUsers ON AspNetUsers.Id = Orders.CustomerID AND Orders.OrderStatus = 'Accept' INNER JOIN Services ON Orders.ServiceID = Services.ServiceID"></asp:SqlDataSource>
        <br />
        <br />
          <br /><br />
                <div class="divv">
                <asp:Label ID="Label1" runat="server" Text="Orders" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" Font-Size="40px" ForeColor="#06283D"></asp:Label>
                </div>
                <br /><br /><br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" OnRowCommand="GridView1_RowCommand" DataKeyNames="OrderID" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="80%" style="margin-left:10%" EmptyDataText="No Data Found " HorizontalAlign="Center" AllowPaging="True">
            <AlternatingRowStyle BackColor="#DCDCDC" HorizontalAlign="Center" VerticalAlign="Middle" />
            <Columns>
                <asp:BoundField DataField="ServiceID" HeaderText="ID" SortExpression="ServiceID" />
                <asp:BoundField DataField="OrderID" HeaderText="Order#" SortExpression="OrderID" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="SerQuantity" HeaderText="Quantity" SortExpression="SerQuantity" />
                <asp:BoundField DataField="UserName" HeaderText="Name" SortExpression="UserName" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:TemplateField HeaderText="Image" SortExpression="Image">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' Height="80px" Width="100px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ServiceName" HeaderText="Service" SortExpression="ServiceName" />
                <asp:BoundField DataField="LeftQuantity" HeaderText="LeftQuan" SortExpression="LeftQuantity" />
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="FinishOrder" Text="Finish" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"></asp:LinkButton>
                    </ItemTemplate>
                    <ControlStyle BackColor="#00CC00" Font-Names="Times New Roman" Font-Size="17px" ForeColor="White" Height="30px" Width="70px" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#06283D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        </div>--%>


    <br />
    <br />
  <%--  <asp:DropDownList ID="DropDownList1" runat="server" >
        
    </asp:DropDownList>
    <br />--%>
    <br />
 
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" SelectCommand="SELECT * FROM [Orders] WHERE ([OrderStatus] LIKE '%' + @OrderStatus + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="OrderStatus" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <asp:TextBox ID="TextBox1" runat="server" Width="213px"></asp:TextBox>
 
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
            <asp:BoundField DataField="ServiceID" HeaderText="ServiceID" SortExpression="ServiceID" />
            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
            <asp:BoundField DataField="OrderTime" HeaderText="OrderTime" SortExpression="OrderTime" />
            <asp:BoundField DataField="OrderStatus" HeaderText="OrderStatus" SortExpression="OrderStatus" />
            <asp:BoundField DataField="SerQuantity" HeaderText="SerQuantity" SortExpression="SerQuantity" />
        </Columns>
    </asp:GridView>
    <asp:DropDownList ID="DropDownList1" runat="server" Height="19px">
         <asp:ListItem Value="Accept">Accept</asp:ListItem>
                        <asp:ListItem Value="Reject">Reject</asp:ListItem>
                        <asp:ListItem Value="wait">Wait</asp:ListItem>
                        <asp:ListItem Value="Finish">Finish</asp:ListItem>
</asp:DropDownList>
<asp:Button ID="Button2" runat="server" Text="Button" />
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Project6ConnectionString %>" SelectCommand="SELECT * FROM [Orders] WHERE ([OrderStatus] = @OrderStatus)" DeleteCommand="DELETE FROM [Orders] WHERE [OrderID] = @OrderID" InsertCommand="INSERT INTO [Orders] ([ServiceID], [CustomerID], [OrderTime], [OrderStatus], [SerQuantity]) VALUES (@ServiceID, @CustomerID, @OrderTime, @OrderStatus, @SerQuantity)" UpdateCommand="UPDATE [Orders] SET [ServiceID] = @ServiceID, [CustomerID] = @CustomerID, [OrderTime] = @OrderTime, [OrderStatus] = @OrderStatus, [SerQuantity] = @SerQuantity WHERE [OrderID] = @OrderID">
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
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
            <asp:BoundField DataField="ServiceID" HeaderText="ServiceID" SortExpression="ServiceID" />
            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
            <asp:BoundField DataField="OrderTime" HeaderText="OrderTime" SortExpression="OrderTime" />
            <asp:TemplateField HeaderText="OrderStatus" SortExpression="OrderStatus">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("OrderStatus") %>'>
                        <asp:ListItem>Accept</asp:ListItem>
                        <asp:ListItem>Reject</asp:ListItem>
                        <asp:ListItem Value="wait">Wait</asp:ListItem>
                        <asp:ListItem>Finish</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("OrderStatus") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="SerQuantity" HeaderText="SerQuantity" SortExpression="SerQuantity" />
        </Columns>
</asp:GridView>
    <br />


</asp:Content>
<%--CommandArgument="<%# ((GridViewRow) Container).RowIndex %>--%>