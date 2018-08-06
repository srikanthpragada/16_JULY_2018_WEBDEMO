using System;
using System.Data.SqlClient;

public partial class UpdatePrice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnChange_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection
            (@"Data Source=(localdb)\mssqllocaldb;Integrated Security=True;initial catalog=msdb");
        con.Open();
        try
        {
            SqlCommand cmd = new SqlCommand("update products set price=@price where prodid = @prodid", con);
            cmd.Parameters.AddWithValue("@prodid", txtProdId.Text);
            cmd.Parameters.AddWithValue("@price", txtNewPrice.Text);
            int cnt = cmd.ExecuteNonQuery();  // returns no. of rows updated 

            if (cnt == 1)
                lblMessage.Text = "Updated Successfully!";
            else
                lblMessage.Text = "Sorry! Could not find product id!";
        }
        catch(Exception ex)
        {
            lblMessage.Text = "Sorry! Could not update price due to data error!";
        }

        con.Close();
    }
}