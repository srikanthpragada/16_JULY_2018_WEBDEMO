<%@ Page Language="C#" %>
<%@ Import Namespace="System.IO" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnSend_Click(object sender, EventArgs e)
    {
        if (! FileUpload1.HasFile)
        {
            lblMessage.Text = "Please select a file to upload!";
            return;
        }

        // open file and take mobile numbers
        StreamReader reader = new StreamReader(FileUpload1.PostedFile.InputStream);
        while (true)
        {
            String line = reader.ReadLine();
            if (line == null)
                break;

            if (line.Trim().Length > 0)
                Response.Write(txtMessage.Text + " to " + line + "<br/>");
        }

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Send Message</h1>
    <form id="form1" runat="server">
     Message <br />
     <asp:TextBox ID="txtMessage" runat="server"></asp:TextBox>
     <p />
     Phone Numbers File<br />
     <asp:FileUpload ID="FileUpload1" runat="server" /> 
     <p />
     <asp:Button ID="btnSend" runat="server" Text="Send Message" OnClick="btnSend_Click" /> 
     <p />
      <asp:Label ID="lblMessage" EnableViewState="false" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
