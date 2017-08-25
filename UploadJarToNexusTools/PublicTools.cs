using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace UploadJarToNexusTools
{
    public class PublicTools
    {
      public  static String getConfigValue( String key)
        {
            //直接获取key1的值
         return ConfigurationManager.AppSettings[key];
     
        }

    }
}
