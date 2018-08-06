<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdatePrice.aspx.cs" Inherits="UpdatePrice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h2>Change Price</h2>
    <form id="form1" runat="server">
       Product Id <br />
        <asp:TextBox ID="txtProdId" runat="server" TextMode="Number"></asp:TextBox>
        <p />
        New Price <br />
        <asp:TextBox ID="txtNewPrice" runat="server"  TextMode="Number"></asp:TextBox>
        <p />
        <asp:Button ID="btnChange" runat="server" Text="Change Price" OnClick="btnChange_Click" />
        <p />
        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
