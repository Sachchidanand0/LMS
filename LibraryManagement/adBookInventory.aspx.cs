using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class adBookInventory : System.Web.UI.Page
{
    String database = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

    static string glob_filepath;
    static int  glob_actual_stock, glob_current_stock, glob_issued_book;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getauthorpublisher();

            drecord();
        }
        

    }

    protected void adduser_Click(object sender, EventArgs e)
    {
        if (bookcheck())
        {
            //Response.Write("<script> alert('Book ID Already exists');</script>");
            ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "SweetAlert", "swal('Alert!', 'Book ID Already Exist!', 'error');", true);
        }
        else
        {
            addnewbooks();
            
        }
    }

    protected void updte_Click(object sender, EventArgs e)
    {
        if (bookcheck())
        {
            updatebook();
          
        }
        else
        {
            //Response.Write("<script> alert( 'book dose not exist');</script>");
            ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "SweetAlert", "swal('Alert!', 'Book Dose Not Exist!', 'error');", true);
        }
       
    }

    protected void delete_Click(object sender, EventArgs e)
    {
        deletebook();
        
    }

    protected void go_Click(object sender, EventArgs e)
    {
        if (bookcheck())
        {
            gosearch();
        }
        else
        {
            Response.Write("<script> alert('ID dose not exist');</script>");

        }

        
        
    }


    // User Defind functions Are Here



    void addnewbooks()
    {
        try
        {
            //start genre multiline  selection to save database 
            string genre = "";
            foreach(int i in txtgenre.GetSelectedIndices())
            {
                genre = genre + txtgenre.Items[i]+",";
            }
            genre = genre.Remove(genre.Length - 1);
            //end the work
            //start image to store in the database
            string filepath = "~/LibraryManagement/book_inventory/booklogo.png";
            string filename = Path.GetFileName(file.PostedFile.FileName);
            file.SaveAs(Server.MapPath("book_inventory/" + filename));
            filepath = "~/LibraryManagement/book_inventory/" + filename;
            

            //end the work
            SqlConnection con = new SqlConnection(database);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Insert into  book_master( book_id,book_name,genre ,author_name ,publisher_name ,publish_date ,language ,edition ,book_cost ,no_of_pages,book_description,actual_stock ,current_stock ,book_img_link) values('" + txtbid.Text.Trim() + "','" + txtbn.Text.Trim() + "','" + genre.Trim() + "','" + txtan.Text.Trim() + "','" + txtpn.Text.Trim() + "',  '" + top.conv_date(txtpd.Text.Trim()) + "','" + txtlan.Text.Trim() + "','" + txted.Text.Trim() + "','" + txtbc.Text.Trim() + "','" + txtpage.Text.Trim() + "','" + txtread.Text.Trim() + "','" + txtas.Text.Trim() + "','" + txtas.Text.Trim() + "','"+filepath+"')";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();
            drecord();
            ScriptManager.RegisterClientScriptBlock((Header as Control), this.GetType(), "SweetAlert", "swal('Good job!', 'Book Added Successfully !', 'success');", true);


        }
        catch(Exception ex)
        {
             Response.Write("<script> alert('"+ex.Message+"');</script>");
    
        }
    }

    void getauthorpublisher()
    {
        try
        {
            SqlConnection con = new SqlConnection(database);
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.CommandText = "select author_name from author_master";
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                txtan.Items.Add(dr["author_name"].ToString());
            }


            cmd = new SqlCommand();
            cmd.CommandText = "select publisher_name from publisher_master";
            cmd.Connection = con;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                txtpn.Items.Add(dr["publisher_name"].ToString());
            }


            con.Close();
            cmd.Dispose();
            da.Dispose();
        }
        catch (Exception)
        {

        }

    }
    bool bookcheck()
    {
        SqlConnection con = new SqlConnection(database);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Select * from book_master where book_id='" + txtbid.Text.Trim() + "' or book_name='"+txtbn.Text.Trim()+"'";
        cmd.Connection = con;
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
        con.Close();
        cmd.Dispose();
       
    }

    void drecord()
    {
        SqlConnection con = new SqlConnection(database);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select book_id,book_name,genre ,author_name ,publisher_name ,convert(varchar,publish_date,103) as[publish_date],language ,edition ,book_cost ,no_of_pages,book_description,actual_stock ,current_stock ,book_img_link from book_master";
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        datagrid.DataSource = dt;
        datagrid.DataBind();
        con.Close();
        cmd.Dispose();
        da.Dispose();

    }

    void gosearch()
    {
        try
        {
            SqlConnection con = new SqlConnection(database);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select * from book_master where book_id='"+txtbid.Text.Trim()+"'";
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                

                txtbn.Text = dr["book_name"].ToString();
                txtan.SelectedValue = dr["author_name"].ToString();
                txtpn.SelectedValue = dr["publisher_name"].ToString();
                txtpd.Text= Convert.ToDateTime(dr["publish_date"].ToString()).Day.ToString().PadLeft(2, '0') + "/" + Convert.ToDateTime(dr["publish_date"].ToString()).Month.ToString().PadLeft(2, '0') + "/" + Convert.ToDateTime(dr["publish_date"].ToString()).Year;
                txtlan.SelectedValue = dr["language"].ToString();

                txted.Text= dr["edition"].ToString();
                txtbc.Text= dr["book_cost"].ToString();
                txtpage.Text= dr["no_of_pages"].ToString();
               txtread.Text= dr["book_description"].ToString();
                txtas.Text= dr["actual_stock"].ToString();
                txtcs.Text= dr["current_stock"].ToString();

                txtib.Text = (Convert.ToInt32(dr["actual_stock"].ToString()) - Convert.ToInt32 (dr["current_stock"].ToString())).ToString();

                txtgenre.ClearSelection();
                string[] genre = dr["genre"].ToString().Split(',');
                for(int i = 0; i < genre.Length; i++)
                {
                    for(int j = 0; j < txtgenre.Items.Count; j++)
                    {
                        if (txtgenre.Items[j].ToString() == genre[i])
                        {
                            txtgenre.Items[j].Selected = true;
                        }
                    }
                }

                glob_actual_stock = Convert.ToInt32(dr["actual_stock"].ToString());
                glob_current_stock = Convert.ToInt32(dr["current_stock"].ToString());
                glob_issued_book = glob_actual_stock - glob_current_stock;
                glob_filepath = dr["book_img_link"].ToString();

            }
            con.Close();
            cmd.Dispose();
            da.Dispose();
        }
        catch(Exception ex)
        {
            Response.Write("<script> alert('" + ex.Message + "');</script>");
        }
    }
    void updatebook()
    {
        
        
            try
            {

                int actual_stock = Convert.ToInt32(txtas.Text.Trim());
                int current_stock = Convert.ToInt32(txtcs.Text.Trim());

                if (actual_stock == glob_actual_stock)
                {

                }else if (actual_stock < glob_issued_book)
                {
                    Response.Write("<script> alert( Actual Stock value cannot be less then the lssued books);</script>");
                }
                else
                {
                    current_stock = actual_stock - glob_issued_book;
                    txtcs.Text = "" + current_stock;
                }
                //start genre multiline  selection to save database 
                string genre = "";
                foreach (int i in txtgenre.GetSelectedIndices())
                {
                    genre = genre + txtgenre.Items[i] + ",";
                }
                genre = genre.Remove(genre.Length - 1);
                //end the work

                //start image to store in the database
                string filepath = "~/book_inventory/booklogo.png";
                String filename = Path.GetFileName(file.PostedFile.FileName);
                if(filename == "" || filename == null)
                {
                    filepath = glob_filepath;
                }
                else
                {
                    file.SaveAs(Server.MapPath("book_inventory/" + filename));
                    filepath = "~/book_inventory/" + filename;
                }
               

                //end the work
                SqlConnection con = new SqlConnection(database);
                con.Open();
                SqlCommand cmd = new SqlCommand();


                cmd.CommandText = "update book_master set book_name='" + txtbn.Text.Trim() + "',genre='" + genre.Trim() + "',author_name='" + txtan.SelectedItem.Value.Trim() + "',publisher_name='" + txtpn.SelectedItem.Value.Trim() + "',publish_date='" + top.conv_date(txtpd.Text.Trim()) + "',language='" + txtlan.SelectedItem.Value.Trim() + "',edition='" + txted.Text.Trim() + "',book_cost='" + txtbc.Text.Trim() + "',no_of_pages='" + txtpage.Text.Trim() + "',book_description='" + txtread.Text.Trim() + "',actual_stock='" + actual_stock + "',current_stock='" + current_stock + "',book_img_link='" + filepath + "' where book_id ='"+txtbid.Text+"'";
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
               
                con.Close();
                cmd.Dispose();
               
                drecord();
            ScriptManager.RegisterClientScriptBlock((Header as Control), this.GetType(), "SweetAlert", "swal('Good job!', 'Book Updated Successfully !', 'success');", true);
        }
            catch (Exception)
            {

            }

        
        
       
    }
    void deletebook()
    {
        if (bookcheck())
        {
            try
            {

                SqlConnection con = new SqlConnection(database);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "delete from book_master where book_id='" + txtbid.Text.Trim() + "'";
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                con.Close();
                cmd.Dispose();
                drecord();
                ScriptManager.RegisterClientScriptBlock((Header as Control), this.GetType(), "SweetAlert", "swal('Good job!', 'Book Deleted Successfully !', 'success');", true);
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "');</script>");
            }
        }
        else
        {
            
            ScriptManager.RegisterClientScriptBlock((Header as Control), this.GetType(), "SweetAlert", "swal('Alert!', 'Book Dose Not Exist!', 'error');", true);


        }
    }
}