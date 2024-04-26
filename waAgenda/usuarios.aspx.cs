using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waAgenda
{
    public partial class usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSourceUsuarios_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSourceUsuarios_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
            if(e.Exception !=null)
            {
                LabelUsuarios.Text = "Você esta tentando inserir um novo registro invalido ou com campo em branco, verifique!";
                e.ExceptionHandled = true;
            }
        }

        protected void SqlDataSourceUsuarios_Updated(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                LabelUsuarios.Text = "Você esta tentando alterar  um registro campo em branco ou invalido, verifique!";
                e.ExceptionHandled = true;
            }
        }
    }
}