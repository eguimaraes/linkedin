Add-PSSnapin Microsoft.SharePoint.PowerShell -ErrorAction SilentlyContinue

$nome="nome"

$porta="80"

$hh="hostheader.com.brbr"

$appool="nomedopool"

$appConta="domain\name"

$url="http://url/"

$db="wss_Nomedb"



New-SPWebApplication -Name $nome -Port 80 -HostHeader $hh -URL $url -ApplicationPool $appool -ApplicationPoolAccount (Get-SPManagedAccount $appConta) -DatabaseName $db

