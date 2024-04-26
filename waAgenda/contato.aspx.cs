using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waAgenda
{
    public partial class contato : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonInserir_Click(object sender, EventArgs e)
        {
            // capturar a string de conexao 
            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration(" /waAgendaRoot");
            System.Configuration.ConnectionStringSettings connString;
            connString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];

            // cria um objeto de conexao
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connString.ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Insert into contato (nome,email,telefone) values (@nome,@email,@telefone)";
            cmd.Parameters.AddWithValue("nome", TextBox2.Text);
            cmd.Parameters.AddWithValue("email", TextBox1.Text);
            cmd.Parameters.AddWithValue("telefone", TextBox3.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();






        }   
    }
}