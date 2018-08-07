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
        <h2>List Of Products</h2>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:localdb %>" 
            SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server"
            AutoGenerateColumns="False" 
            DataKeyNames="prodid" 
            DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" PageSize="5" Width="100%">
            <Columns>
                <asp:BoundField DataField="prodid" HeaderText="prodid" InsertVisible="False" ReadOnly="True" SortExpression="prodid" />
                <asp:BoundField DataField="prodname" HeaderText="prodname" SortExpression="prodname" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="qoh" HeaderText="qoh" SortExpression="qoh" />
                <asp:BoundField DataField="remarks" HeaderText="remarks" SortExpression="remarks" />
                <asp:BoundField DataField="catcode" HeaderText="catcode" SortExpression="catcode" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
