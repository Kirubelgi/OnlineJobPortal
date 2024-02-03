using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineJobPortal.User
{
    public partial class ResumeBuild : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader sdr;
        string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        string query;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            if (!IsPostBack)
            {
                if (Request.QueryString["id"]!= null)
                {
                    showUserInfo();
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }

        private void showUserInfo()
        {
            con = new SqlConnection(str);
            string query = "Select * from [User] where UserId=@userId";
            cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@userId", Request.QueryString("id"));
            con.Open();
            sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {

            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }
    }
}