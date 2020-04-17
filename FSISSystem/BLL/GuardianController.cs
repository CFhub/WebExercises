using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using FSISSystem.DAL;
using FSISSystem.ENTITIES;

namespace FSISSystem.BLL
{
    public class GuardianController
    {
        public List<Guardian> List()
        {
            using (var context = new FSISContext())
            {
                return context.Guardians.ToList();
            }
        }
    }
}
