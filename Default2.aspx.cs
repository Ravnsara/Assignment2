using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["People"] != null)
        {
            People p = (People)Session["People"];
            txtFirstName.Text = p.FirstName;
            txtLastName.Text = p.LastName;
            txtEmail.Text = p.Email;
            txtAddress.Text = p.Address;
            txtCity.Text = p.City;
            txtState.Text = p.State;
            txtZip.Text = p.Zip;
            txtPhone.Text = p.Phone;

        }
        else
        {
            Response.Redirect("Default.aspx");
        }   
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default3.aspx?first=" + txtFirstName.Text + "&last=" + txtLastName.Text);
    }
}

