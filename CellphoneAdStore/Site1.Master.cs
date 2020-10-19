using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellphoneAdStore
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(" "))
                {
                    LinkButton6.Visible = true; //admin login btton visibility

                    LinkButton3.Visible = false; //logout btton visibility
                    LinkButton11.Visible = false; //brand management btton visibility
                    LinkButton12.Visible = false; //model management visibility
                    LinkButton8.Visible = false; //addcell btton visibility
                    
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton6.Visible = false; //admin login btton visibility

                    LinkButton3.Visible = true; //logout btton visibility
                    LinkButton11.Visible = true; //brand management btton visibility
                    LinkButton12.Visible = true; //model management visibility
                    LinkButton8.Visible = true; //addcell btton visibility
                }
            }
            catch(Exception ex)
            {

            }

        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("phonebrand.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("phonemodel.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("cellphoneadd.aspx");
        }

        protected void LinkButton21_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");

        }

        protected void LinkButton22_Click(object sender, EventArgs e)
        {
            Response.Redirect("view_cellphones.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";


            LinkButton6.Visible = true; //admin login btton visibility

            LinkButton3.Visible = false; //logout btton visibility
            LinkButton11.Visible = false; //brand management btton visibility
            LinkButton12.Visible = false; //model management visibility
            LinkButton8.Visible = false; //addcell btton visibility

            Response.Redirect("index.aspx");
        }

        protected void LinkButton99_Click(object sender, EventArgs e)
        {
            Response.Redirect("view_cellphones.aspx");
        }
    }
}