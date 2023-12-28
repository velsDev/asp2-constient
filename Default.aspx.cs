using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace asp2_constient
{
    public partial class _Default : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                grid();
            }

        }
        string constr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;  // Connection String Configuration 
        protected void Button1_Click(object sender, EventArgs e)   //INSERT BUTTON
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@state",TextBox1.Text);
            cmd.Parameters.AddWithValue("@city", TextBox2.Text);
            cmd.Parameters.AddWithValue("@pincode", TextBox3.Text);

            int i = cmd.ExecuteNonQuery();

            if (i > 0)
            {
                Response.Write("Inserted");
            }
            else
            {
                Response.Write("Not Inserted");
            }

            con.Close();
            grid();
        }

        void grid()   // Method for FETCH THE DATA IN GRID
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_fetch", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)    //STATES DROP DOWN Using AUTO POST BACK
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_s", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@searchdata",DropDownList1.SelectedValue);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }

   
      

        protected void Button4_Click(object sender, EventArgs e)    // FETCH ALL DATA
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_fetch", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }

      

        protected void Button6_Click(object sender, EventArgs e)   // DELETE 
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_delete", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", TextBox5.Text);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("Deleted");
            }

            else
            {
                Response.Write("not Deleted");
            }

            grid();
            con.Close();
        }

        protected void Button7_Click(object sender, EventArgs e)   //SEARCH 
        {

            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_search1", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@searchdata", TextBox6.Text);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                TextBox5.Text = reader["id"].ToString();
                TextBox1.Text = reader["state"].ToString();
                TextBox2.Text = reader["city"].ToString();
                TextBox3.Text = reader["pincode"].ToString();
            }

            searchFetch();
            con.Close();
        }


        void searchFetch()                                                     // SEARCH FETCH 
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_search1", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@searchdata", TextBox6.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind(); 
        }

        protected void Button8_Click(object sender, EventArgs e)              //UPDATE
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_update", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", TextBox5.Text);
            cmd.Parameters.AddWithValue("@state", TextBox1.Text);
            cmd.Parameters.AddWithValue("@city", TextBox2.Text);
            cmd.Parameters.AddWithValue("@pincode", TextBox3.Text);

            int i = cmd.ExecuteNonQuery();

            if (i > 0)
            {
                Response.Write("Updated");
            }

            else
            {
                Response.Write("Not Updated");
            }

            updateFetch();
            con.Close();
        }

        void updateFetch()        //UPDATE FETCH
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_updatefetch", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", TextBox5.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();    
        }














    }
}