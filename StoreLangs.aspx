<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        List<String> langs = (List<String>) Session["langs"];
        if (langs == null)  // session variable is not found, so create it 
        {
            langs = new List<String>();
        }
        langs.Add(txtName.Text);
        Session.Add("langs", langs);
    }

    protected void lbList_Click(object sender, EventArgs e)
    {
        List<String> langs = (List<String>) Session["langs"];
        foreach (String lang in langs)
            Response.Write(lang + "<br/>");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Languages</h2>
        Language
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
        <p />
        <p />
        <asp:LinkButton ID="lbList" runat="server" OnClick="lbList_Click">List Langs</asp:LinkButton>
        <p />
        <asp:Label ID="lblInfo" runat="server" Text="" EnableViewState="false"></asp:Label>
    </form>
</body>
</html>
