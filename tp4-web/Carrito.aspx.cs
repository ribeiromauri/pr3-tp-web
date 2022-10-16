using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Controlador;
using Dominio;

namespace tp4_web
{
    public partial class Carrito : System.Web.UI.Page
    {
        public List<Articulos> ListaArticulos { get; set; }
        public Carro aux { get; set; }
        public string TituloVacio = "Tu carrito está vacío";
        public string TituloConContenido = "Añadiste al carrito: ";
        //public List<Carro> ListaCarrito { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ControladorArticulos controlador = new ControladorArticulos();
            ListaArticulos = controlador.listar();
            //ListaCarro();
            aux = (Carro)Session["Carrito"];
            Titulo.Text = TituloVacio;
            if (aux != null)
            {
                Titulo.Text = TituloConContenido;
                if (!IsPostBack)
                {
                    repRepetidor.DataSource = aux.ListaCarrito;
                    repRepetidor.DataBind();
                }
            }
        }

        protected void Agregar_Click(object sender, ImageClickEventArgs e)
        {
            int ID = int.Parse(((ImageButton)sender).CommandArgument);
            aux.agregarCantidadItem(ID);
            aux.calcularImporte();
            Session.Add("Carrito", aux);
            repRepetidor.DataSource = aux.ListaCarrito;
            repRepetidor.DataBind();
        }

        protected void Restar_Click(object sender, ImageClickEventArgs e)
        {
            int ID = int.Parse(((ImageButton)sender).CommandArgument);
            aux.restarItemsCarroAlCarrito(ID);
            aux.calcularImporte();
            Session.Add("Carrito", aux);
            repRepetidor.DataSource = aux.ListaCarrito;
            repRepetidor.DataBind();
        }

        protected void Eliminar_Click(object sender, ImageClickEventArgs e)
        {
            int ID = int.Parse(((ImageButton)sender).CommandArgument);
            aux.eliminarItemDelCarrito(ID);
            aux.calcularImporte();
            Session.Add("Carrito", aux);
            repRepetidor.DataSource = aux.ListaCarrito;
            repRepetidor.DataBind();
        }
    }
}