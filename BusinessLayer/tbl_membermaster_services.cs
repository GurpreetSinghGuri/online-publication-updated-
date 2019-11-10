using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessLayer;
using DataLayer;
namespace BusinessLayer
{
    public class tbl_membermaster_services
    {
        public static void registernew(String uname,String upass )
        {
            tbl_membermaster_provider.registernew(uname, upass);

        }
    }
}
