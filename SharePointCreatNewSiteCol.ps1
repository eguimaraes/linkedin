$template="Códgo do template"

$url="Url da site colection"

$ownerLogin="dominio\login"


New-SPSite $url -OwnerAlias $ownerLogin -Template $template
