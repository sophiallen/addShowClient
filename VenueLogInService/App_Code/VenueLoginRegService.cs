using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "VenueLoginRegService" in code, svc and config file together.
public class VenueLoginRegService : IVenueLoginRegService
{
    ShowTrackerEntities db = new ShowTrackerEntities();

    public bool AddArtist(Artist art)
    {
        Artist artist = new Artist();
        artist.ArtistName = art.ArtistName;
        artist.ArtistDateEntered = DateTime.Now;
        artist.ArtistEmail = art.ArtistEmail;
        artist.ArtistWebPage = art.ArtistWebPage;
        bool result = true;
        try
        {
            db.Artists.Add(artist);
            db.SaveChanges();
        }
        catch
        {
            result = false;
        }
        return result;
    }

    public bool AddShow(Show s)
    {
        Show show = new Show();
        show.ShowName = s.ShowName;
        show.ShowDate = s.ShowDate;
        show.ShowDateEntered = DateTime.Now;
        show.ShowTicketInfo = s.ShowTicketInfo;
        show.ShowTime = s.ShowTime;
        show.VenueKey = s.VenueKey;

        bool result = true;
        
        try
        {
            db.Shows.Add(show);
            db.SaveChanges();
        }
        catch
        {
            result = false;
        }

        return result;
    }

    public bool AddShowDetail(ShowDetail sd)
    {
        ShowDetail showdetail = new ShowDetail();
        showdetail.ArtistKey = sd.ArtistKey;
        showdetail.ShowKey = sd.ShowKey;
        showdetail.ShowDetailArtistStartTime = sd.ShowDetailArtistStartTime;

        bool result = true;

        try
        {
            db.ShowDetails.Add(showdetail);
            db.SaveChanges();
        }
        catch
        {
            result = false;
        }

        return result;

    }

    public bool RegisterVenue(VenueUser v)
    {
        bool result = true;

        int pass = db.usp_RegisterVenue(v.VenueName, v.VenueAddress, v.VenueCity, v.VenueState, v.VenueZipCode, v.VenuePhone, v.VenueEmail, v.VenueWebPage, v.VenueAgeRestriction, v.VenueUsername, v.VenuePassWord);
        if(pass == -1)
        {
            result = false;
        }

        return result;
    }

    public int VenueLogin(string userName, string password)
    {
        int venueKey = 0;
        int result = db.usp_venueLogin(userName, password);
        if(result != -1)
        {
            var key = (from v in db.VenueLogins
                       where v.VenueLoginUserName.Equals(userName)
                       select new {v.VenueLoginKey}).FirstOrDefault();

            venueKey = key.VenueLoginKey;
        }

        return venueKey;
    }

    public int GetArtistKey(string artistname)
    {
        var key = (from a in db.Artists
                   where a.ArtistName.Equals(artistname)
                   select new { a.ArtistKey }).FirstOrDefault();
        int artistkey = key.ArtistKey;
        return artistkey;
    }

    public int GetShowKey(string showname)
    {
        var key = (from sh in db.Shows
                   where sh.ShowName.Equals(showname)
                   select new { sh.ShowKey }).FirstOrDefault();
        int showkey = key.ShowKey;
        return showkey;

    }

}
