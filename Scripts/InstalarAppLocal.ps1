Import-Module "C:\Program Files (x86)\Microsoft Dynamics 365 Business Central\130\RoleTailored Client\NavModelTools.ps1" -Force

$NombreApp = "App"
$Instancia = "Instancia"
$RutaAppInstalar = "C:\BC\App_1.0.0.0.app"
$VersionInstalar = "1.0.0.0"
$RutaAppActualizar = "C:\BC\App_1.0.1.0.app"
$VersionActualizar = "1.0.1.0"

<# Instalar app local #>
Publish-NAVApp -ServerInstance $Instancia -Path $RutaAppInstalar -SkipVerification

Sync-NavApp -ServerInstance $Instancia -Name $NombreApp -Version $VersionInstalar

Install-NAVApp -ServerInstance $Instancia -Name $NombreApp -Version $VersionInstalar

<# Acturalizar app local #>
Uninstall-NAVApp -Name App -ServerInstance $Instancia
Unpublish-NAVApp -Name App -ServerInstance $Instancia

Publish-NAVApp -ServerInstance $Instancia -Path $RutaAppActualizar -SkipVerification

Sync-NavApp -ServerInstance $Instancia -Name $NombreApp -Version $VersionActualizar

Start-NAVAppDataUpgrade -ServerInstance $Instancia -Name $NombreApp -Version $VersionActualizar