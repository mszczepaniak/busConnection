using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace DataBase
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = null;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView2.DataSource = SqlDataSource2;
            GridView2.DataBind();
            GridView1.DataSource = null;
            GridView1.DataBind();
        }
    }
}
