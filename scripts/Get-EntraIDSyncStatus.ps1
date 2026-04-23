# Get-EntraIDSyncStatus.ps1
# Checks Azure AD Connect sync status and last sync time

Connect-MgGraph -Scopes 'Organization.Read.All'

$org = Get-MgOrganization
$syncEnabled = $org.OnPremisesSyncEnabled
$lastSync    = $org.OnPremisesLastSyncDateTime

Write-Host "Hybrid Sync Enabled : $syncEnabled"
Write-Host "Last Sync Time      : $lastSync"
