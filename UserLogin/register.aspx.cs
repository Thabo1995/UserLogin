using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserLogin
{
    public partial class register : System.Web.UI.Page
    {
        string conn = @"Data Source=DESKTOP-EN11BF6;Initial Catalog=UserLoginDB;Integrated Security=True;";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Clear();
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        { 
            if(txtFirstname.Text == "" || txtLastname.Text == "" || txtPasswrd.Text == "")
            {
                lblErrorMessage.Text = "Fill Mandatory Fields";
            }
            else if(txtPasswrd.Text != txtConfirmPasswrd.Text)
            {
                lblErrorMessage.Text = "Password Do not Match";
            }
            else { 
            using (SqlConnection sqlCon = new SqlConnection(conn))
            {
                sqlCon.Open();
                SqlCommand cmd = new SqlCommand("UserAddorEdit", sqlCon);
                cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@UserID", Convert.ToInt32(hfID.Value == "" ? "0" : hfID.Value));
                cmd.Parameters.AddWithValue("@FirstName", txtFirstname.Text.Trim());
                cmd.Parameters.AddWithValue("@LastName", txtLastname.Text.Trim());
                cmd.Parameters.AddWithValue ("@UserName", txtUsername.Text.Trim());
                cmd.Parameters.AddWithValue ("@Password", txtConfirmPasswrd.Text.Trim());
                cmd.ExecuteNonQuery();
                    Clear();
                lblSuccessMessage.Text = "Registered Successfully";
                Response.Redirect("login.aspx");
            }
            }
        }

        void Clear()
        {
            txtFirstname.Text = txtLastname.Text = txtConfirmPasswrd.Text = txtPasswrd.Text = "";
        }
    
    }
}
