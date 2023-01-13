using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace SocietyManagementSystem.Models
{
    public class Functions
    {
        private SqlConnection connection;
        private SqlCommand command;
        private DataTable dt;
        private SqlDataAdapter sda;
        private string connString;

        public Functions() 
        {
            connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Amit jha\Documents\SocietyManagement.mdf"";Integrated Security=True;Connect Timeout=30";
            connection = new SqlConnection(connString);
            command = new SqlCommand();
            command.Connection = connection;
        }
        public DataTable getData(string Query)
        {
            dt = new DataTable();
            sda = new SqlDataAdapter(Query, connString);
            sda.Fill(dt);
            return dt;
        }
        public int setData(string Qeuery)
        {
            int Cnt = 0;
            if (connection.State == ConnectionState.Closed)
            {
                connection.Open();
            }
            command.CommandText = Qeuery;
            Cnt = command.ExecuteNonQuery();
            connection.Close();
            return Cnt;
        }
    }
}

