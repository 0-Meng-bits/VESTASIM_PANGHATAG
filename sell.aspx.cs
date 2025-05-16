using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.VESTASIM
{
    public partial class Sell : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["ClientID"] != null)
                {
                    loginPanel.Visible = false;
                    logoutPanel.Visible = true;
                }
                else
                {
                    loginPanel.Visible = true;
                    logoutPanel.Visible = false;
                }
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string searchQuery = txtSearch.Text.Trim();

            // Get the connection string from Web.config
            string connectionString = ConfigurationManager.ConnectionStrings["YourConnectionString"].ConnectionString;

            StringBuilder resultsHtml = new StringBuilder(); // This will build the list of properties
            resultsHtml.Append("<label>Results:</label>");

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                string query = "SELECT Title FROM Properties WHERE PropertyType = @Type AND (Title LIKE @SearchQuery OR Description LIKE @SearchQuery)";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Type", "Sell"); // Change to "Sell" or "Rent" on respective pages
                cmd.Parameters.AddWithValue("@SearchQuery", "%" + searchQuery + "%");

                SqlDataReader reader = cmd.ExecuteReader();
                bool hasResults = false;

                while (reader.Read())
                {
                    string title = reader["Title"].ToString();
                    resultsHtml.AppendFormat("<div class='property-item'>{0}</div>", title); // Add each property as a div in the list
                    hasResults = true;
                }

                reader.Close();

                if (string.IsNullOrEmpty(searchQuery) || !hasResults)
                {
                    // No results or empty search: show "No results" and shrink
                    propertyResults.InnerHtml = "<div class='no-results-message'>No results</div>";
                    propertyResults.Attributes["class"] = "property-results-box visible no-results";
                }
                else
                {
                    // Results exist: populate and expand
                    propertyResults.InnerHtml = resultsHtml.ToString();
                    propertyResults.Attributes["class"] = "property-results-box visible";
                }
            }
        }

    }
}
