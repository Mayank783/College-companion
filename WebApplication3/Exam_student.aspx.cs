using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

namespace WebApplication3
{
    public partial class Exam_student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //For gridview1
            DataTable paper_dt = new DataTable();
            paper_dt.Columns.Add("File");

            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Data/paper/")))
            {

                FileInfo fi = new FileInfo(strFile);
                paper_dt.Rows.Add(fi.Name);

            }
            GridView1.DataSource = paper_dt;
            GridView1.DataBind();
            //For gridview2

            DataTable result_dt = new DataTable();
            result_dt.Columns.Add("File");
            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Data/Result/")))
            {

                FileInfo fi = new FileInfo(strFile);
                result_dt.Rows.Add(fi.Name);

            }
            GridView2.DataSource = result_dt;
            GridView2.DataBind();
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Download")
            {
                Response.Clear();
                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);

                Response.TransmitFile(Server.MapPath("~/Data/paper/") + e.CommandArgument);
                Response.End();
            }
        }
        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Download")
            {
                Response.Clear();
                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);

                Response.TransmitFile(Server.MapPath("~/Data/Resut/") + e.CommandArgument);
                Response.End();
            }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}