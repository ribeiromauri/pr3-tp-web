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
    public partial class Pagina1 : System.Web.UI.Page
    {
        public Carro Carrito { get; set; }
        public List<Articulos> ListaArticulos { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ControladorArticulos controlador = new ControladorArticulos();
            ListaArticulos = controlador.listar();

            if (!IsPostBack)
            {
                repRepetidor.DataSource = ListaArticulos;
                repRepetidor.DataBind();
            }
        }

        protected void btnCarrito_Click(object sender, EventArgs e)
        {
            String[] arg = new String[4];
            arg = ((Button)sender).CommandArgument.Split(new char[] { ';' });
            ItemsCarro nuevoCarrito = new ItemsCarro(int.Parse(arg[0]), arg[1], Convert.ToDecimal(arg[2]), arg[3]);
            Carrito = (Carro)Session["Carrito"];

            if (Carrito == null)
                Carrito = new Carro();
            Carrito.agregarItemsCarroAlCarrito(nuevoCarrito);

            Session.Add("Carrito", Carrito);
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            List<Articulos> listaFiltrada = new List<Articulos>();
            if(Filtro.Text != "")
            {
                listaFiltrada = ListaArticulos.FindAll(x => x.Nombre.ToUpper().Contains(Filtro.Text.ToUpper()) || x.Marca.Descripcion.ToUpper().Contains(Filtro.Text.ToUpper()));
                if (listaFiltrada.Any())
                {
                    Session.Remove("ListadoDeArticulos");
                    Session.Add("ListadoDeArticulos", listaFiltrada);
                    repRepetidor.DataSource = listaFiltrada;
                    repRepetidor.DataBind();
                }
                else
                {
                    txtBusqueda.Text = "No hay artículos que coincidan con tu búsqueda.";
                    txtRecargar.Text = "Recargar página";
                    Session.Remove("ListadoDeArticulos");
                    repRepetidor.DataSource = listaFiltrada;
                    repRepetidor.DataBind();
                }
            }
            if(Filtro.Text == "")
            {
                ControladorArticulos controlador = new ControladorArticulos();
                ListaArticulos = controlador.listar();
                repRepetidor.DataSource = ListaArticulos;
                repRepetidor.DataBind();
            }
        }
    }
}