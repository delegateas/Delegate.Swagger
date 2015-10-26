#Delegate Swagger

##System.Web Hosted Application
To start using the Delegate Swagger UI in your web api project add the following line to

Global.asax Application_Start:
```
GlobalConfiguration.Configure(SwaggerConfig.Register);
```

##OWIN Hosted
To start using Delegate Swagger UI in your WebAPI project add the following lines to 

Startup.cs Configuration 
```
var httpConfiguration = new HttpConfiguration();
SwaggerConfig.Register(httpConfiguration);
```

##Update version and API Name
In SwaggerConfig.cs you should update the following line:
```
c.SingleApiVersion("VersionHere", "Title here"); 
```
With your version number and title of the API. 

##Include XML Docs
When you install the nuget package it configures your project to generate XML documentation and places it in App_Data\DG.Swagger.API.XML if you don't like that path, or you don't have App_Data include in the project you should do that for the documentation to work. 