<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        double amount, rate, discount;

        amount = Double.Parse(txtAmount.Text);
        rate = Double.Parse(txtRate.Text);
        discount = amount * rate / 100;
        lblDiscount.Text = discount.ToString(); 
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Discount Calculation</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Discount Calculation</h1>
        Amount <br />
        <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
        <p />
        Discount Rate <br />
        <asp:TextBox ID="txtRate" runat="server"></asp:TextBox>
        <p />
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate"
                  OnClick="btnCalculate_Click" />
        <p />
        <asp:Label ID="lblDiscount" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
