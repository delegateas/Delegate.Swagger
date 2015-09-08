using Swashbuckle.Application;
using System;
using System.Web.Http;
using $rootnamespace$.Swagger;

namespace $rootnamespace$
{
    public static class SwaggerConfig
    {
        public static void Register(HttpConfiguration config)
        {
            //Enable swashbuckle 
            config.EnableSwagger(c =>
            {
                c.SingleApiVersion("VersionHere", "Title here");
                c.IncludeXmlComments(GetXmlCommentsPath());
                c.DescribeAllEnumsAsStrings();
                c.OperationFilter<SwaggerOperationFilter>();    // Only used for prepopulating fields
            }).EnableSwaggerUi(c =>
            {
                var assembly = System.Reflection.Assembly.GetAssembly(typeof(SwaggerConfig));
                c.InjectStylesheet(assembly, assembly.GetName().Name + ".Swagger.Css.SwaggerInject.css");
                c.InjectJavaScript(assembly, assembly.GetName().Name + ".Swagger.Js.SwaggerInject.js");
            }
                );
        }
        private static string GetXmlCommentsPath()
        {
            // Path to output xml file here. E.g. 
            // return String.Format(@"{0}App_Data\DG.Swagger.API.xml", AppDomain.CurrentDomain.BaseDirectory);
            return String.Format(@"{0}App_Data\DG.Swagger.API.xml", AppDomain.CurrentDomain.BaseDirectory);
        }
    }

}
