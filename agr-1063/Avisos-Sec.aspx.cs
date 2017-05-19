using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace agr_1063
{
    public partial class Avisos_Sec : System.Web.UI.Page
    {
        BaseDados bd = new BaseDados();
        int sec;
        int i = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            sec = int.Parse(Session["sec"].ToString());
            CarregarNoticias();

            HtmlControl masterPageBody = (HtmlControl)Master.FindControl("Body");
            masterPageBody.Style.Remove("background-image");
            masterPageBody.Style.Add("background-image", "/img/" + sec + ".jpg");
        }

        protected void CarregarNoticias()
        {
            DataTable dados = bd.DevolveConsulta("SELECT * FROM Avisos WHERE Sec = " + sec + " ORDER BY idAviso DESC");

            if (dados == null) return;

            foreach (DataRow linha in dados.Rows)
            {
                linha[1] = Server.HtmlDecode(linha[1].ToString());
                linha[2] = Server.HtmlDecode(linha[2].ToString());
            }

            try
            {
                Image1.ImageUrl = "~/imagens/" + 1 + ".jpg";
                Label1.Text = dados.Rows[i][1].ToString();
                //Label2.Text = dados.Rows[i][2].ToString();
                paragraph.InnerText = dados.Rows[i][2].ToString(); //"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam bibendum non lacus id malesuada. Nam pharetra, risus vel mattis vehicula, lacus mauris rhoncus turpis, tempor dictum nibh sapien et magna. Nullam at eleifend libero. Aenean ultrices nunc ac eleifend scelerisque. Cras tempus id dui id aliquam. Ut non mauris lacinia, tempus augue ut, interdum sem. Morbi vel massa aliquam, consectetur ex vitae, dictum ante. Ut diam felis, tempor eu lectus eu, pharetra laoreet purus.Nam semper nunc quis dapibus viverra. Donec finibus vel lacus in aliquam.Nulla facilisi. Proin congue pellentesque euismod. Curabitur scelerisque sapien sollicitudin congue pellentesque. Vestibulum sit amet convallis neque, id maximus tellus.Mauris nisl dolor, consequat non massa a, porta facilisis diam. Vestibulum vel tincidunt nisi.Vestibulum sagittis in orci cursus sagittis.Ut vitae consequat arcu, in egestas arcu. Nullam eu condimentum libero. In ullamcorper odio viverra turpis tincidunt, id luctus ante posuere.Pellentesque tincidunt ultricies ex at accumsan. Aenean sagittis felis non dui pulvinar venenatis.Suspendisse id lacus varius erat malesuada pellentesque.Sed volutpat erat fringilla ipsum placerat, a laoreet magna maximus.Fusce in ligula ut augue maximus sodales.In hac habitasse platea dictumst.Morbi sed elit sed nisl tincidunt tempor.Integer sed cursus magna. Duis semper magna sit amet dui volutpat, et ultricies eros convallis. Integer sit amet sapien odio.Nulla lacus lacus, mollis in tortor eu, scelerisque tincidunt neque. Praesent volutpat eu lorem ac tincidunt.Vestibulum luctus mauris enim, vitae tempus dui venenatis volutpat. Integer quis semper nulla, nec accumsan est. Vestibulum vel magna elementum, condimentum neque ac, bibendum purus.Aenean fringilla molestie rutrum. Mauris porttitor aliquet erat, nec interdum nisi efficitur sit amet.Donec finibus imperdiet risus consequat facilisis. Nulla facilisi. Maecenas in vulputate lorem. Quisque consequat sit amet eros eu sollicitudin.Ut vulputate ullamcorper venenatis.Nullam congue turpis odio, at mattis leo finibus a. Donec porttitor tellus at pellentesque maximus. Donec molestie condimentum hendrerit. Ut elit purus, ultrices volutpat posuere sed, consequat non risus. Donec massa nunc, venenatis in finibus id, convallis eget elit. Duis aliquam rhoncus lacus id aliquet. Nunc viverra quis mauris aliquet vehicula.Proin auctor suscipit condimentum. Donec a lectus vehicula, iaculis purus nec, tristique lacus.Aenean consequat velit lorem, in pulvinar sem vulputate sed. Praesent tincidunt vestibulum nisl. Vestibulum nunc tortor, semper nec urna quis, feugiat aliquam elit. Suspendisse pharetra nisl lobortis quam congue ultricies.Quisque mauris nisi, aliquet nec porttitor condimentum, sollicitudin nec arcu.";
                Label5.Text = dados.Rows[i][3].ToString();

                //Label3.Text = dados.Rows[i][1].ToString();
                //Label4.Text = dados.Rows[i][2].ToString(); //"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam bibendum non lacus id malesuada. Nam pharetra, risus vel mattis vehicula, lacus mauris rhoncus turpis, tempor dictum nibh sapien et magna. Nullam at eleifend libero. Aenean ultrices nunc ac eleifend scelerisque. Cras tempus id dui id aliquam. Ut non mauris lacinia, tempus augue ut, interdum sem. Morbi vel massa aliquam, consectetur ex vitae, dictum ante. Ut diam felis, tempor eu lectus eu, pharetra laoreet purus.Nam semper nunc quis dapibus viverra. Donec finibus vel lacus in aliquam.Nulla facilisi. Proin congue pellentesque euismod. Curabitur scelerisque sapien sollicitudin congue pellentesque. Vestibulum sit amet convallis neque, id maximus tellus.Mauris nisl dolor, consequat non massa a, porta facilisis diam. Vestibulum vel tincidunt nisi.Vestibulum sagittis in orci cursus sagittis.Ut vitae consequat arcu, in egestas arcu. Nullam eu condimentum libero. In ullamcorper odio viverra turpis tincidunt, id luctus ante posuere.Pellentesque tincidunt ultricies ex at accumsan. Aenean sagittis felis non dui pulvinar venenatis.Suspendisse id lacus varius erat malesuada pellentesque.Sed volutpat erat fringilla ipsum placerat, a laoreet magna maximus.Fusce in ligula ut augue maximus sodales.In hac habitasse platea dictumst.Morbi sed elit sed nisl tincidunt tempor.Integer sed cursus magna. Duis semper magna sit amet dui volutpat, et ultricies eros convallis. Integer sit amet sapien odio.Nulla lacus lacus, mollis in tortor eu, scelerisque tincidunt neque. Praesent volutpat eu lorem ac tincidunt.Vestibulum luctus mauris enim, vitae tempus dui venenatis volutpat. Integer quis semper nulla, nec accumsan est. Vestibulum vel magna elementum, condimentum neque ac, bibendum purus.Aenean fringilla molestie rutrum. Mauris porttitor aliquet erat, nec interdum nisi efficitur sit amet.Donec finibus imperdiet risus consequat facilisis. Nulla facilisi. Maecenas in vulputate lorem. Quisque consequat sit amet eros eu sollicitudin.Ut vulputate ullamcorper venenatis.Nullam congue turpis odio, at mattis leo finibus a. Donec porttitor tellus at pellentesque maximus. Donec molestie condimentum hendrerit. Ut elit purus, ultrices volutpat posuere sed, consequat non risus. Donec massa nunc, venenatis in finibus id, convallis eget elit. Duis aliquam rhoncus lacus id aliquet. Nunc viverra quis mauris aliquet vehicula.Proin auctor suscipit condimentum. Donec a lectus vehicula, iaculis purus nec, tristique lacus.Aenean consequat velit lorem, in pulvinar sem vulputate sed. Praesent tincidunt vestibulum nisl. Vestibulum nunc tortor, semper nec urna quis, feugiat aliquam elit. Suspendisse pharetra nisl lobortis quam congue ultricies.Quisque mauris nisi, aliquet nec porttitor condimentum, sollicitudin nec arcu.";
            }
            catch (Exception)
            {
                return;
            }
        }

        protected void ibtnLeft_Click(object sender, ImageClickEventArgs e)
        {
            i--;
            CarregarNoticias();
        }

        protected void ibtnRight_Click(object sender, ImageClickEventArgs e)
        {
            i++;
            CarregarNoticias();
        }
    }
}