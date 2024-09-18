using CapaModelo;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class CD_MateriaPrima
    {
        public static CD_MateriaPrima _instancia = null;

        private CD_MateriaPrima()
        {

        }

        public static CD_MateriaPrima Instancia
        {
            get
            {
                if (_instancia == null)
                {
                    _instancia = new CD_MateriaPrima();
                }
                return _instancia;
            }
        }

        public List<MateriaPrima> ObtenerMateriaPrima()
        {
            List<MateriaPrima> rptListaMateriaPrima = new List<MateriaPrima>();
            using (SqlConnection oConexion = new SqlConnection(Conexion.CN))
            {
                SqlCommand cmd = new SqlCommand("usp_ObtenerMateriaPrima", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;

                try
                {
                    oConexion.Open();
                    SqlDataReader dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        rptListaMateriaPrima.Add(new MateriaPrima()
                        {
                            IdMateriaPrima = Convert.ToInt32(dr["IdMateriaPrima"].ToString()),
                            Codigo = dr["Codigo"].ToString(),
                            Nombre = dr["Nombre"].ToString(),
                            Descripcion = dr["Descripcion"].ToString(),
                            IdCategoria = Convert.ToInt32(dr["IdCategoria"].ToString()),
                            oCategoria = new Categoria() { Descripcion = dr["DescripcionCategoria"].ToString() },
                            Cantidad = Convert.ToInt32(dr["Cantidad"].ToString()),
                            Activo = Convert.ToBoolean(dr["Activo"].ToString()),
                            FechaRegistro = Convert.ToDateTime(dr["FechaRegistro"].ToString())
                        });
                    }
                    dr.Close();

                    return rptListaMateriaPrima;

                }
                catch (Exception ex)
                {
                    rptListaMateriaPrima = null;
                    return rptListaMateriaPrima;
                }
            }
        }

        public bool RegistrarMateriaPrima(MateriaPrima oMateriaPrima)
        {
            bool respuesta = true;
            using (SqlConnection oConexion = new SqlConnection(Conexion.CN))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("usp_RegistrarMateriaPrima", oConexion);
                    cmd.Parameters.AddWithValue("Nombre", oMateriaPrima.Nombre);
                    cmd.Parameters.AddWithValue("Descripcion", oMateriaPrima.Descripcion);
                    cmd.Parameters.AddWithValue("IdCategoria", oMateriaPrima.IdCategoria);
                    cmd.Parameters.Add("Resultado", SqlDbType.Bit).Direction = ParameterDirection.Output;
                    cmd.CommandType = CommandType.StoredProcedure;

                    oConexion.Open();

                    cmd.ExecuteNonQuery();

                    respuesta = Convert.ToBoolean(cmd.Parameters["Resultado"].Value);

                }
                catch (Exception ex)
                {
                    respuesta = false;
                }
            }
            return respuesta;
        }

        public bool ModificarMateriaPrima(MateriaPrima oMateriaPrima)
        {
            bool respuesta = true;
            using (SqlConnection oConexion = new SqlConnection(Conexion.CN))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("usp_ModificarMateriaPrima", oConexion);
                    cmd.Parameters.AddWithValue("IdMateriaPrima", oMateriaPrima.IdMateriaPrima);
                    cmd.Parameters.AddWithValue("Nombre", oMateriaPrima.Nombre);
                    cmd.Parameters.AddWithValue("Descripcion", oMateriaPrima.Descripcion);
                    cmd.Parameters.AddWithValue("IdCategoria", oMateriaPrima.IdCategoria);
                    cmd.Parameters.AddWithValue("Activo", oMateriaPrima.Activo);
                    cmd.Parameters.Add("Resultado", SqlDbType.Bit).Direction = ParameterDirection.Output;

                    cmd.CommandType = CommandType.StoredProcedure;

                    oConexion.Open();

                    cmd.ExecuteNonQuery();

                    respuesta = Convert.ToBoolean(cmd.Parameters["Resultado"].Value);

                }
                catch (Exception ex)
                {
                    respuesta = false;
                }

            }

            return respuesta;
        }

        public bool EliminarMateriaPrima(int IdMateriaPrima)
        {
            bool respuesta = true;
            using (SqlConnection oConexion = new SqlConnection(Conexion.CN))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("usp_EliminarMateriaPrima", oConexion);
                    cmd.Parameters.AddWithValue("IdMateriaPrima", IdMateriaPrima);
                    cmd.Parameters.Add("Resultado", SqlDbType.Bit).Direction = ParameterDirection.Output;
                    cmd.CommandType = CommandType.StoredProcedure;

                    oConexion.Open();

                    cmd.ExecuteNonQuery();

                    respuesta = Convert.ToBoolean(cmd.Parameters["Resultado"].Value);

                }
                catch (Exception ex)
                {
                    respuesta = false;
                }

            }

            return respuesta;
        }
    }
}