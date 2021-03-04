$appname=http://appnameUrl
$app=Get-SPWebApplication $appname
$app.Provision()
$solutions=get-spsolution
foreach ($sol in $solutions)
{install-spsolution $sol.name -webapplication $appname -GACDeployment -Force -Confirm:$FALSE}
