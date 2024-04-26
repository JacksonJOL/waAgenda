using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waAgenda
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
        protected void ButtonEntrar_Click(object sender, EventArgs e)
        {

            String email = TextBoxEmail.Text;
            String senha = TextBoxSenha.Text;


            // capturar a string de conexao 
            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration(" /waAgendaRoot");
            System.Configuration.ConnectionStringSettings connString;
            connString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];


            using (SqlConnection conexao = new SqlConnection(connString.ToString()))
            using (SqlCommand comando = new SqlCommand("select * from usuario where email = @email and senha = @senha", conexao))
            {
                comando.Parameters.AddWithValue("email", email);
                comando.Parameters.AddWithValue("senha", senha);
                conexao.Open();

                using (SqlDataReader registro = comando.ExecuteReader())
                {
                    if (registro.HasRows)
                    {
                        LabelTelaLogin.Text = "Login efetuado!";
                    }
                    else
                    {
                        LabelTelaLogin.Text = "Login invalido!";
                    }
                }
            }

        }
    }
}