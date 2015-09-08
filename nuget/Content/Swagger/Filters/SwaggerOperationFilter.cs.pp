using Swashbuckle.Swagger;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http.Description;

namespace $rootnamespace$.Swagger
{
    public class SwaggerOperationFilter : IOperationFilter
    {
        public void Apply(Operation operation, SchemaRegistry schemaRegistry, ApiDescription apiDescription)
        {
            if (operation.parameters != null)
            {
                for (int i = 0; i < operation.parameters.Count; i++)
                {
                    // pre populate fields on in DOM.

                    //if (operation.parameters[i].name == "<Element Name>")
                    //{
                    //    operation.parameters[i].@default = "<Default value>";
                    //    operation.parameters[i].description = "<Description>";
                    //}
                    
                }
            }
        }
    }
}
