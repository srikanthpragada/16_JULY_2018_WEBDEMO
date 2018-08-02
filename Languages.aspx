<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        int marks = 0;
        foreach (ListItem item in cblLanguages.Items)
            if (item.Selected)
                marks += Int32.Parse(item.Value);

        Response.Write("Marks = " + marks.ToString());
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Languages</h1>
        <asp:CheckBoxList ID="cblLanguages" runat="server">
            <asp:ListItem Value="10">Java</asp:ListItem>
            <asp:ListItem Value="9">Python</asp:ListItem>
            <asp:ListItem Value="11">C#</asp:ListItem>
            <asp:ListItem Value="6">JavaScript</asp:ListItem>
        </asp:CheckBoxList>
        <p />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    </form>
</body>
</html>
