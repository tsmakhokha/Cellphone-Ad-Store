using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellphoneAdStore
{
    public partial class phonemodel : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Add button
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkbrandexits())
            {
                Response.Write("<script>alert('Model with this ID already Exist. Use different ID');</script>");
            }
            else
            {
                addNewBrand();
            }
        }

        //update button
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkbrandexits())
            {
                updateBrand();

            }
            else
            {
                Response.Write("<script>alert('Model does not exist');</script>");
            }
        }

        //delete button
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkbrandexits())
            {
                deleteBrand();

            }
            else
            {
                Response.Write("<script>alert('Model does not exist');</script>");
            }
        }
    

    void deleteBrand()
    {
        try
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("DELETE from model_master_tbl WHERE model_id='" + TextBox1.Text.Trim() + "'", con);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Cellphone model Deleted Successfully');</script>");
            clearForm();
            GridView1.DataBind();

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }

    void updateBrand()
    {
        try
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("UPDATE model_master_tbl SET model_name=@model_name WHERE model_id='" + TextBox1.Text.Trim() + "'", con);

            cmd.Parameters.AddWithValue("@model_name", TextBox2.Text.Trim());

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Cellphone model Updated Successfully');</script>");
            clearForm();
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }


    void addNewBrand()
    {
        try
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("INSERT INTO model_master_tbl(model_id,model_name) values(@model_id,@model_name)", con);

            cmd.Parameters.AddWithValue("@model_id", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@model_name", TextBox2.Text.Trim());

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Cellphone model added Successfully');</script>");
            clearForm();
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
    }


    //checking if phone model already exits
    bool checkbrandexits()
    {
        try
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("SELECT * from model_master_tbl where model_id='" + TextBox1.Text.Trim() + "';", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count >= 1)
            {
                return true;
            }
            else
            {
                return false;
            }


        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "');</script>");
            return false;
        }
    }

    void clearForm()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}
}