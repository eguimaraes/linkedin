$appname=http://appnameUrl
$app=Get-SPWebApplication $appname
$app.Provision()
$solutions=get-spsolution
foreach ($sol in $solution){install-spsolution $sol.name -webapplication $appname}
