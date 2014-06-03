using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace DataBase
{
    public partial class Routes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewShowRoutes.DataSource = null;
            GridViewShowRoutes.DataBind();
        }

        protected void ButtonShowRoutes_Click(object sender, EventArgs e)
        {

        }

    }
}