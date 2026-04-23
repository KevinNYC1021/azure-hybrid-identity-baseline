# Set-ConditionalAccessBaseline.ps1
# Connects to Microsoft Graph and reports on Conditional Access policy status
# Run this to audit your CA policy baseline

Connect-MgGraph -Scopes 'Policy.Read.All'

$policies = Get-MgIdentityConditionalAccessPolicy

foreach ($policy in $policies) {
    [PSCustomObject]@{
        DisplayName = $policy.DisplayName
        State       = $policy.State
        CreatedDate = $policy.CreatedDateTime
    }
} | Format-Table -AutoSize
