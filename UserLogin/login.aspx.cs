using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserLogin
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-EN11BF6;Initial Catalog=UserLoginDB;Integrated Security=True;");
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            conn.Open();
            string check = "select count(*) from [Users] where Username " +
                "= '"+ txtUsername.Text +"' and Password = '"+ txtConfirmPasswrd.Text +"'";
            SqlCommand comm=new SqlCommand(check, conn);
            int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                Session["User"] = txtUsername.Text;
                Response.Redirect("home.aspx");
            }
            else
            {
                lblError.ForeColor = System.Drawing.Color.Red;
                lblError.Text = "Your Username or Password is Invalid";
            }
        }
    }
}
