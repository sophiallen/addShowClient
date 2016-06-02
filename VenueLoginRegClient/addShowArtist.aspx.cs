using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addShowArtist : System.Web.UI.Page
{
    LoginRegSvcRef.VenueLoginRegServiceClient refClient = new LoginRegSvcRef.VenueLoginRegServiceClient();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void AddShowSubmit_Click(object sender, EventArgs e)
    {
        AddShow();
    }

    protected void AddShow()
    {
        LoginRegSvcRef.VenueLoginRegServiceClient svc = new LoginRegSvcRef.VenueLoginRegServiceClient();
        LoginRegSvcRef.Show newshow = new LoginRegSvcRef.Show();
        newshow.ShowName = ShowNameTextBox.Text;
        newshow.ShowDate = Convert.ToDateTime(ShowDateTextBox.Text);
        newshow.ShowTime = TimeSpan.Parse(ShowTimeTextBox.Text);
        newshow.ShowTicketInfo = TicketInfoTextBox.Text;
        newshow.VenueKey = Convert.ToInt32(Session["UserKey"]);

        bool result = refClient.AddShow(newshow);
        if (result)
        {
            AddShowFeedback.Text = "Show Successfully Added";
        }
        else
        {
            AddShowFeedback.Text = "An error occurred. Show may already exist.";
        }
    }

    protected void fillArtistDropDown()
    {

    }
}