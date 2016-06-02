using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VenueRegistration : System.Web.UI.Page
{

    protected void RegSubmitBtn_Click(object sender, EventArgs e)
    {
        RegisterVenue();
    }

    protected void RegisterVenue()
    {
        LoginRegSvcRef.VenueLoginRegServiceClient reg = new LoginRegSvcRef.VenueLoginRegServiceClient();
        LoginRegSvcRef.VenueUser ven = new LoginRegSvcRef.VenueUser();

        ven.VenueName = VenNameTextBox.Text;
        ven.VenueAddress = VenAddrsTextBox.Text;
        ven.VenueCity = VenCityTextBox.Text;
        ven.VenueState = VenStateTextBox.Text;
        ven.VenueZipCode = VenZipTextBox.Text;
        ven.VenuePhone = VenPhoneTextBox.Text;
        ven.VenueEmail = VenEmailTextBox.Text;       
        ven.VenueWebPage = VenWebpgTextBox.Text;

        //parse age restriction
        ven.VenueAgeRestriction = toNullableInt32(VenAgeRstTextBox.Text);

        ven.VenueUsername = VenEmailTextBox.Text;
        ven.VenuePassWord = VenPassTextBox.Text;

        bool result = reg.RegisterVenue(ven);
        if (result)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            RegrationErrorLabel.Text = "Registration Error";
        }

    }

    //found this function for parsing str to int? recommended on stack overflow. 
    public static int? toNullableInt32(string s)
    {
        int i;
        if (Int32.TryParse(s, out i)) return i;
        return null;
    }
}