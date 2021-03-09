$url=read-host "Digite a url da site collection"
$w = Get-SPWeb $url | ForEach{ $_.URL }
Get-SPFeature -Web $w |%{ Enable-SPFeature -Identity $_ -URL $w}
