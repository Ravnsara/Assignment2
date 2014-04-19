using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string firstName = Request.QueryString["first"];
        string lastName = Request.QueryString["last"];
        lblConfirm.Text = "Thank you for registering, " + firstName + " " + lastName + ".";
    }
}