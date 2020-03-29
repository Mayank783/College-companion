using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication3.Canteen
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            if (dt != null)
            {
                Label3.Text = dt.Rows.Count.ToString();
            }
            else
            {
                Label3.Text = "0";
            }
        }

       

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "addtocart")
            {
                DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
                Response.Redirect("cart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());
            }
        }
    }
}