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
        <asp:DataList   ID="DataList1" runat="server" DataSourceID="sdsProducts" RepeatLayout="Flow">
            <ItemTemplate>
                 <img src="images/<%# Eval("prodid") %>.jpg" />
                 <br />
                 <%# Eval("prodname") %>   -   <%# Eval("price") %> 
            </ItemTemplate>
            <SeparatorTemplate>
                <hr />
            </SeparatorTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="sdsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:localdb %>" SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>
    </form>
</body>
</html>
