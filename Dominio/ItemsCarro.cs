using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class ItemsCarro
    {
        public int ID { get; set; }
        public string Nombre { get; set; }
        public string URLImagen { get; set; }
        public decimal Precio { get; set; }
        public int Cantidad { get; set; }
        public decimal Importe{ get; set; }

        public ItemsCarro(int idArticulo, String nombre, decimal precio, String UrlImagen)
        {
            ID = idArticulo;
            Cantidad = 1;
            Nombre = nombre;
            Precio = precio;
            Importe = Cantidad * Precio;
            URLImagen = UrlImagen;
            Cantidad = 1;
        }
        public void sumarCantidad()
        {
            Cantidad++;
            Importe = (Cantidad * Precio);
        }
        public void restarCantidad()
        {
            if (Cantidad != 0)
            {
                Cantidad--;
                Importe = Precio * Cantidad;
            }
        }
    }
}
