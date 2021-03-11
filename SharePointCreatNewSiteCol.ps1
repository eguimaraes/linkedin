$template="Códgo do template"

$url="Url da site colection"

$ownerLogin="dominio\login"

$lang="lancode"

New-SPSite $url -OwnerAlias $ownerLogin -Template $template -Language $lang
