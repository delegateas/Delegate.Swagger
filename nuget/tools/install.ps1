#install
param($installPath, $toolsPath, $package, $project)

#Debug

if($project -eq $null)
{
	$project = Get-Project
}


$project.Save()

$configItem = $project.ProjectItems.Item("Swagger").ProjectItems.Item("Css").ProjectItems.Item("SwaggerInject.css")
$buildAction = $configItem.Properties.Item("BuildAction")
$buildAction.Value = 3 ##Embedded resource

$configItem = $project.ProjectItems.Item("Swagger").ProjectItems.Item("Js").ProjectItems.Item("SwaggerInject.js")
$buildAction = $configItem.Properties.Item("BuildAction")
$buildAction.Value = 3 ##Embedded resource

$projFile = $project.FullName
$projectMSBuild = [Microsoft.Build.Construction.ProjectRootElement]::Open($projFile)
$propertyGroup = $projectMSBuild.AddPropertyGroup()
$propertyGroup.AddProperty("DocumentationFile", "App_Data\DG.Swagger.API.XML")

$project.Save()