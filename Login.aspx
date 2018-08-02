<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Login</h1>
        Mobile Number <br />
        <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>*
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
            runat="server" 
            ControlToValidate="txtMobile"
            display="Dynamic"
            ErrorMessage="Please enter mobile number"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
            runat="server"
            ControlToValidate="txtMobile"
            ValidationExpression="\d*-?\d{10}"
            ErrorMessage="Mobile number must be 10 digits"></asp:RegularExpressionValidator>
        <p />
        Password <br />
        <asp:TextBox ID="txtPassword" runat="server" required="required" TextMode="Password"></asp:TextBox>*
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            runat="server" 
            ControlToValidate="txtPassword"
            ErrorMessage="Please enter password"></asp:RequiredFieldValidator>
        <p />
        <asp:Button ID="btnLogin" runat="server" Text="Login" />

    </form>
</body>
</html>
