﻿<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        Application.Add("count", 0);

    }

    void Application_End(object sender, EventArgs e)
    {


    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        int count = (int) Application["count"];
        Application["count"] = count + 1;

    }

    void Session_End(object sender, EventArgs e)
    {
        int count = Int32.Parse(Application["count"].ToString());
        Application["count"] = count - 1;

    }

</script>
