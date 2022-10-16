using Controlador;
using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tp4_web
{
    public partial class PaginaDetalle : System.Web.UI.Page
    {
        public List<Articulos> ListaArticulos { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            Articulos temporal;

            ControladorArticulos controlador = new ControladorArticulos();
            ListaArticulos = controlador.listar();

            if (Request.QueryString["id"] != null)
            {
                int id = int.Parse(Request.QueryString["id"].ToString());
                temporal = ListaArticulos.Find(x => x.ID == id);
                txtNombre.Text = temporal.Nombre;
                txtDescripcion.Text = temporal.Descripcion;
                txtPrecio.Text = temporal.Precio.ToString();
                txtNombre.ReadOnly = true;
                txtDescripcion.ReadOnly = true;
                txtPrecio.ReadOnly = true;
            }
        }
    }
}