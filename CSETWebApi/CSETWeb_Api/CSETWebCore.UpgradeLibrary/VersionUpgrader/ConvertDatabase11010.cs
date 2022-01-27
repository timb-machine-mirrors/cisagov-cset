using System;
using Microsoft.Data.SqlClient;
using System.IO;
namespace UpgradeLibrary.Upgrade
{
    internal class ConvertDatabase11010: ConvertSqlDatabase
    {
        public ConvertDatabase11010(string path) : base(path)
        {
            myVersion = new Version("11.0.1.0");
        }
        /// <summary>
        /// Runs the database update script
        /// </summary>
        /// <param name="conn"></param>
        public override void Execute(SqlConnection conn)
        {
            try
            {
                // TODO: Add finalized upgrade scripts
                RunFile(Path.Combine(this.applicationPath, @"VersionUpgrader\SQL\1100_to_1101.sql"), conn);
                this.UpgradeToVersionLocalDB(conn, myVersion);
            }
            catch (Exception e)
            {
                throw new DatabaseUpgradeException("Error in upgrading assessment version 11.0.0.0 to 11.0.1.0: " + e.Message);
            }
        }
    }
}