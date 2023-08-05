using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for top
/// </summary>
public class top
{
    public static String conv_date(String dat)
    {
        String da = "";
        String d = dat.Substring(0, 2);
        String m = dat.Substring(3, 2);
        String y = dat.Substring(6, 4);
        da = m + "/" + d + "/" + y;
        return da;

    }
}