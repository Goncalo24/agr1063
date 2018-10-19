using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//sqlserver
using System.Data.SqlClient;
//configuração
using System.Configuration;
//datatable
using System.Data;

namespace agr_1063
{
    public class BaseDados
    {
        #region stringLigação/Construtor/Destrutor
        string strligacao;
        SqlConnection ligacaoBD;

        //construtor
        public BaseDados()
        {
            strligacao = ConfigurationManager.ConnectionStrings["DataBase"].ToString();
            ligacaoBD = new SqlConnection(strligacao);
            try
            {
                ligacaoBD.Open();
            }
            catch (Exception erro)
            {
                Console.Write(erro.Message);
            }
        }
        //destrutor
        ~BaseDados()
        {
            try
            {
                ligacaoBD.Close();
                ligacaoBD.Dispose();
            }
            catch (Exception erro)
            {
                Console.Write(erro.Message);
            }
        }
        #endregion

        #region Comandos/Consultas
        public DataTable DevolveConsulta(string sql)
        {
            SqlCommand comando = new SqlCommand(sql, ligacaoBD);
            DataTable registos = new DataTable();

            SqlDataReader dados = comando.ExecuteReader();
            registos.Load(dados);
            comando.Dispose();
            return registos;
        }

        public DataTable DevolveConsulta(string sql, List<SqlParameter> parametros)
        {
            SqlCommand comando = new SqlCommand(sql, ligacaoBD);
            comando.Parameters.AddRange(parametros.ToArray());
            DataTable registos = new DataTable();

            SqlDataReader dados = comando.ExecuteReader();
            registos.Load(dados);
            comando.Dispose();
            return registos;
        }

        public bool executaComando(string sql)
        {
            try
            {
                SqlCommand comando = new SqlCommand(sql, ligacaoBD);
                comando.ExecuteNonQuery();
                comando.Dispose();
            }
            catch (Exception erro)
            {
                Console.Write(erro.Message);
                return false;
            }
            return true;
        }

        public bool ExecutaComando(string sql, List<SqlParameter> parametros)
        {
            try
            {
                SqlCommand comando = new SqlCommand(sql, ligacaoBD);
                comando.Parameters.AddRange(parametros.ToArray());
                comando.ExecuteNonQuery();
                comando.Dispose();
            }
            catch (Exception erro)
            {
                Console.Write(erro.Message);
                return false;
            }
            return true;
        }
        #endregion

        #region Utilizadores
        public void AdicionaEscuteiro(string nome, string user, string pass, string email, int tel, int sec, int ativo)
        {
            string sql = "INSERT INTO Utilizadores(Nome, UserLog, Pass, Email, Telemovel, Seccao, Ativo) VALUES ";
            sql += "(@nome, @user, cast(HASHBYTES('SHA1',@pass) as varchar), @email, @tel, @sec, @ati);";
            //parâmetros
            List<SqlParameter> parametros = new List<SqlParameter>()
            {
                new SqlParameter() {ParameterName="@nome",SqlDbType=System.Data.SqlDbType.VarChar,Value= nome},
                new SqlParameter() {ParameterName="@user",SqlDbType=System.Data.SqlDbType.VarChar,Value= user},
                new SqlParameter() {ParameterName="@pass",SqlDbType=System.Data.SqlDbType.VarChar,Value= pass},
                new SqlParameter() {ParameterName="@email",SqlDbType=System.Data.SqlDbType.VarChar,Value= email},
                new SqlParameter() {ParameterName="@tel",SqlDbType=System.Data.SqlDbType.Int,Value= tel},
                new SqlParameter() {ParameterName="@sec",SqlDbType=System.Data.SqlDbType.Int,Value= sec},
                new SqlParameter() {ParameterName="@ati",SqlDbType=System.Data.SqlDbType.Int,Value= ativo}
            };
            ExecutaComando(sql, parametros);
        }

        public void AtualizarUtilizador(int Id, string nome, string user, string pass, string email, int tel, int sec, int tipo, bool passconf)
        {
            string sql = "UPDATE Utilizadores SET Nome= @nome, UserLog= @user, Pass= cast(HASHBYTES('SHA1',@pass) as varchar), ";
            sql += "Email= @email, Telemovel= @tel, Seccao= @sec, TipoUser= @tipo, PassConf= @passconf  WHERE IdUser = @Id;";

            //parametros
            List<SqlParameter> parametros = new List<SqlParameter>()
            {
                new SqlParameter() {ParameterName = "@Id", SqlDbType = System.Data.SqlDbType.Int, Value = Id},
                new SqlParameter() {ParameterName = "@nome", SqlDbType = System.Data.SqlDbType.VarChar, Value = nome},
                new SqlParameter() {ParameterName = "@user", SqlDbType = System.Data.SqlDbType.VarChar, Value = user},
                new SqlParameter() {ParameterName = "@pass", SqlDbType = System.Data.SqlDbType.VarChar, Value = pass},
                new SqlParameter() {ParameterName = "@email", SqlDbType = System.Data.SqlDbType.VarChar, Value = email},
                new SqlParameter() {ParameterName = "@tel", SqlDbType = System.Data.SqlDbType.Int, Value = tel},
                new SqlParameter() {ParameterName = "@sec", SqlDbType = System.Data.SqlDbType.Int, Value = sec},
                new SqlParameter() {ParameterName = "@tipo", SqlDbType = System.Data.SqlDbType.Int, Value = tipo},
                new SqlParameter() {ParameterName = "@passconf", SqlDbType = System.Data.SqlDbType.Bit, Value = passconf}
            };
            ExecutaComando(sql, parametros);
        }
        #endregion

        #region Secção
        public void AdicionaSeccao(string desc, int dirresp, string email, string pass)
        {
            string sql = "INSERT INTO Seccao(Descricao, DirResp, Email, Pass) VALUES ";
            sql += "(@desc, @dirresp, @email, cast(HASHBYTES('SHA1',@pass) as varchar));";
            //parâmetros
            List<SqlParameter> parametros = new List<SqlParameter>()
            {
                new SqlParameter() {ParameterName="@desc",SqlDbType=System.Data.SqlDbType.VarChar,Value= desc},
                new SqlParameter() {ParameterName="@dirresp",SqlDbType=System.Data.SqlDbType.Int,Value= dirresp},
                new SqlParameter() {ParameterName="@email",SqlDbType=System.Data.SqlDbType.VarChar,Value= email},
                new SqlParameter() {ParameterName="@pass",SqlDbType=System.Data.SqlDbType.VarChar,Value= pass}
            };
            ExecutaComando(sql, parametros);
        }

        public void AtualizarSeccao(int id, string desc, int dirresp, string email, string pass)
        {
            string sql = "UPDATE Seccao SET Descricao= @desc, DirResp= @dirresp, Email= @email, ";
            sql += "Pass= cast(HASHBYTES('SHA1',@pass) as varchar) WHERE IdSec = @Id;";

            //parametros
            List<SqlParameter> parametros = new List<SqlParameter>()
            {
                new SqlParameter() {ParameterName = "@Id", SqlDbType = System.Data.SqlDbType.Int, Value = id},
                new SqlParameter() {ParameterName = "@desc", SqlDbType = System.Data.SqlDbType.VarChar, Value = desc},
                new SqlParameter() {ParameterName = "@dirresp", SqlDbType = System.Data.SqlDbType.Int, Value = dirresp},
                new SqlParameter() {ParameterName = "@email", SqlDbType = System.Data.SqlDbType.VarChar, Value = email},
                new SqlParameter() {ParameterName = "@pass", SqlDbType = System.Data.SqlDbType.VarChar, Value = pass}
            };
            ExecutaComando(sql, parametros);
        }
        #endregion

        #region Avisos/noticias
        public int adicionarAviso(int sec, string titulo, string descricao, DateTime data, string nomefich)
        {
            string sql = "INSERT INTO Avisos(Sec,Titulo,Corpo,Data,NomeFicheiro) VALUES ";
            sql += "(@sec,@titulo,@descricao,@data,@nomefich);SELECT CAST(scope_identity() as int)";
            //parâmetros
            List<SqlParameter> parametros = new List<SqlParameter>()
            {
                new SqlParameter() {ParameterName="@sec",SqlDbType=System.Data.SqlDbType.Int,Value= sec},
                new SqlParameter() {ParameterName="@titulo",SqlDbType=System.Data.SqlDbType.VarChar,Value= titulo},
                new SqlParameter() {ParameterName="@descricao",SqlDbType=System.Data.SqlDbType.VarChar,Value= descricao},
                new SqlParameter() {ParameterName="@data",SqlDbType=System.Data.SqlDbType.Date,Value= data},
                new SqlParameter() {ParameterName="@nomefich",SqlDbType=System.Data.SqlDbType.VarChar,Value= nomefich}
            };
            //executaComando(sql, parametros);
            SqlCommand comando = new SqlCommand(sql, ligacaoBD);
            comando.Parameters.AddRange(parametros.ToArray());
            int id = (int)comando.ExecuteScalar();
            comando.Dispose();
            return id;
        }
        #endregion

        #region Login
        public DataTable login(string user, string pass)
        {
            string sql = "SELECT * FROM Utilizadores WHERE UserLog=@user OR Email=@user AND ";
            sql += " Pass=cast(HASHBYTES('SHA1',@pass) as varchar) AND Ativo = " + 1;
            List<SqlParameter> parametros = new List<SqlParameter>()
            {
                new SqlParameter() {ParameterName="@user",SqlDbType=SqlDbType.VarChar,Value= user},
                new SqlParameter() {ParameterName="@pass",SqlDbType=SqlDbType.VarChar,Value= pass}
            };
            DataTable utilizador = DevolveConsulta(sql, parametros);
            if (utilizador == null || utilizador.Rows.Count == 0)
            {
                return null;
            }
            return utilizador;
        }
        #endregion
    }
}