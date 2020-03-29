using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

namespace WebApplication3
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //update gridview1
            updateExamfiles();
            //Update gridview2
            updateResultfiles();           

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Download")
            {
                Response.Clear();
                Response.ContentType="application/octet-stream";
                Response.AppendHeader("content-disposition", "filename=" +e.CommandArgument);
                
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);
            if (fileExtension != ".pdf")
            {
                Label1.Text = "Please upload pdf files only";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                if (FileUpload1.HasFile)
                {
                    string path;
                    string fileName = FileUpload1.FileName;
                    if (RadioButton1.Checked)
                    {
                        path = "~/Data/paper/";
                        updateExamfiles();
                    }
                    else
                    {
                        path = "~/Data/Result/";
                    }
                    FileUpload1.PostedFile.SaveAs(Server.MapPath(path) + FileUpload1.FileName);


                }
                else
                {
                    Label1.Text = "Please select a file";
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
            }
           
        }
        private string GetFileTypeByExtension(string extension)
        {
            String str=extension.ToLower();
            return str;
        }
        //For gridview2
        protected void updateExamfiles()
        {
            DataTable paper_dt = new DataTable();
            paper_dt.Columns.Add("File");

            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Data/paper/")))
            {
                FileInfo fi = new FileInfo(strFile);
                paper_dt.Rows.Add(fi.Name);
            }
            GridView1.DataSource = paper_dt;
            GridView1.DataBind();
        }
        //For gridview2
        protected void updateResultfiles()
        {
            
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

    }
}