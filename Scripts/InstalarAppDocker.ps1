
Import-Module "C:\Program Files (x86)\Microsoft Dynamics 365 Business Central\130\RoleTailored Client\NavModelTools.ps1" -Force

$Contenedor = "Contenedor"
$RutaApp = "C:\BC\App_1.0.0.0.app"

<# Instalar app Docker #>
Publish-NavContainerApp -appFile $RutaApp -containerName $Contenedor -install -skipVerification -sync

<# Acturalizar app Docker #>
UnPublish-NavContainerApp -appName $NombreApp -containerName $Contenedor -unInstall

Publish-NavContainerApp -appFile $RutaApp -containerName $Contenedor -install -skipVerification -sync

Start-NavContainerAppDataUpgrade -appName $NombreApp -containerName $Contenedor

