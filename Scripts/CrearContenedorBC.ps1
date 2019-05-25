#install-Module navcontainerhelper -force
#Get-ExecutionPolicy
#Set-ExecutionPolicy Unrestricted
import-Module navcontainerhelper

$ContainerName = 'Contenedor'

#Crear un contenedor para ultima version de business central localizacion española
New-NavContainer -containerName $ContainerName -imageName microsoft/bcsandbox:es -accept_eula -auth NavUserPassword -updateHosts -usebestcontaineros -alwaysPull

#Crear un contenedor cu3 business central localizacion española
New-NavContainer -containerName $ContainerName -imageName mcr.microsoft.com/businesscentral/onprem:cu3-es -accept_eula -auth NavUserPassword -updateHosts -usebestcontaineros 

#Crear un contenedor cu3 business central localizacion española con licencia
New-NavContainer -containerName $ContainerName -imageName mcr.microsoft.com/businesscentral/onprem:cu3-es -accept_eula -auth NavUserPassword -updateHosts -usebestcontaineros -licenseFile "C:\BC\Licence.flf" 

#Incluir testToolKit a la hora de crear el docker
New-NavContainer -containerName $ContainerName -imageName mcr.microsoft.com/businesscentral/onprem:cu3-es -accept_eula -auth NavUserPassword -updateHosts -usebestcontaineros -licenseFile "C:\BC\Licence.flf" -includeCSide