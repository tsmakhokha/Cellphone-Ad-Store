using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace CellphoneAdStore
{
    public partial class cellphoneadd : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        static string global_filepath;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getbrand_modelValues();
            }

            GridView1.DataBind();
        }

        //add button
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CellphoneExists())
            {
                Response.Write("<script>alert('Cellphone ID Already Exists, Try different ID');</script>");
            }
            else
            {
                addNewCellphone();
            }
        }

        //update button
        protected void Button3_Click(object sender, EventArgs e)
        {
            updateCellphone();
        }

        //delete button
        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteCellphone();
        }
        // user defined functions

        void deleteCellphone()
        {
            if (CellphoneExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from cellphone_master_tbl WHERE cellphone_id='" + TextBox1.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Cellphone Deleted Successfully');</script>");

                    GridView1.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid Cellphone ID');</script>");
            }
        }

        void updateCellphone()
        {

            if (CellphoneExists())
            {
                try
                {

                    string specifications = "";
                    foreach (int i in ListBox1.GetSelectedIndices())
                    {
                        specifications = specifications + ListBox1.Items[i] + ",";
                    }
                    specifications = specifications.Remove(specifications.Length - 1);

                    string filepath = "~/cellphones";
                    string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    if (filename == "" || filename == null)
                    {
                        filepath = global_filepath;

                    }
                    else
                    {
                        FileUpload1.SaveAs(Server.MapPath("cellphones/" + filename));
                        filepath = "~/cellphones/" + filename;
                    }

                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE cellphone_master_tbl set cellphone_name=@cellphone_name, specifications=@specifications, brand_name=@brand_name, model_name=@model_name, release_date=@release_date, operating_system=@operating_system, color=@color, price=@price, camera_quality=@camera_quality, phone_description=@phone_description, cellphone_img_link=@cellphone_img_link where cellphone_id='" + TextBox1.Text.Trim() + "'", con);

                    cmd.Parameters.AddWithValue("@cellphone_name", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@specifications", specifications);
                    cmd.Parameters.AddWithValue("@brand_name", DropDownList3.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@model_name", DropDownList2.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@release_date", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@operating_system", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@color", TextBox9.Text.Trim());
                    cmd.Parameters.AddWithValue("@price", TextBox10.Text.Trim());
                    cmd.Parameters.AddWithValue("@camera_quality", TextBox11.Text.Trim());
                    cmd.Parameters.AddWithValue("@phone_description", TextBox6.Text.Trim());
                    
                    cmd.Parameters.AddWithValue("@cellphone_img_link", filepath);


                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Cellphone Updated Successfully');</script>");


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Phone ID');</script>");
            }
        }


        void getPhoneByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from cellphone_master_tbl WHERE cellphone_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0]["cellphone_name"].ToString();
                    TextBox3.Text = dt.Rows[0]["release_date"].ToString();
                    TextBox9.Text = dt.Rows[0]["color"].ToString();
                    TextBox10.Text = dt.Rows[0]["price"].ToString().Trim();
                    TextBox11.Text = dt.Rows[0]["camera_quality"].ToString().Trim();
                    
                    TextBox6.Text = dt.Rows[0]["phone_description"].ToString();
                    
                    DropDownList1.SelectedValue = dt.Rows[0]["operating_system"].ToString().Trim();
                    DropDownList2.SelectedValue = dt.Rows[0]["model_name"].ToString().Trim();
                    DropDownList3.SelectedValue = dt.Rows[0]["brand_name"].ToString().Trim();

                    ListBox1.ClearSelection();
                    string[] specifications = dt.Rows[0]["specifications"].ToString().Trim().Split(',');
                    for (int i = 0; i < specifications.Length; i++)
                    {
                        for (int j = 0; j < ListBox1.Items.Count; j++)
                        {
                            if (ListBox1.Items[j].ToString() == specifications[i])
                            {
                                ListBox1.Items[j].Selected = true;

                            }
                        }
                    }

                    global_filepath = dt.Rows[0]["cellphone_img_link"].ToString();

                }
                else
                {
                    Response.Write("<script>alert('Invalid Phone ID');</script>");
                }

            }
            catch (Exception ex)
            {

            }
        }

        void getbrand_modelValues()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT brand_name from brand_master_tbl;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DropDownList3.DataSource = dt;
                DropDownList3.DataValueField = "brand_name";
                DropDownList3.DataBind();

                cmd = new SqlCommand("SELECT model_name from model_master_table;", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                DropDownList2.DataSource = dt;
                DropDownList2.DataValueField = "model_name";
                DropDownList2.DataBind();

            }
            catch (Exception ex)
            {

            }
        }

        bool CellphoneExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from cellphone_master_tbl where cellphone_id='" + TextBox1.Text.Trim() + "' OR cellphone_name='" + TextBox2.Text.Trim() + "';", con);
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

        void addNewCellphone()
        {
            try
            {
                string specifications = "";
                foreach (int i in ListBox1.GetSelectedIndices())
                {
                    specifications = specifications + ListBox1.Items[i] + ",";
                }
                // genres = Adventure,Self Help,
                specifications = specifications.Remove(specifications.Length - 1);

                string filepath = "~/cellphone/cellicon.png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("cellphone/" + filename));
                filepath = "~/cellphone/" + filename;


                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO cellphone_master_tbl(cellphone_id,cellphone_name,specifications,brand_name,model_name,release_date,operating_system,color,price,camera_quality,phone_description,cellphone_img_link) values(@cellphone_id,@cellphone_name,@specifications,@brand_name,@model_name,@release_date,@operating_system,@color,@price,@camera_quality,@phone_description,@cellphone_img_link)", con);

                cmd.Parameters.AddWithValue("@cellphone_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@cellphone_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@specifications", specifications);
                cmd.Parameters.AddWithValue("@brand_name", DropDownList3.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@model_name", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@release_date", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@operating_system", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@color", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@price", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@camera_quality", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@phone_description", TextBox6.Text.Trim());

                cmd.Parameters.AddWithValue("@cellphone_img_link", filepath);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Cellphone added successfully.');</script>");
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }


    }
}