<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        HttpCookie c = new HttpCookie(txtName.Text, txtValue.Text);
        if (cbDurable.Checked)
            c.Expires = DateTime.Now.AddDays(7);  // durable 

        Response.Cookies.Add(c);
        lblInfo.Text = "Cookie Has Been Added!";
    }

    protected void lbList_Click(object sender, EventArgs e)
    {
        String cookies = "";
        foreach (String name in Request.Cookies)
        {
            HttpCookie c = Request.Cookies[name];
            cookies += c.Name + " - " + c.Value + "<br/>";
        }

        lblInfo.Text = cookies;
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        HttpCookie c = new HttpCookie(txtName.Text);
        c.Expires = new DateTime(2000, 1, 1);
        Response.Cookies.Add(c);
        lblInfo.Text = "Cookie Has Been Removed!";
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Trace.Write("Page Load!" + DateTime.Now.ToString());
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cookies Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Cookies Demo</h2>
        Cookie Name <br />
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <p />
        Cookie Value <br />
        <asp:TextBox ID="txtValue" runat="server"></asp:TextBox>
        <p />
        <asp:CheckBox ID="cbDurable" runat="server" Text="Durable" />
        <p />
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
        <p />
        <asp:LinkButton ID="lbList" runat="server" OnClick="lbList_Click">List Cookies</asp:LinkButton>
        <p />
        <asp:Label ID="lblInfo" runat="server" Text="" EnableViewState="false"></asp:Label>

    </form>
</body>
</html>
