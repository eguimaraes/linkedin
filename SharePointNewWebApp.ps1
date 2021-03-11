$nome

$porta

$hh=

$appool

$appConta=



New-SPWebApplication -Name "Contoso Internet Site" -Port 80 -HostHeader sharepoint.contoso.com -URL "http://www.contoso.com" -ApplicationPool "ContosoAppPool" -ApplicationPoolAccount (Get-SPManagedAccount "DOMAIN\wa")

