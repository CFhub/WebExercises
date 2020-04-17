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
    public class TeamController
    {
        public Team FindByID(int teamid)
        {
            using (var context = new FSISContext())
            {
                return context.Teams.Find(teamid);
            }
        }
        public List<Team> List()
        {
            using (var context = new FSISContext())
            {
                return context.Teams.ToList();
            }
        }

    }
}




