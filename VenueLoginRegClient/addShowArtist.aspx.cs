using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addShowArtist : System.Web.UI.Page
{
    LoginRegSvcRef.VenueLoginRegServiceClient refClient = new LoginRegSvcRef.VenueLoginRegServiceClient();
    SelectServiceRef.ShowTrackerServiceClient selectsvc = new SelectServiceRef.ShowTrackerServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        fillArtistDropDown();
        fillShowDropDown();
    }

    protected void AddShowSubmit_Click(object sender, EventArgs e)
    {
        AddShow();
    }

    protected void AddShow()
    {
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
        string[] artists = selectsvc.GetArtists();
        ArtistDropDownList.DataSource = artists;
        ArtistDropDownList.DataBind();
    }

    protected void fillShowDropDown()
    {
        string[] showlist = selectsvc.GetShows();
        ShowDropDownList.DataSource = showlist;
        ShowDropDownList.DataBind();
    }

    protected void ArtistSubmitBtn_Click(object sender, EventArgs e)
    {
        AddArtist();
    }

    protected void AddArtist()
    {
        LoginRegSvcRef.Artist newArtist = new LoginRegSvcRef.Artist();
        newArtist.ArtistName = ArtistNameTextBox.Text;
        newArtist.ArtistEmail = ArtistEmailTextBox.Text;
        newArtist.ArtistWebPage = ArtistWebsiteTextBox.Text;
        bool result = refClient.AddArtist(newArtist);
        if (result)
        {
            AddArtistFeedback.Text = "Artist successfully added.";
        }
        else
        {
            AddArtistFeedback.Text = "Sorry, an error occurred.";
        }
    }

    protected void AddShowDetailBtn_Click(object sender, EventArgs e)
    {
        AddNewShowDetail();
    }

    protected void AddNewShowDetail()
    {
        LoginRegSvcRef.ShowDetail newShowDet = new LoginRegSvcRef.ShowDetail();
        newShowDet.ArtistKey = refClient.GetArtistKey(ArtistDropDownList.SelectedValue);
        newShowDet.ShowKey = refClient.GetShowKey(ShowDropDownList.SelectedValue);
        newShowDet.ShowDetailArtistStartTime = TimeSpan.Parse(ShowDetailStartTimeTextBox.Text);

        bool success = refClient.AddShowDetail(newShowDet);
        if (success)
        {
            AddShowDetFeedback.Text = "Show details successfully added.";
        }
        else
        {
            AddShowDetFeedback.Text = "Error, details could not be added.";
        }

    }
}