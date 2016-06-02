using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void SubmitBtn_Click(object sender, EventArgs e)
    {
        loginVenue();
    }

    protected void loginVenue()
    {
        LoginRegSvcRef.VenueLoginRegServiceClient lgn = new LoginRegSvcRef.VenueLoginRegServiceClient();
        int key = lgn.VenueLogin(VenueUsernameTextBox.Text, VenuePasswdTextBox.Text);
        if(key != 0) //zero indicates failure
        {
            LoginErrorLabel.Text = "Login Successful";
            Session["UserKey"] = key;
        }
        else
        {
            LoginErrorLabel.Text = "Error. Username and/or password invalid.";
        }

    }
}