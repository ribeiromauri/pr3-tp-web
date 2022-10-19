using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Controlador;

namespace tp4_web
{
    public partial class MiMaster : System.Web.UI.MasterPage
    {
        public List<Articulos> ListaFiltrada { get; set; }
        public Carro carritoGlobal { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Carrito"] == null)
            {
                carritoGlobal = new Carro();
            }
            else
            {
                carritoGlobal = (Carro)Session["Carrito"];
            }
        }
    }
}