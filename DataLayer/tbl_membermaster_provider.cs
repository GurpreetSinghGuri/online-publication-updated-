using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLayer
{
    public class tbl_membermaster_provider
    {
        public static void delete(int id)
        {
            using (publishEntities context = new publishEntities())
            {
                publish obj = context .publishes.First(x => x.Id == id);
                context.publishes.Remove(obj);
                context.SaveChanges();

            }
        }
        public static void EditUpdate(int id, String place, String date1, String publisher)
        {
            using (publishEntities context = new publishEntities())
            {

                publish obj = context.publishes.First(x => x.Id == id);
                obj.publication_place = place;
                obj.publication_date = date1;
                obj.publisher = publisher;
                context.SaveChanges();

            }

        }
        public static void registernew(String uname, String upass)
        {


            using (publishEntities context = new publishEntities())
            {

                register obj = new register();
                obj.username = uname;
                obj.password = upass;


                context.registers.Add(obj);

                context.SaveChanges();

            }
        }
        public static bool userlogin(String uname, String password)
        {
            using (publishEntities context = new publishEntities())
            {


                register obj = (register)context.registers.Where(x => x.username == uname).Where(x => x.password == password).FirstOrDefault();
                if (obj == null)
                {
                    return (false);
                }
                else
                {
                    return (true);
                }

            }

        }
        public static bool adminlogin(String uname, String password)
        {
            using (publishEntities context = new publishEntities())
            {


                admin obj = (admin)context.admins.Where(x => x.username == uname).Where(x => x.password == password).FirstOrDefault();
                if (obj == null)
                {
                    return (false);
                }
                else
                {
                    return (true);
                }

            }

        }

        public static List<publish> getallusers(String uname)
        {
            List<publish> lst = null;
            using (publishEntities db = new publishEntities())
            {

                lst = (from u in db.publishes select u).ToList();


            }
            return (lst);
        }
        public static List<publish> getallusers()
        {
            List<publish> lst = null;
            using (publishEntities db = new publishEntities())
            {

                lst = (from u in db.publishes select u).ToList();


            }
            return (lst);
        }
    }
}
