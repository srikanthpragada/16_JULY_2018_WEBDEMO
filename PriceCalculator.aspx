<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        double amount = Double.Parse(ddlCourse.SelectedItem.Value);
        double material = 0;

        if (cbCourseMaterial.Checked)
            material = amount * 0.10;

        if (rbOffline.Checked && cbOldStudent.Checked)
            amount = amount * 0.90;

        amount += material;
        lblFee.Text = String.Format("Course Fee : {0}",amount.ToString("#####.00"));

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Course Fee Calculator</h1>
    <form id="form1" runat="server">
        Course : 
        <asp:DropDownList ID="ddlCourse" runat="server">
          <asp:ListItem Value="10000">Python Programming</asp:ListItem>          
          <asp:ListItem Value="12000">Java EE</asp:ListItem>          
          <asp:ListItem Value="3000">Angular</asp:ListItem>          
        </asp:DropDownList>
        <p />
        <asp:CheckBox ID="cbCourseMaterial" Text="Course Material" runat="server" />
        <p />
        <asp:RadioButton ID="rbOffline" runat="server"
            GroupName="mode" Checked="true"  Text="Offline"/>
        <asp:RadioButton ID="rbOnline" runat="server" GroupName="mode"  Text="Online"/>
        <p />
        <asp:CheckBox ID="cbOldStudent" Text="Old Student?" runat="server" />
        <p />
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
        <p />
        <asp:Label ID="lblFee" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
