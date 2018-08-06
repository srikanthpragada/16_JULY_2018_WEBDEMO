using System;
using System.Data.SqlClient;

public partial class ListProducts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(Database.LocalDbConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select prodname, price, qoh from products order by prodname", con);
        SqlDataReader reader = cmd.ExecuteReader();

        while( reader.Read())
        {
            double price = Double.Parse(reader["price"].ToString());
            int qoh =  (int) reader["qoh"];
            if (qoh > 5)
                price = price * 0.80;
            else
                price = price * 0.90;

            Response.Write(reader["prodname"] + " - " +  qoh + " -  " + price + "<p/>");
        }

        con.Close();
    }
}