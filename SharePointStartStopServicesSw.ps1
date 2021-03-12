$services=get-service;
foreach($service in $services){


if ($service.DisplayName.Contains("SharePoint") -or ($service.name -eq ("MSSQLSERVER"))){

if ($service.Status -eq "Running"){


Stop-Service -Name $service.Name
}


else {Start-Service -Name $service.Name }
}

}
