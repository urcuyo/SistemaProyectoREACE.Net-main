using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaModelo
{
    public class MateriaPrima
    {
        public int IdMateriaPrima { get; set; }
        public string Codigo { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public int IdCategoria { get; set; }
        public Categoria oCategoria { get; set; }
        public int Cantidad { get; set; } 
        public bool Activo { get; set; }
        public DateTime FechaRegistro { get; set; } 
    }
}
