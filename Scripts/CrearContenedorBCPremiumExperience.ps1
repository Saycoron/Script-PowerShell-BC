#install-Module navcontainerhelper -force
#Get-ExecutionPolicy
#Set-ExecutionPolicy Unrestricted
import-Module navcontainerhelper

$ContainerName = 'Premium'
$imageName = 'mcr.microsoft.com/businesscentral/sandbox:14.0.29537.31259-es'

$licenseFile = 'C:\BC\Licence.flf'

$UserName = 'Antonio'
$Password = ConvertTo-SecureString "Antonio" -AsPlainText -Force
$Credential = New-Object System.Management.Automation.PSCredential ($UserName, $Password)

New-NavContainer -accept_eula `
                 -containername $containername `
                 -auth NavUserPassword `
                 -Credential $credential `
                 -includeCSide `
                 -doNotExportObjectsToText `
                 -updateHosts `
                 -assignPremiumPlan `
                 -imageName $imageName `
                 -licenseFile $licenseFile 
                 #-alwaysPull

Setup-NavContainerTestUsers -containerName $containername -tenant default -credential $credential -password $Password 