<#PSScriptInfo

.VERSION 1.0.0.1

.GUID ec13c1c8-d3af-4afd-af4f-675eabedf70c

.AUTHOR kvwu

.COMPANYNAME 

.COPYRIGHT 2025

.TAGS 

.LICENSEURI https://raw.githubusercontent.com/TransientError/CorrelationVector-powershell/refs/heads/main/LICENSE.txt

.PROJECTURI https://github.com/TransientError/CorrelationVector-powershell

.ICONURI 

.EXTERNALMODULEDEPENDENCIES 

.REQUIREDSCRIPTS 

.EXTERNALSCRIPTDEPENDENCIES 

.RELEASENOTES


.PRIVATEDATA


#>

<#

.DESCRIPTION 
generate correlation vector

#>


param([switch] $v2 = $false)

$guid = New-Guid
if (!$v2) {
  $base = [System.Convert]::ToBase64String($guid.ToByteArray(), 0, 12)
} else {
  $base = [System.Convert]::ToBase64String($guid.ToByteArray())
  $base = $base.SubString(0, 22)
}

echo $base".0"
