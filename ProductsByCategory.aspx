<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       Select Category : 
        <asp:DropDownList ID="ddlCategory" runat="server" 
            DataSourceID="sdsCategories" 
            DataTextField="catdesc" 
            DataValueField="catcode"
            AutoPostBack="True"></asp:DropDownList>

        <asp:SqlDataSource ID="sdsCategories" runat="server"
            ConnectionString="<%$ ConnectionStrings:localdb %>" 
            SelectCommand="SELECT * FROM [categories]"></asp:SqlDataSource>
     <p />
        <asp:GridView ID="GridView1" runat="server" 
            width="100%"
            AutoGenerateColumns="False" DataKeyNames="prodid" DataSourceID="sdsProducts" EmptyDataText="Sorry! No Products Found!">
            <Columns>
                <asp:BoundField DataField="prodid" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="prodid" />
                <asp:BoundField DataField="prodname" HeaderText="Name" SortExpression="prodname" />
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                <asp:BoundField DataField="qoh" HeaderText="Quantity" SortExpression="qoh" />
                <asp:BoundField DataField="remarks" HeaderText="Remarks" SortExpression="remarks" />
                <asp:BoundField DataField="catcode" HeaderText="Category" SortExpression="catcode" />
                <asp:HyperLinkField DataNavigateUrlFields="prodid" DataNavigateUrlFormatString="sales.aspx?prodid={0}" Text="Sales" />
            </Columns>
            <EmptyDataRowStyle BackColor="Red" ForeColor="White" />
         </asp:GridView>

         <asp:SqlDataSource ID="sdsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:localdb %>" SelectCommand="SELECT * FROM [products] WHERE ([catcode] = @catcode)">
             <SelectParameters>
                 <asp:ControlParameter ControlID="ddlCategory" Name="catcode" PropertyName="SelectedValue" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>

    </form>
</body>
</html>
