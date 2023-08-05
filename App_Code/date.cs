using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for date
/// </summary>
public class date
{

    public static String convertDate(String dt)
    {
        String da = "";
        String d = dt.Substring(0, 2);
        String m = dt.Substring(3, 2);
        String y = dt.Substring(6, 4);

        da = m+"/"+d+"/" + y;
        return da;

    }
    public date()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}