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
    public class PlayerController
    {
        public Player FindByPKID(int id)
        {
            using (var context = new FSISContext())
            {
                return context.Players.Find(id);
            }
        }
        public List<Player> List()
        {
            using (var context = new FSISContext())
            {
                return context.Players.ToList();
            }
        }
        public List<Player> FindByID(int id)
        {
            using (var context = new FSISContext())
            {
                IEnumerable<Player> results =
                    context.Database.SqlQuery<Player>("Player_GetByTeam @ID"
                        , new SqlParameter("ID", id));
                return results.ToList();
            }
        }
        public List<Player> FindByPartialName(string partialname)
        {
            using (var context = new FSISContext())
            {
                IEnumerable<Player> results =
                    context.Database.SqlQuery<Player>("Products_GetByPartialProductName @PartialName",
                         new SqlParameter("PartialName", partialname));
                return results.ToList();
            }
        }
        public int Add(Player item)
        {
            using (var context = new FSISContext())
            {
                context.Players.Add(item);
                context.SaveChanges();
                return item.PlayerID;

            }
        }
        public int Update(Player item)
        {
            using (var context = new FSISContext())
            {
                context.Entry(item).State = System.Data.Entity.EntityState.Modified;
                return context.SaveChanges();
            }
        }
        /*public int Discontinue(int productid)
        {
            using (var context = new FSISContext())
            {
                var existing = context.Players.Find(productid);
                existing.Discontinued = true;
                context.Entry(existing).State = System.Data.Entity.EntityState.Modified;
                return context.SaveChanges();
            }
        }*/
        public int Delete(int productid)
        {
            using (var context = new FSISContext())
            {
                var existing = context.Players.Find(productid);
                if (existing == null)
                {
                    throw new Exception("Record has been removed from database");
                }
                context.Players.Remove(existing);
                return context.SaveChanges();
            }
        }
    }
}

