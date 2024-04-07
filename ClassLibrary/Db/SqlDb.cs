using Microsoft.Extensions.Configuration;

namespace ClassLibrary.Db
{
    public class SqlDb
    {
        private readonly IConfiguration _config;

        public SqlDb(IConfiguration config)
        {
            _config = config;
        }
    }
}
