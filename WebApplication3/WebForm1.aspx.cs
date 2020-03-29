using System;
using System.Data.SqlClient;
using System.Web.Security;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       

        private bool ValidateUser(string userName, string passWord)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;
            SqlConnection conn;
            SqlCommand cmd;
            string lookupPassword = null;

            // Check for invalid userName.
            // userName must not be null and must be between 1 and 15 characters.
            if ((null == userName) || (0 == userName.Length) || (userName.Length > 15))
            {
                System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of userName failed.");
                return false;
            }

            // Check for invalid passWord.
            // passWord must not be null and must be between 1 and 25 characters.
            if ((null == passWord) || (0 == passWord.Length) || (passWord.Length > 25))
            {
                System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of passWord failed.");
                return false;
            }

            try
            {
                // Consult with your SQL Server administrator for an appropriate connection
                // string to use to connect to your local SQL Server.
                conn = new SqlConnection(cs);
                conn.Open();

                // Create SqlCommand to select pwd field from users table given supplied userName.
                cmd = new SqlCommand("Select password from users where id=@userName", conn);
                cmd.Parameters.Add("@userName", SqlDbType.VarChar, 25);
                cmd.Parameters["@userName"].Value = userName;

                // Execute command and fetch pwd field into lookupPassword string.
                lookupPassword = (string)cmd.ExecuteScalar();

                // Cleanup command and connection objects.
                cmd.Dispose();
                conn.Dispose();
            }
            catch (Exception ex)
            {

                // Add error handling here for debugging.
                // This error message should not be sent back to the caller.
                System.Diagnostics.Trace.WriteLine("[ValidateUser] Exception " + ex.Message);
            }

            // If no password found, return false.
            if (null == lookupPassword)
            {
                // You could write failed login attempts here to event log for additional security.
                return false;
            }

            // Compare lookupPassword and input passWord, using a case-sensitive comparison.
            return (0 == string.Compare(lookupPassword, passWord, false));

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ValidateUser(TextBox1.Text, TextBox2.Text))
                FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, chkPersistCookie.Checked);
            else
                Response.Redirect("~/Homepage.html", true);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = TextBox2.Text = "";
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            
            string cs = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;
            SqlConnection conn;
            SqlCommand cmd;
            SqlDataAdapter adapter = new SqlDataAdapter();

            // Check for invalid userName.
            // userName must not be null and must be between 1 and 15 characters.
            if (Page.IsValid)
            {

                try
                {
                    // string to use to connect to your local SQL Server.
                    conn = new SqlConnection(cs);
                    conn.Open();

                    // Create SqlCommand to select pwd field from users table given supplied userName.
                    cmd = new SqlCommand("Insert into userdetail(userName,passWord,course,enrollno) values(txt.Text,pwd.Text,course.Text,enrollno.Text)", conn);
                    cmd = new SqlCommand(cs, conn);
                    adapter.InsertCommand = new SqlCommand(cs, conn);
                    adapter.InsertCommand.ExecuteNonQuery();

                }
                catch (Exception ex)
                {

                    // Add error handling here for debugging.
                    // This error message should not be sent back to the caller.
                    System.Diagnostics.Trace.WriteLine("[AddUser] Exception " + ex.Message);
                }
            

        }
    }
    }
}