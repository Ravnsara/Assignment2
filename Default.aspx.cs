using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        People p = new People();
        p.FirstName = txtFirstName.Text;
        p.LastName = txtLastName.Text;
        p.Email = txtEmail.Text;
        p.Address = txtAddress.Text;
        p.City = txtCity.Text;
        p.State = txtState.Text;
        p.Zip = txtZip.Text;
        p.Phone = txtPhone.Text;
        p.Password = txtPassword.Text;

        Session["People"] = p;
        Response.Redirect("Default2.aspx");
    }
}