$url="url do site"

$users=get-spuser -web $url

$dominioAtual="dominioAutual"

$novoDominio="novodoinio"

foreach ($user in $users){ 

 Move-SPUser -Identity $user -NewAlias $user.loginName.replace($dominioAtual,novoDominio ) -IgnoreSID

 }
